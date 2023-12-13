module StringMap = Map.Make(String)
open Ast
(* 
  NOTE!!!!!!!!
  - We reverse the order of the maps in chungus when we build 
    -> IT IS NOT THE SAME AS IN THE PHOTO!!!!!!  
  - the second tuple of chungus is (var_map, func_map) !!!


*)
(* Make chungus str map(assuming encap is checked):
   let build_chungus s c <- c is class_decl, s is chungus
    1. make tuple (parent name, permitted classes list)
    2. make func str map and var str map 
    3. let add_encap e <- encap so we can fold_l 
    4. make tuple of ((parent, permitted), (func str map, var str map)) 
    5. add tuple to s *)
let find_class chungus cname = 
  let class_not_defined = "class " ^ cname ^ " not defined" in
  (try StringMap.find cname chungus with 
  Not_found -> raise (Failure class_not_defined))

let find_parent_name chungus cname = 
  let cdecl = find_class chungus cname
  in fst (fst cdecl)

let find_func chungus cname fname =
  let func_not_found = "function " ^ fname ^ " not defined " ^ "in class " ^ cname in 
  let c = find_class chungus cname in 
  let funcs = snd (snd c) in
  (try StringMap.find fname funcs with Not_found -> raise (Failure func_not_found))

let get_func_encap chungus cname fname = 
  let ((_, encap), _) = find_func chungus cname fname in encap

let is_meth chungus cname fname = 
  (try let _ = find_func chungus cname fname 
  in true
with _ -> false)
  
let is_var chungus cname vname =
  (try let (_, (vars, _)) = find_class chungus cname 
    in 
      let _ = StringMap.find vname vars 
      in true
      with _ -> false)
  
let get_func_origin chungus cname fname = 
    let ((origin, _), _) = find_func chungus cname fname in origin

  
let find_var chungus cname vname = 
  let var_not_found = "variable " ^ vname ^ " not defined " ^ "in class " ^ cname  in 
  let (_, (vars, _)) = find_class chungus cname in 
  (try StringMap.find vname vars with Not_found -> raise (Failure var_not_found))
      
(* move inside chungus to have access to class name? *)
let compare_fdecls fdecl1 fdecl2 =
  let pname = fdecl1.fname and cname = fdecl2.fname 
  in
    if (fdecl1.univ <> fdecl2.univ) 
      then raise (Failure ("Function " ^ cname ^ "must be univ"))

    else if (fdecl1.typ <> fdecl2.typ) 
      then raise (Failure ("Function " ^ cname ^ "must return " ^ string_of_typ fdecl1.typ))
    else let all_formals = (try List.combine fdecl1.formals fdecl2.formals 
      with _ -> raise (Failure ("Number of arguments in " ^ pname ^ " and " ^ cname ^ " do not match")))
    in List.fold_left (fun _ ((typ1, _), (typ2, _)) -> if (typ1 <> typ2) then raise (Failure ("formal types don't match")) else true) true all_formals 

  let rec is_ancestor chungus child ancestor = 
    if (child <> ancestor) then 
      (if (child = "Object") then false 
      else 
        let parent = find_parent_name chungus child in 
        is_ancestor chungus parent ancestor)
    else true
      
(* let big_chungus classes = *) (* needs this to return the structure*)
  let build_chungus symbols c_decl =
    let parent_permit = (c_decl.parent_name, c_decl.permitted)
    in let _ = (if (c_decl.class_name <> "Object") then fst (fst (find_class symbols c_decl.parent_name)) else "object!")
    in 
      let add_encap (var_m, fun_m) e = 
        let encap = fst e 
        in 
          let add_member (var_map, fun_map) m = 
            (match m with
              MemberVar (typ, name) -> 
                let var_already_defined_err = "variable " ^ name ^ " has multiple definitions"
                in 
                  (try let _ = StringMap.find name var_map  
                    in raise (Failure (var_already_defined_err))
                  with Not_found -> ((StringMap.add name (encap, (typ, name)) var_map), fun_map))
              | MemberFun f -> 
                let func_already_defined_err = "function " ^ f.fname ^ " has multiple definitions"
                in
                  (try let _ = StringMap.find f.fname fun_map
                    in raise (Failure (func_already_defined_err))
                  with Not_found -> 
                    (var_map, (StringMap.add f.fname ((c_decl.class_name, encap), f) fun_map))))
          in 
            List.fold_left add_member (var_m, fun_m) (snd e)         
      in 
        let (var_map, fun_map) = List.fold_left add_encap (StringMap.empty, StringMap.empty) c_decl.mems
    
        in let parent_class_funcs = if (c_decl.class_name = "Object") then StringMap.empty else snd (snd (find_class symbols c_decl.parent_name))
          in let parent_func_list = StringMap.bindings parent_class_funcs
          
          in let add_parent_funcs map (fname, ((origin, encap), f_decl)) =  
              (try 
                let ((_, child_encap), child_func) = StringMap.find fname map 
                in let _ = if child_encap <> encap 
                  then raise (Failure "Encap types do not match")
                else compare_fdecls child_func f_decl 
                in map
                   
              with Not_found -> StringMap.add fname ((origin, encap), f_decl) map)
            
          in let full_fmap = List.fold_left add_parent_funcs fun_map parent_func_list
    
  in  let symbol_value = (parent_permit, (var_map, full_fmap))
          in 
          StringMap.add c_decl.class_name symbol_value symbols
  (* in List.fold_left build_chungus StringMap.empty classes (* returns the structure *) *)

(* call this whenever a function is not "self", since that is always allowed within a class *)
  (* caller class is the class that the function call shows up in *)
  (* target class is the class that the function can be found in ie. Cat.meow() || Cat c = new Cat(); c.meow()*)

(* OOOGA BOOOGA ???*)
let rec is_permitted chungus caller_name target_name func_name =
  let target_class = StringMap.find target_name chungus in 
  let (funcs, _) = fst (snd target_class)
  in
    (try let (encap, _) = StringMap.find func_name funcs
    in
      (match encap with 
        "public" -> true 
      | "private" -> false
      | _ -> (* "permit" *)
          (let target_permits = snd (fst target_class) 
          in 
            (try let _ = List.find caller_name target_permits in true with 
             Not_found -> false)))
    with Not_found -> is_permitted chungus caller_name (find_parent_name chungus target_name) func_name)
  
(* 
get_func
get_var

var_permitted
check-inheritance for both vars and funcs

wrapper function that checks members in general (calls on the above)

*)
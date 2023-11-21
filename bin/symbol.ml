module StringMap = Map.Make(String)
open Ast

(* Make chungus str map(assuming encap is checked):
   let build_chungus s c <- c is class_decl, s is chungus
    1. make tuple (parent name, permitted classes list)
    2. make func str map and var str map 
    3. let add_encap e <- encap so we can fold_l 
    4. make tuple of ((parent, permitted), (func str map, var str map)) 
    5. add tuple to s *)

(* let big_chungus classes = *) (* needs this to return the structure*)
  let build_chungus symbols c_decl =
    let parent_permit = (c_decl.parent_name, c_decl.permitted)
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
                  with Not_found -> (var_map, (StringMap.add f.fname (encap, f) fun_map))))
          in 
            List.fold_left add_member (var_m, fun_m) (snd e)         
      in 
        let (var_map, fun_map) = List.fold_left add_encap (StringMap.empty, StringMap.empty) c_decl.mems
        in
          let symbol_value = (parent_permit, (var_map, fun_map))
          in 
          StringMap.add c_decl.class_name symbol_value symbols
  (* in List.fold_left build_chungus StringMap.empty classes *) (* returns the structure *)

let find_parent_name chungus cname = 
  let cdecl = StringMap.find cname chungus 
  in fst (fst cdecl)


(* call this whenever a function is not "self", since that is always allowed within a class *)
  (* caller class is the class that the function call shows up in *)
  (* target class is the class that the function can be found in ie. Cat.meow() || Cat c = new Cat(); c.meow()*)
let is_permitted chungus caller_class target_class func_name =
  let target = StringMap.find target_class chungus in 
  let (funcs, _) = fst (snd target)
  in
    (try let (encap, _) = StringMap.find func_name funcs
    in
      (match encap with 
        "public" -> true 
      | "private" -> false
      | _ -> (* "permit" *)
          (let target_permits = snd (fst target) 
          in 
            (try let _ = List.find caller_class target_permits in true with 
             Not_found -> false)))

    with Not_found -> is_permitt (* MAYBE RECURSIVE CALL TO IS_PERMITTED OF PARENT ???*))
                      


    





  (* let (parent, perms) = fst cdecl and
  (funcs, vars) = snd cdecl  *)
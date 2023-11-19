module StringMap = Map.Make(String)
open Ast
open Sast

(* Make chungus str map(assuming encap is checked):
   let build_chungus s c <- c is class_decl, s is chungus
    1. make tuple (parent name, permitted classes list)
    2. make func str map and var str map 
    3. let add_encap e <- encap so we can fold_l 
    4. make tuple of ((parent, permitted), (func str map, var str map)) 
    5. add tuple to s *)

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
      StringMap.add c_decl.class_name symbols
                   
  (* in let chungus = List.fold_left build_chungus StringMap.empty classes *)
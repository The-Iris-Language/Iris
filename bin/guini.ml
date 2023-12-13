module StringMap = Map.Make(String)

let get_class chunguini cname = 
  let class_not_defined = "class " ^ cname ^ " not defined" 
  in 
    (try StringMap.find cname chunguini with 
    Not_found -> raise (Failure class_not_defined))

let get_class_index chunguini cname =
    let ((index, _), _) = get_class chunguini cname
    in index
  

let get_var_index chunguini cname vname =
  let (_, (vmap, _)) = get_class chunguini cname
    in (try StringMap.find vname vmap with
    Not_found -> raise (Failure ("class " ^ cname ^ " does not contain variable " ^ vname)))

let get_vtable_type chunguini cname = 
  let ((_, vtable_typ), _) = get_class chunguini cname
    in vtable_typ
      
  
let get_fun_index chunguini cname fname =
  let (_, (_, fmap)) = get_class chunguini cname 
  in fst (try StringMap.find fname fmap with 
  Not_found -> raise (Failure ("class " ^ cname ^ " does not contain function " ^ fname) ))

let get_fun_decl chunguini cname fname =
  let (_, (_, fmap)) = get_class chunguini cname 
  in snd (try StringMap.find fname fmap with 
  Not_found -> raise (Failure ("class " ^ cname ^ " does not contain function " ^ fname) ))


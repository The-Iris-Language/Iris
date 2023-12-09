module StringMap = Map.Make(String)

let get_class chunguini cname = 
  let class_not_defined = "class " ^ cname ^ " not defined" 
  in 
    (try StringMap.find cname chunguini with 
    Not_found -> raise (Failure class_not_defined))

let class_index chunguini cname =
    let ((index, _), _) = get_class chunguini cname
    in index

let var_index chunguini cname vname =
  let (_, (vmap, _)) = get_class chunguini cname
    in (try StringMap.find vname vmap with
    Not_found -> raise (Failure ("class " ^ cname ^ " does not contain variable " ^ vname)))
      
  
let fun_index chunguini cname fname =
  let (_, (_, fmap)) = get_class chunguini cname 
  in (try StringMap.find fname fmap with 
  Not_found -> raise (Failure ("class " ^ cname ^ " does not contain function " ^ fname) ))


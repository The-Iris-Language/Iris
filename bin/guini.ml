(* This module contains helper functions to access fields in chunguini, 
used to keep track of information necessary to generate accurate LLVM code *)
(* Ayda Aricanli, Trevor Sullivan, Valerie Zhang, Josh Kim, Tim Valk *)

module StringMap = Map.Make(String)
open Sast

let get_class chunguini cname = 
  let class_not_defined = "class " ^ cname ^ " not defined" 
  in 
    (try StringMap.find cname chunguini with 
    Not_found -> raise (Failure class_not_defined))

let get_vtable_lltype chunguini cname =
    let ((_, (vtable_lltyp, _)), _) = get_class chunguini cname
    in vtable_lltyp


let get_class_decl chunguini cname = 
  let ((decl, (_, _)), _) = get_class chunguini cname
in decl

let get_permit_list chunguini cname = 
  let ((decl, (_, _)), _) = get_class chunguini cname
in decl.spermitted

let get_var_index chunguini cname vname =
  let (_, (vmap, _)) = get_class chunguini cname
    in fst (try StringMap.find vname vmap with
    Not_found -> raise (Failure ("class " ^ cname ^ " does not contain variable " ^ vname)))

let get_mem_var chunguini cname vname =
  let (_, (vmap, _)) = get_class chunguini cname
    in snd (try StringMap.find vname vmap with
    Not_found -> raise (Failure ("class " ^ cname ^ " does not contain variable " ^ vname)))

let get_vtable_ll chunguini cname = 
  let ((_, (_, vtable_ll)), _) = get_class chunguini cname
    in vtable_ll
  
let get_fun_index chunguini cname fname =
  let (_, (_, fmap)) = get_class chunguini cname 
  in fst (try StringMap.find fname fmap with 
  Not_found -> raise (Failure ("class " ^ cname ^ " does not contain function " ^ fname) ))

let get_fun_decl chunguini cname fname =
  let (_, (_, fmap)) = get_class chunguini cname 
  in snd (try StringMap.find fname fmap with 
  Not_found -> raise (Failure ("class " ^ cname ^ " does not contain function " ^ fname) ))


(* Code generation: translate takes a semantically checked AST and
produces LLVM IR

LLVM tutorial: Make sure to read the OCaml version of the tutorial

http://llvm.org/docs/tutorial/index.html

Detailed documentation on the OCaml LLVM library:

http://llvm.moe/
http://llvm.moe/ocaml/

*)

(* We'll refer to Llvm and Ast constructs with module names *)
module L = Llvm
module A = Ast
module S = Sast
open Sast 
(* open Ast *)

module StringMap = Map.Make(String)
module IntMap = Map.Make(Int)


(* accessing variable in a struct type: use build_struct_gep *)

(* TODO for hello world deliverable:
  1. types
  2. func_decls
  3. build some expr(func call, str literal)
  4. build some stmt(basically just expr)
  5. build class type for main(see helloworld.ll for the C++ program with class D)
*)


let translate (classes : sclass_decl list) = 
  let context    = L.global_context () in
  (* Add types to the context so we can use them in our LLVM code *)
  let i32_t    = L.i32_type    context
  and i8_t     = L.i8_type     context
  and i1_t     = L.i1_type     context
  and float_t  = L.double_type context
  and void_t   = L.void_type   context 
  in
  
  let string_t = L.pointer_type i8_t
  (* Create an LLVM module -- this is a "container" into which we'll 
     generate actual code *)
  and the_module = L.create_module context "Iris" in

  
  let ltype_of_typ tmap = function
      A.Int               -> i32_t
    | A.Bool              -> i1_t
    | A.Float             -> float_t
    | A.Void              -> void_t
    | A.String            -> string_t
    | A.Char              -> i8_t
    | A.Object (ctyp)     -> 
      let type_not_found_err = "Class type " ^ ctyp ^ " is not defined."
      in
        (try 
          StringMap.find ctyp tmap
        with
        | Not_found -> raise (Failure (type_not_found_err)))
      in 
  let get_typ_name = function 
      A.Object (ctyp) -> ctyp 
      | _ -> raise (Failure "stoopid")
    
  in 
    let populate_type_map context (tmap, chunguini) sc_decl =
      let c_name   = sc_decl.sclass_name
      (* build vritual table *)
      
      and all_vars = (sc_decl.svars @ sc_decl.spermittedvars)
      and perm_len = List.length sc_decl.spermitted
        in 
          let perm_arr = L.array_type string_t perm_len
      in let (typs, vnames) = (List.split all_vars) 
      (* i32_t to hold position in array of vtables *)
    in let all_typs = i32_t :: (perm_arr :: (List.map (ltype_of_typ tmap) typs))
        and  (new_var_index_map, _) = List.fold_left (fun (acc, count) var_name -> ((StringMap.add var_name count acc), count + 1) ) (StringMap.empty, 0) vnames
        in
          let arr_vars = Array.of_list all_typs
          in 
          (* let new_struct = L.struct_type context arr_vars  *)
            let new_struct = (L.named_struct_type context c_name)
            in 
              let _ = L.struct_set_body new_struct arr_vars false
              in (StringMap.add c_name new_struct tmap, StringMap.add c_name (new_var_index_map, StringMap.empty) chunguini)

        
      in 
        let (type_map, chunguini) = List.fold_left (populate_type_map context) (StringMap.empty, StringMap.empty) classes
      
          in let ltype_map = ltype_of_typ type_map 
          
  in
  (* making vtable types *)
  let make_vtable_typ context (vtmap, counter) sc_decl = 
    let all_funcs = (sc_decl.smeths @ sc_decl.spermittedmeths)
    in 
      (* list of function return/formal types (styp) *)
      let all_ftypes  = List.map (fun sfunc -> sfunc.styp) all_funcs
      and all_formals = List.map (fun sfunc -> fst (List.split sfunc.sformals)) all_funcs
      in 
        (* list of function return/formal lltypes *)
        let ret_fltyps    = List.map ltype_map all_ftypes
        and formal_fltyps = (List.map (fun typs -> Array.of_list (List.map ltype_map typs)) all_formals )
        in 
          let all_args = List.combine ret_fltyps formal_fltyps
          in
            let func_ltypes = List.map (fun (ret, forms) -> (L.pointer_type (L.function_type ret forms))) all_args
            in 
              let v_table_struct = L.struct_type context (Array.of_list func_ltypes)
              in (IntMap.add counter v_table_struct vtmap, counter + 1)
  
  in let (vt_map, array_length) = List.fold_left (make_vtable_typ context) (IntMap.empty, 0) classes




  
  (* Int -> "int"
  | Bool -> "bool"
  | Float -> "float"
  | Void -> "void"
  | Char -> "char"
  | String -> "string"
  | Object(o) -> o *)
   
  (* let main_class = find_class "Main" classes in  *)

(* HALLO *)
  in let print_t : L.lltype = 
    L.var_arg_function_type i32_t [| L.pointer_type i8_t |]
  in let print_func : L.llvalue = 
    L.declare_function "printf" print_t the_module in
    
  let main_class = (List.nth classes 0) in
  (* let encaps = (List.nth main_class.smems 0) in *)
  (* let main_mem = (List.nth main_class.smeths 0) in *)
  (* let get_func one_mem =
    let var_err = "variable not allowed yet! grrrr" in 
    match one_mem with
      SMemberFun(f) -> f
    | _            -> raise (Failure var_err)
  in  *)
  

  let main_func = (List.nth main_class.smeths 0) in
     let ftype = L.function_type (ltype_map main_func.styp) [||] in
     let main_func_ll = (L.define_function "main" ftype the_module, main_func) in
  

(* Fill in the body of the given function *)
  let build_function_body (func_ll : (L.llvalue * sfunc_decl)) =
    let the_function = snd func_ll in
    (* let (the_function, _) = StringMap.find fdecl.sfname function_decls in *)
    let builder = L.builder_at_end context (L.entry_block (fst func_ll)) in

    let format_str = L.build_global_stringptr "%s\n" "fmt" builder in
    (* and int_format_str = L.build_global_stringptr "%d\n" "fmt" builder  *)
   (* and float_format_str = L.build_global_stringptr "%g\n" "fmt" builder in *)

    (* let lookup n = try StringMap.find n local_vars
                   with Not_found -> StringMap.find n global_vars
                  in *)
    let rec expr builder m ((t, e) : sexpr)  = 
        let not_implemented_err = "not implemented yet! " ^ (string_of_sexpr (t, e)) in
      match e with
          SLiteral i -> (L.const_int i32_t i, m)
        | SBoolLit b -> (L.const_int i1_t (if b then 1 else 0), m)
        | SStringLit s -> (L.build_global_stringptr s s builder, m)
        | SId n -> (L.build_load (snd (StringMap.find n m)) n builder, m)
        | SAssign (n, e) -> let e' = fst (expr builder m e) in 
                              let _ = L.build_store e' (snd (StringMap.find n m)) builder in 
                            (e', m)
        | SClassVarAssign(name, var, e) -> 
            let e' = fst (expr builder m e) 
            and (typ, lval) = StringMap.find name m (* if not found, need to *)
            in 
              let cname = get_typ_name typ 
              in 
                let (vmap, _) = StringMap.find cname chunguini (* TODO: make abstraction for chunguini *)
            in let gep = L.build_struct_gep lval (StringMap.find var vmap) (name ^ var) builder
                in
                  let _ = L.build_store e' gep builder
            in (e', m)                      
        | SCall ("Olympus", "print", [e]) ->
          (L.build_call print_func [| format_str ; (fst (expr builder m e)) |]
          "printf" builder, m)
        | SNoexpr -> (L.const_int i32_t 0, m)
        | _ -> raise (Failure not_implemented_err)

      in 
      
      (* Each basic block in a program ends with a "terminator" instruction i.e.
      one that ends the basic block. By definition, these instructions must
      indicate which basic block comes next -- they typically yield "void" value
      and produce control flow, not values *)
      (* Invoke "instr builder" if the current block doesn't already
         have a terminator (e.g., a branch). *)
      let add_terminal builder instr =
                             (* The current block where we're inserting instr *)
        match L.block_terminator (L.insertion_block builder) with
          Some _ -> ()
        | None -> ignore (instr builder) in
        
      (* Imperative nature of statement processing entails imperative OCaml *)
      let rec stmt (builder, map) = function
          SBlock sl -> List.fold_left stmt (builder, map) sl
          (* Generate code for this expression, return resulting builder *)
        | SExpr e -> let (_, map') = expr builder map e in (builder, map') 
        | SReturn e -> let _ = match the_function.styp with 
                                (* Special "return nothing" instr *) 
                                A.Void -> L.build_ret_void builder
                                (* Build return statement *)
                              | _ -> L.build_ret (fst (expr builder map e)) builder
                          in (builder, map)
                      
                              (* | SReturn e -> let _ = match fdecl.styp with 
                              (* Special "return nothing" instr *) 
                              A.Void -> L.build_ret_void builder 
                              (* Build return statement *) 
                            | _ -> L.build_ret (expr builder e) builder 
                     in builder *) 
        
        | SLocal (t, n) -> let local = L.build_alloca (ltype_map t) n builder in
                           (builder, StringMap.add n (t, local) map) (* stores type of the local var so can be used in expr ^*)
        | _ -> let not_implemented_err = "not implemented yet!" in 
              raise (Failure not_implemented_err) in

        (* Build the code for each statement in the function *)
    let (builder, _) = stmt (builder, StringMap.empty) (SBlock the_function.sbody) in
    (* Add a return if the last block falls off the end *)
    add_terminal builder (match the_function.styp with
        A.Void -> L.build_ret_void
      | A.Float -> L.build_ret (L.const_float float_t 0.0)
      | t -> L.build_ret (L.const_int (ltype_map t) 0))

    in let _ = build_function_body main_func_ll
  in the_module
      
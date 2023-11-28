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
    
  in let populate_type_map context tmap sc_decl =
    let c_name   = sc_decl.sclass_name
    and all_vars = (sc_decl.svars @ sc_decl.spermittedvars)
    in 
      let all_typs = (L.pointer_type i8_t(* jump table type ????? *)) :: (List.map (ltype_of_typ tmap) (fst (List.split all_vars)))
      in
        let arr_vars = Array.of_list all_typs
      in StringMap.add c_name (L.struct_type context arr_vars) tmap
    in let type_map = List.fold_left (populate_type_map context) StringMap.empty classes
  
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
  let ltype_of_typ_with_map = ltype_of_typ type_map in
  let main_func = (List.nth main_class.smeths 0) in
     let ftype = L.function_type (ltype_of_typ_with_map main_func.styp) [||] in
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
        | SId n -> (L.build_load (StringMap.find n m) n builder, m)
        | SAssign (n, e) -> let e' = fst (expr builder m e) in 
                              let _ = L.build_store e' (StringMap.find n m) builder in 
                            (e', m)
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

        | SLocal (t, n) -> let local = L.build_alloca (ltype_of_typ_with_map t) n builder in
                           (builder, StringMap.add n local map) 
        | _ -> let not_implemented_err = "not implemented yet!" in 
              raise (Failure not_implemented_err) in

        (* Build the code for each statement in the function *)
    let (builder, _) = stmt (builder, StringMap.empty) (SBlock the_function.sbody) in
    (* Add a return if the last block falls off the end *)
    add_terminal builder (match the_function.styp with
        A.Void -> L.build_ret_void
      | A.Float -> L.build_ret (L.const_float float_t 0.0)
      | t -> L.build_ret (L.const_int (ltype_of_typ_with_map t) 0))

    in let _ = build_function_body main_func_ll
  in the_module
      
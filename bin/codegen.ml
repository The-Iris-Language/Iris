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
open Guini
(* open Ast *)

module StringMap = Map.Make(String)
module IntMap = Map.Make(Int)

(* accessing variable in a struct type: use build_struct_gep *)

let translate (classes : sclass_decl list) = 
  let context  = L.global_context () in
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

  (* Use ltype_map (line 98) to use this function without passing in tmap *)
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
      | _ -> raise (Failure "This is not an object type")
  
  in let is_object typ = 
    (try let _ = get_typ_name typ 
          in true 
      with 
      | Failure _ -> false)
    
  in 
    let populate_type_map context (counter, (tmap, chunguini)) sc_decl =
      let c_name   = sc_decl.sclass_name
      (* build vritual table *)
      
      and all_vars = sc_decl.svars
      and perm_len = List.length sc_decl.spermitted
        in 
          let perm_arr = L.array_type string_t perm_len
          in let (typs, vnames) = (List.split all_vars) 
      (* i32_t to hold position in array of vtables *)
            in let all_typs = i32_t :: (perm_arr :: (List.map (ltype_of_typ tmap) typs))
              and (new_var_index_map, _) = List.fold_left (fun (acc, count) var_name -> ((StringMap.add var_name count acc), (count + 1)) ) (StringMap.empty, 2) vnames
        (* and (new_fun_index_map, _) = (StringMap.empty, 0) *)
      (* in let () = print_endline "_______________________________1" *)
              in let (new_fun_index_map, _) = 
                List.fold_left (fun (acc, count) fun_decl -> ((StringMap.add fun_decl.sfname (count, fun_decl) acc), (count + 1)) ) (StringMap.empty, 0) sc_decl.smeths
  
      in
          let arr_vars = Array.of_list all_typs
          in 
            let new_struct = (L.named_struct_type context c_name)
            in 
              let _ = L.struct_set_body new_struct arr_vars false
              (* in let () = print_endline ((string_of_int counter) ^ " " ^ c_name) *)
                in (counter + 1, (StringMap.add c_name new_struct tmap, StringMap.add c_name (((i1_t), (L.const_int i1_t 0)), (new_var_index_map, new_fun_index_map)) chunguini))
        
      in 
        let (_, (type_map, chunguini)) = List.fold_left (populate_type_map context) (0, (StringMap.empty, StringMap.empty)) classes
      
          in let ltype_map = ltype_of_typ type_map 
        (* in let () = print_endline (string_of_int(get_class_index chunguini "IceCream")) *)

  in
  let formal_typ_of_typ typ = (match typ with 
          | A.Object (_) -> L.pointer_type (ltype_map typ)
          | _               -> ltype_map typ)
in
  (* making vtable types *)
  let make_vtable_typ context (guini, vtable_list) sc_decl = 
    let all_funcs = sc_decl.smeths
    in 
      (* list of function return/formal types (styp) *)
      let all_ftypes  = List.map (fun sfunc -> sfunc.styp) all_funcs
      and all_formals = List.map (fun sfunc -> fst (List.split sfunc.sformals)) all_funcs

        (* list of function return/formal lltypes *)
        in let ret_fltyps    = List.map ltype_map all_ftypes
        and formal_fltyps = (List.map (fun typs -> Array.of_list (List.map formal_typ_of_typ typs)) all_formals )
        in 
          let all_args = (List.combine ret_fltyps formal_fltyps)
          in
            let func_ltypes = List.map (fun (ret, forms) -> (L.pointer_type (L.function_type ret forms))) all_args
            in 
              (* vtable lltype *)
              let vtable_struct = L.named_struct_type context (sc_decl.sclass_name ^ "_vtable") 
              in let _ = L.struct_set_body vtable_struct (Array.of_list func_ltypes) false
            (* in let _ = print_endline (L.string_of_lltype vtable_struct) *)
              in let dummy_args = L.const_named_struct vtable_struct [| L.const_int i32_t 0 |]
              in let dummy_vtable_inst = L.define_global (sc_decl.sclass_name ^ "_vtable_data") dummy_args the_module 
            (* in let _ = print_endline (L.string_of_llvalue dummy_vtable_inst)     *)
            in 
                  let ((_, _), mem_maps) = StringMap.find sc_decl.sclass_name guini
                  
                  in ((StringMap.add sc_decl.sclass_name ((vtable_struct, dummy_vtable_inst), mem_maps) guini), vtable_list @ [L.pointer_type vtable_struct])
  
(* in let curr_class_type = (ltype_map (A.Object curr_name))
in let struct_arr = (L.struct_element_types curr_class_type)
in let _ = Array.set struct_arr 0 (L.pointer_type (L.type_of table) )
in let _ = L.struct_set_body curr_class_type struct_arr false *)
  in let (chunguini, vtable_list) = List.fold_left (make_vtable_typ context) (chunguini, []) classes
  in let update_ltypes (sc_decl : sclass_decl) = 
      let curr_lltype = (ltype_map (A.Object sc_decl.sclass_name))
        (* in let _ = print_endline (L.string_of_lltype curr_lltype)  *)
        in 
          let struct_arr = (L.struct_element_types curr_lltype)
      in
            let _ = Array.set struct_arr 0 (L.pointer_type (get_vtable_lltype chunguini sc_decl.sclass_name) )
            in 
              L.struct_set_body curr_lltype struct_arr false
    in let _ = List.map update_ltypes classes
          


    
  (* let main_class = find_class "Main" classes in *) 
  in let vtable_arr = Array.of_list vtable_list 
  (* in let vtables_struct = L.struct_type context vtable_arr  *)
  (* temp for testing *)
  (* in let vtables_llval = L.declare_global vtables_struct "big_vtable" the_module  *)
  in let big_vtable = L.named_struct_type context ("big_vtable") 
  in let _ = L.struct_set_body big_vtable vtable_arr false
  in let zero_big_table_args =  L.const_named_struct big_vtable [| L.const_int i32_t 0 |]
  in let zero_big_table_inst = L.define_global ("big_vtable_data") zero_big_table_args the_module 
(* in let () = print_endline (L.string_of_llvalue zero_big_table_inst) *)
 
(* HALLO *)
  in let print_t : L.lltype = 
    L.var_arg_function_type i32_t [| L.pointer_type i8_t |]
  in let print_func : L.llvalue = 
    L.declare_function "printf" print_t the_module in
  
  let build_class_functions (cls : sclass_decl) =
    let curr_name = cls.sclass_name in 
    
    (* Fill in the body of the given function *)
  
     let build_function_llvals (acc : (L.llvalue * sfunc_decl) list) (func : sfunc_decl) = 
      let func_name = (if (curr_name = "Main") && (func.sfname = "main") 
        then "main" 
        else func.sorigin ^ "_" ^ func.sfname)
      in
        if ((func.sorigin = curr_name)) then 
          let func_type = L.function_type (ltype_map func.styp) (Array.of_list (List.map formal_typ_of_typ (fst (List.split func.sformals))))
          in
            let func_ll = (L.define_function func_name func_type the_module, func) 
              in func_ll :: acc
              (* doens't work when main is inherited *)
            else (Option.get (L.lookup_function func_name the_module), func) :: acc 
        (* TODO: COME BACK TO THIS FOR VTABLES
           this line skips inherited, non-overriden functions *)
      in 
  let build_function_body (func_ll : (L.llvalue * sfunc_decl)) =
    let the_function = snd func_ll in
    let the_function_llval = fst func_ll in
    let curr_func_name = the_function.sfname in
    let formal_list = (snd func_ll).sformals in
    (* let _ = print_endline ((snd func_ll).sfname ^ " func_formals len is " ^ (string_of_int (List.length formal_list))) in *)
    (if (the_function.sorigin <> curr_name) then ()
    else 
    (* let (the_function, _) = StringMap.find fdecl.sfname function_decls in *)
    let builder = L.builder_at_end context (L.entry_block (the_function_llval)) in

    let format_str = L.build_global_stringptr "%s\n" "fmt" builder in
    (* and int_format_str = L.build_global_stringptr "%d\n" "fmt" builder  *)
   (* and float_format_str = L.build_global_stringptr "%g\n" "fmt" builder in *)

    (* let lookup n = try StringMap.find n local_vars
                   with Not_found -> StringMap.find n global_vars
                  in *)
    let rec expr builder m ((t, e) : sexpr)  = 
        (* let not_implemented_err = "Codegen Error 198: not implemented yet! " ^ (string_of_sexpr (t, e)) in *)
      match e with
          SLiteral   i -> (L.const_int i32_t i, m)
        | SBoolLit   b -> (L.const_int i1_t (if b then 1 else 0), m)
        | SStringLit s -> (L.build_global_stringptr s s builder, m)
        | SFliteral  s -> 
          (* let f = Float.of_string s 
          in
            (L.const_float float_t f, m) *)
            (L.const_float_of_string float_t s, m)
        | SId n -> (try (L.build_load (snd (StringMap.find n m)) n builder, m) with Not_found -> raise (Failure ("couldn't find " ^ n)))
        | SUnop (uop, e) -> 
          let (lval, m') = expr builder m e 
          in (match uop with 
              Neg -> (match t with
                        A.Int -> (L.build_neg lval "tmp" builder, m')
                      | A.Float -> (L.build_fneg lval "tmp" builder, m') 
                      | _ -> raise (Failure "negation only for int or float"))
            | Not -> (L.build_not lval "tmp" builder, m'))
            
        | SBinop(e1, bnop, e2) ->
            let (e1', m') = expr builder m e1 in 
            let (e2', m'') = expr builder m' e2 in 
            let (typ, _) = e1 in
            let llval = if typ = A.Float then (match bnop with 
              A.Add     -> L.build_fadd
            | A.Sub     -> L.build_fsub
            | A.Mult    -> L.build_fmul
            | A.Div     -> L.build_fdiv 
            | A.Equal   -> L.build_fcmp L.Fcmp.Oeq
            | A.Neq     -> L.build_fcmp L.Fcmp.One
            | A.Less    -> L.build_fcmp L.Fcmp.Olt
            | A.Leq     -> L.build_fcmp L.Fcmp.Ole
            | A.Greater -> L.build_fcmp L.Fcmp.Ogt
            | A.Geq     -> L.build_fcmp L.Fcmp.Oge
            | A.And | A.Or ->
                raise (Failure "internal error: semant should have rejected and/or on float")
            ) e1' e2' "tmp" builder 
            else (match bnop with
              A.Add     -> L.build_add
            | A.Sub     -> L.build_sub
            | A.Mult    -> L.build_mul
            | A.Div     -> L.build_sdiv
            | A.And     -> L.build_and
            | A.Or      -> L.build_or
            | A.Equal   -> L.build_icmp L.Icmp.Eq
            | A.Neq     -> L.build_icmp L.Icmp.Ne
            | A.Less    -> L.build_icmp L.Icmp.Slt
            | A.Leq     -> L.build_icmp L.Icmp.Sle
            | A.Greater -> L.build_icmp L.Icmp.Sgt
            | A.Geq     -> L.build_icmp L.Icmp.Sge
            ) e1' e2' "tmp" builder  
              
              (* | _ -> raise (Failure "binop not implemented for this type")  *)
            in 
              (llval, m'')
        
        | SDoubleOp (n, doubleop) -> let load_val = L.build_load (snd (StringMap.find n m)) n builder
           in let llval = (match t with 
                A.Float -> 
                let (e', _) = expr builder m (Float, SFliteral("1.0"))
                in 
                  (match doubleop with 
                    A.PPlus  -> L.build_fadd load_val e' "tmp" builder
                  | A.MMinus -> L.build_fsub load_val e' "tmp" builder)
              | A.Int -> 
                let (e', _) = expr builder m (Int, SLiteral(1)) 
                in
                  (match doubleop with 
                    A.PPlus -> L.build_add load_val e' "tmp" builder
                  | A.MMinus -> L.build_sub load_val e' "tmp" builder)
              | _     -> raise (Failure "binop not implemented for this type"))
              in let _ = L.build_store llval (snd (StringMap.find n m)) builder
            in (llval, m)

            
        | SAssign (n, e) -> let (e', m') = (expr builder m e) in 
                              let _ = L.build_store e' (snd (StringMap.find n m)) builder in 
                            (e', m')
        | SDeclAssign (_, n, e) -> 
          let local = L.build_alloca (ltype_map t) n builder 
          in
            let m' = StringMap.add n (t, local) m
            in 
              let e' = fst (expr builder m e) 
              in 
                let _ = L.build_store e' local builder 
                in (e', m')
        | SClassVarAssign(name, var, e) -> 
            let e' = fst (expr builder m e) 
            and (typ, lval) = StringMap.find name m (* if not found, need to *)
            in 
              let cname = get_typ_name typ 
              in 
                  let gep = L.build_struct_gep lval (get_var_index chunguini cname var) (name ^ var) builder
                  in
                    let _ = L.build_store e' gep builder
            in (e', m) 
        | SCall("Olympus", "print", [e]) ->
          (L.build_call print_func [| format_str ; (fst (expr builder m e)) |]
          "printf" builder, m)       
        | SCall(caller, func_name, e_list) -> 
          let (typ, lval) = (try StringMap.find caller m with Not_found -> raise (Failure ("codegen.ml " ^ (string_of_int __LINE__) ^  ": " ^ caller ^ "not found")))
        (* in let _ = print_endline "________________________ before get vtable ptr" *)
          in let class_name = (get_typ_name typ)
        (* in let _ = print_endline "________________________ before get vtable ptr" *)
            in let vtable_ptr = L.build_struct_gep lval 0 "vtable" builder
              (* in let class_index = L.build_load class_index_ptr "vtable_index_int" builder *)

                (* in let curr_vtable = get_vtable_ll chunguini class_name *)
          (* in let () = print_endline (L.string_of_llvalue class_index) *)
                (* in let curr_vtable = L.build_in_bounds_gep zero_big_table_inst [|L.const_int i32_t 0 ; class_index|] "curr_vtable" builder *)
              (* in let _ = print_endline "________________________ before grabbing vtable" *)
              in let vtable = L.build_load vtable_ptr "vtable" builder
                (* in let _ = print_endline "______________________________ loaded vtable" *)

                in let function_index = get_fun_index chunguini class_name (func_name)
              (* in let () = print_endline "________________________ before code_fun"  *)
                in let code_fun = L.build_struct_gep vtable function_index "fun_to_call" builder
              (* in let () = print_endline "________________________ after code_fun"  *)
              
                in let func = L.build_load code_fun "function" builder

            in let arg_lls = (fst (List.split (List.map (expr builder m) e_list)))
            in let arg_arr = Array.of_list (lval :: arg_lls)
            (* Option.get (L.lookup_function func_name the_module) *)
            in let function_typ = get_fun_decl chunguini class_name func_name
            in let ret_ty = function_typ.styp
            in let result = (match ret_ty with 
              A.Void -> ""
            | _ -> func_name ^ "_result")
            in let call = L.build_call func arg_arr result builder
          in (call, m)
           
        | SClassVar(name, var) -> 
          let (typ, lval) = StringMap.find name m
          in 
            let cname = get_typ_name typ
            in 
                let gep = L.build_struct_gep lval (get_var_index chunguini cname var) (name ^ var) builder
                in 
                  (L.build_load gep (name ^ var) builder, m)
                  (* (L.build_load (snd (StringMap.find n m)) n builder, m) *)
        | SOpAssign (n, op, e) -> let load_val =  L.build_load (snd (StringMap.find n m)) n builder
              in 
                let (e', m') = expr builder m e
                in let llval = (match t with 
                    A.Float -> (match op with 
                        A.Peq -> L.build_fadd 
                      | A.Meq -> L.build_fsub 
                      | A.Teq -> L.build_fmul
                      | A.Deq -> L.build_fdiv) 
                        load_val e' "tmp" builder
                  | A.Int -> (match op with 
                        A.Peq -> L.build_add 
                      | A.Meq -> L.build_sub 
                      | A.Teq -> L.build_mul
                      | A.Deq -> L.build_sdiv)
                        load_val e' "tmp" builder
                  | _ -> raise (Failure "Arithmetic Assign not implemented for this type"))
                  in let _ = L.build_store llval (snd (StringMap.find n m)) builder
                    in (llval, m')
        | SNoexpr -> (L.const_int i32_t 0, m)

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
        | SIf(pred, then_stmt, else_stmt) -> 
            let (bool_llval, map') = expr builder map pred in 
            (* Add "merge" basic block to our function's list of blocks *)
            let merge_bb = L.append_block context "merge" the_function_llval in
            (* Partial function used to generate branch to merge block *) 
            let branch_instr = L.build_br merge_bb in

            let then_bb = L.append_block context "then" the_function_llval in
            (* Position builder in "then" block and build the statement *)
            let (then_builder, _) = stmt ((L.builder_at_end context then_bb), map') then_stmt in
            (* Add a branch to the "then" block (to the merge block) 
            if a terminator doesn't already exist for the "then" block *)
            let () = add_terminal then_builder branch_instr in

                  (* Identical to stuff we did for "then" *)
            let else_bb = L.append_block context "else" the_function_llval in
            let (else_builder, _) = stmt ((L.builder_at_end context else_bb), map') else_stmt in
            let () = add_terminal else_builder branch_instr in

            (* Generate initial branch instruction perform the selection of "then"
            or "else". Note we're using the builder we had access to at the start
            of this alternative. *)
            let _ = L.build_cond_br bool_llval then_bb else_bb builder in
            (* Move to the merge block for further instruction building *)
            (L.builder_at_end context merge_bb, map')

        | SLocal (t, n) -> 
          let local = L.build_alloca (ltype_map t) n builder in
          (* let lval = L.build_load local "local" builder in *)
            let _ = 
              (match t with 
                Object (name) ->
                  let gep = L.build_struct_gep local 0 "vtable" builder in
                  (* let _ = print_endline "got gep" in *)
                  let vtable_ll = get_vtable_ll chunguini name
                  (* in let () = print_endline "after got llvalue" *)
                    in L.build_store vtable_ll gep builder 
                | _ -> local)
            in
            (builder, StringMap.add n (t, local) map) (* stores type of the local var so can be used in expr ^*)
        | _ -> let not_implemented_err = "Codegen: not implemented yet!" in 
              raise (Failure not_implemented_err) 

        (* Build the code for each statement in the function *)
        in let formals_llvals = Array.to_list (L.params the_function_llval)
      in let build_alloca_formals m ((t, n), l) = 
        
        let formal = 
          (if (is_object t) 
          then (L.build_alloca (L.pointer_type (ltype_map t)) "temp" builder)
          else (L.build_alloca (ltype_map t) n builder))
          (* in let formal =  *)
        (* in let _ = print_endline ("built alloca " ^ (L.string_of_llvalue formal)) *)
        in let _ = L.build_store l formal builder
      (* in let _ = print_endline ("built store " ^ (L.string_of_llvalue s)) *)
           in 
            (if (is_object t) 
            then let load = L.build_load formal n builder 
          (* in let _ = print_endline ("built load " ^ (L.string_of_llvalue load))  *)
        in (StringMap.add n (t, load) m) 
            else (StringMap.add n (t, formal) m))
        
        (* in let _ = if () *)
          

          in let formal_map = List.fold_left build_alloca_formals StringMap.empty (List.combine formal_list formals_llvals)
          in let (builder, _) = stmt (builder, formal_map) (SBlock the_function.sbody) in
    (* Add a return if the last block falls off the end *)
    add_terminal builder (match the_function.styp with
        A.Void -> L.build_ret_void
      | A.Float -> L.build_ret (L.const_float float_t 0.0)
      | t -> L.build_ret (L.const_int (ltype_map t) 0)))
      
  in 
  (* add logic that skips over inherited functions *)
    let llval_list = List.rev (List.fold_left build_function_llvals [] cls.smeths )
    in let _ = List.iter build_function_body llval_list 
    in let table_lltyp = get_vtable_lltype chunguini curr_name
    in let table_llval = get_vtable_ll chunguini curr_name
    in let table = L.const_named_struct table_lltyp (Array.of_list (fst (List.split llval_list)))
    in let _ = L.delete_global table_llval
in
    L.define_global (curr_name ^ "_vtable_data") table the_module 
    
  in let instantiated_vtable_llvalues = List.map build_class_functions classes 
  in let _ = L.delete_global zero_big_table_inst
  in let big_table_inst =  L.const_named_struct big_vtable (Array.of_list instantiated_vtable_llvalues)
  in let _ = L.define_global ("big_vtable_data") big_table_inst the_module 
  
    (* let _ = build_function_body main_func_ll *)
in the_module

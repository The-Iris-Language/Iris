(* Semantic checking for the MicroC compiler *)

open Ast
open Sast
open Symbol

module StringMap = Map.Make(String)



     (* 
      
      hE's GoInG tO sAcRiFiCe HiMsElF!!!!!!

      therE hAs to be anOthAr wAaY!

      Call(fname, args) as call -> 
        let fd = find_func fname in
        let param_length = List.length fd.formals in
        if List.length args != param_length then
          raise (Failure ("expecting " ^ string_of_int param_length ^ 
                          " arguments in " ^ string_of_expr call))
        else let check_call (ft, _) e = 
          let (et, e') = expr e in 
          let err = "illegal argument found " ^ string_of_typ et ^
            " expected " ^ string_of_typ ft ^ " in " ^ string_of_expr e
          in (check_assign ft et err, e')
        in 
        let args' = List.map2 check_call fd.formals args
        in (fd.typ, SCall(fname, args')) *)

        (* TODO:: FINISH THIS ~~~~~~ WAAHHHHH SADDDDD WE CRY BUT WE TIRED OOP
         THERE
         HAS
         TO
         BE
         ANOTHER
         WAYYYYYYYYYYYYYY

         hEsGoInGtOsAcRiFiCeHiMsElF

         NAAUUUUUUUU
         RON NAAAAUUURRRR

         not me, not hermione, YOÖÜÜÜÜÜU
         
      *)



  (* ARCHITECTURE :P 
  - add built-in stuff 
  - check for dup classes 
  - make sure nothing inherits from Olympus/List/Main 
  then: 

   1. build global class environment (names and shit)
          - add built-in stuff: Olympus, Object, List to symbol table 
          - add user-defined classes
          - check for duplicate class names

   2. build inheritance tree (fail if anything inherits from main/olympus?) 
          - check that parent class exists
          - can things inherit from main? olympus?   :O   ???????
          - are we allowing permit and private in main? non-class methods?
          - can they instantiate an instance of main? NO.


   3. check each class individually with inheritance in mind (build new env for each)-- DFS thru inheritance tree
          - check for duplicate labels (public, permit, private)
          - permit classes exist
          - check member variables + typ23z732es (local and permitted, raise errors for private or unpermitted)
          - check methods + types (univ, local, and permitted, raise errors for private or unpermitted) (new env for each function)
              - member var and member func of same name is allowed, also overriding from parent allowed
          - 
    4. check if main exists
          - make sure univ int main() exists
          - are we allowing Main.main() to be called in another class (or in Main?)
    5. return a sprogram type that is a tuple of a list of classes and the main class (class_decl list, sfunc_decl)
  *)
 
  
  (* Implementation Plan :P 
   *   1. Implement semant & sast
   *   2. Implement codegen
   *   3. Test
   *   4. wahoo
   *)


  
(* Semantic checking of the AST. Returns an SAST if successful,
   throws an exception if something is wrong.

   Check each defined class *)
  let check classes = 

    let olympus_print  = { univ = true;
                            typ = Void;
                            fname = "print";
                            formals = [(String, "out")];
                            body = [Expr(Noexpr)]}                        
    (* and olympus_int_to_string = { univ = true;
                                  typ = String;
                                  fname = "int_to_string";
                                  formals = [(Int, "num")];
                                  body = [Expr(Noexpr)]} 
    and olympus_float_to_string = { univ = true;
                                  typ = String;
                                  fname = "float_to_string";
                                  formals = [(Float, "num")];
                                  body = [Expr(Noexpr)]
    } *)

    in let olympus_class = { class_name = "Olympus"; 
                             parent_name = "Object"; 
                             permitted = [];
                             mems = [("public", (MemberFun olympus_print) (*:: (MemberFun olympus_int_to_string) :: (MemberFun olympus_float_to_string)*) ::[])] }
    in let classes = olympus_class::classes in

    let name_compare c1 c2 = compare c1.class_name c2.class_name in
        let check_dups checked a_class = 
          let dup_err = "Compilation error: Duplicate class name " ^ a_class.class_name
            in match checked with 
            (* No duplicate bindings *)
            (first_class :: _) when a_class.class_name = first_class.class_name -> 
                  raise (Failure dup_err)
            | _ -> a_class :: checked
    in let _ = List.fold_left check_dups [] (List.sort name_compare classes) in

  (* helper functions !!!! WOOOOOO *)
  



  (* find_func: finds a function given a function declaration and list of functions *)
  (* let find_func (func : func_decl) (mems : member list) = 
    let func_not_found = "function of name " ^ func.fname ^ " not found" in 
    let check_mems a_mem = 
      match a_mem with 
          MemberVar(_) -> false
        | MemberFun(a_func) -> 
              (func.univ = a_func.univ) 
            && (func.typ = a_func.typ) 
            && (func.fname = a_func.fname) 
            && (List.length func.formals = List.length a_func.formals)
            && (List.fold_left 
                      (fun acc ((typ1, _), (typ2, _)) -> acc && (typ1 = typ2)) 
                      true 
                      (List.combine func.formals a_func.formals))
    in 
      try List.find check_mems mems
      with Not_found -> raise (Failure func_not_found) in *)

     let get_func (func_name : string) (mems : member list) = 
        let func_name_not_found = "function of name " ^ func_name ^ " not found" in  
        let check_mems a_mem = 
          match a_mem with 
              MemberVar(_) -> false
            | MemberFun(a_func) -> (func_name = a_func.fname) 
        in 
          try 
          let ret_func = List.find check_mems mems in
            match ret_func with 
              MemberVar(_) -> raise (Failure func_name_not_found)
              | MemberFun(a_func) -> a_func
          with Not_found -> raise (Failure func_name_not_found)

  (* find_var: given a list of members, find a given member variable *)
  (* in let find_var ((bind_typ, bind_name) : bind) (mems : member list) = 
    let var_not_found = "var of name " ^ bind_name ^ " not found" in 
    let check_mems a_mem = 
      match a_mem with 
          MemberVar((a_bind_typ, a_bind_name)) -> 
              (a_bind_typ = bind_typ) 
            && (a_bind_name = bind_name) 
        | MemberFun(_) -> false
    in 
      try List.find check_mems mems
      with Not_found -> raise (Failure var_not_found) *)

    in let find_class class_name classes = 
      let class_not_found_err = "class " ^ class_name ^ " not found"
    in 
      try List.find (fun a_class -> (class_name = a_class.class_name)) classes 
      with Not_found -> raise (Failure class_not_found_err)


    (* 
      1. Semantically check classes
          - semantically member variables -> wildcard
          - semantically check member functions**
            - semantically check expr, stmt, lamow** -> stringLit, fcalls, blocks
            
        - semantically check encap list (put things into private, public, or permitted, 
                at this point we will build exactly 1 of each)
        - 

        - second pass: check inheritance and any function calls for permitted stuff (or possibly, 
            check permits while we check functions??? idk TODO decide )
    *)

    
    (* DONT FORGET TO PUT THIS BACK INTO build_sast *)
(*   
  let name_compare c1 c2 = compare c1.class_name c2.class_name in
  let check_dups checked a_class = 
    let dup_err = "duplicate class " ^ a_class.class_name
    in match checked with 
      (* No duplicate bindings *)
      (first_class :: _) when a_class.class_name = first_class.class_name -> 
             raise (Failure dup_err)
      | _ -> a_class :: checked
    in let dup_checked = List.fold_left check_dups [] (List.sort name_compare classes)  *)

  (* build SAST. then if main() and Main exist: return SAST, else throw error *)

  in let build_sast (cdecls : class_decl list) =
    (* TODO
       BIG TODO DO NOT FORGET
       write check_func function that defines these within it! *)
    let rec check_expr m (e : expr) = 
      let not_implemented_err = "not implemented expr: " ^ (string_of_expr e)
      in match e with 
        Literal l -> ((Int, SLiteral l), m)
      | BoolLit b -> ((Bool, SBoolLit b), m)
      | StringLit s -> ((String, SStringLit(s)), m)
      | Id n -> (try let (t, _) = StringMap.find n m 
                    in ((t, SId(n)), m)
                with Not_found -> raise (Failure ("variable " ^ n ^ " not found")))
      | Call (class_string, function_string, (args : expr list)) -> 
        (* TODO CHANGEEEE check for instance vs class name *)
        let func_class = find_class class_string classes 
          in let func = get_func function_string (snd (List.nth func_class.mems 0)) 
            in let sxpr_list = List.map (check_expr m) args 
              in let sl  = List.map (fun ((t, sexpr), _) -> (t, sexpr)) sxpr_list
              in ((func.typ, SCall(class_string, function_string, sl)), m)
      | Assign (n, e) -> (try let var = StringMap.find n m 
                          and (sexpr, m') = check_expr m e in
                            if (fst var == fst sexpr) then 
                                ((fst sexpr, SAssign(n, sexpr)), m')
                            else raise (Failure ("variable " ^ n ^ " has type " ^ string_of_typ (fst var) 
                                                ^ ", but an expression with type " ^ string_of_typ (fst sexpr) 
                                                ^ " was found."))
                            with Not_found -> raise (Failure ("variable " ^ n ^ " not found"))) 
                        (* try let _ = StringMap.find n m in
                     raise (Failure ("local variable " ^ n ^ " already exists"))
                  with Not_found -> ((SLocal (t, n)), m)) *)
              (* check for same type and previously defined *)
      | Noexpr -> ((Void, SNoexpr), m)
      | _ -> raise (Failure not_implemented_err)
    

    in let check_function (func : func_decl) =
      

(* Will have StringMap for Class Variables *)
      (* TODO: eventually check formals / binds !! *)
        
      let rec check_stmt m (s : stmt) = 
        let not_implemented_err = "not implemented stmt: " ^ string_of_stmt s
      in let void_err = "void type cannot be used to declare variable: " ^ string_of_stmt s
      in match s with 
        Expr e -> let (checked_expr, new_m) = check_expr m e in
           (SExpr(checked_expr), new_m)
          | Local (t, n) -> (match t with
              Void -> raise (Failure void_err)
            | Object (cname) -> raise (Failure (not_implemented_err ^ ": " ^ cname))
            | _ ->  try let _ = StringMap.find n m in
                      raise (Failure ("local variable " ^ n ^ " already exists"))
                    with Not_found -> ((SLocal (t, n)), m))
        (* | If(p, b1, b2) -> SIf(check_bool_expr p, check_stmt b1, check_stmt b2)
        | For(e1, e2, e3, st) -> SFor(expr e1, check_bool_expr e2, expr e3, check_stmt st)
        | While(p, s) -> SWhile(check_bool_expr p, check_stmt s) *)
        | Return e -> let ((t, e'), m) = check_expr m e
          (* func is the argument of check_func (to be written) *)
          in if t = func.typ then (SReturn (t, e'), m)
          else raise (Failure ("return gives " ^ string_of_typ t ^ " expected " ^
                              string_of_typ func.typ ^ " in " ^ string_of_expr e))
        | Block sl -> 
          let rec check_stmt_list map slist = match slist with 

              [Return _ as s]   -> [check_stmt m s]

            | Return _ :: _     -> raise (Failure "nothing may follow a return")

            | Block sl :: ss    -> check_stmt_list map (sl @ ss)  (* Flatten blocks *)

            | Local stmt1 :: ss -> 
              let (svar, map') = check_stmt map (Local stmt1) in
              let (typ, name) = 
              (match svar with 
                (SLocal b)  -> b
                | _ -> raise (Failure "not reachable wut da fuk r u doing")) 
              in 
              (svar, map') :: check_stmt_list (StringMap.add name (typ, name) map') ss
                (* let (svar, map') = check_stmt map (Local stmt1) in 
                let (ret_list, map'') = check_stmt_list (StringMap.add (fst stmt1) svar map') ss in
                  (svar :: ret_list) *)

            | stmt1 :: ss       -> (check_stmt map stmt1) :: check_stmt_list map ss

            | []                -> []

            
          in let ret_stmts = List.map (fun (s, _) -> s) (check_stmt_list m sl)
          in (SBlock(ret_stmts), m)


        | _ -> raise (Failure not_implemented_err)
        in let locals = StringMap.empty 
      in {suniv = func.univ;
          styp = func.typ;
          sfname = func.fname;
          sformals = func.formals;
          sbody = let (checked_block, _) = check_stmt locals (Block (func.body))
                  in match checked_block with 
                  SBlock(checked_stmt_list) -> checked_stmt_list
                  | _ -> raise (Failure "whoops!")}
        
    (* check_encap, check_class... *)
      in let check_member (mem : member) = 
        match mem with
          MemberFun(f) -> SMemberFun(check_function f)
        | MemberVar(v) -> SMemberVar(v) (* check for valid class name (if class type) and duplicate and ladida *)
      
        
        (* maybe we allow for up to 3 encap blocks *)
        (* made one big function because we want to assign each encap into corresponding public, permit, and private *)
      in let check_encap_list (encaps : encap list) = 
        (* let invalid_encaps_error = "encapsulation is malformed"  *)
          (* if (List.length encaps > 3) then raise (Failure invalid_encaps_error) 
          else                                    TODO: check for dup labels ??? *)
        let first = List.nth encaps 0 in
          (fst first, List.map check_member (snd first)) :: [] (* eventually need to loop over encaps and check their mems *)
            
      in let check_class (cls : class_decl) = 
       (* TODO: check permitted list for valid names, *) 

      { sclass_name = cls.class_name;
        sparent_name = cls.parent_name;
        spermitted = cls.permitted;
        smems =  check_encap_list cls.mems;
      }
    in List.map check_class cdecls

  (* semantically check all, then make sure main exists *)
  in let sclasses = build_sast classes

  (* in let main_class = find_class "Main" sclasses *)

  (* in let sclasses = check_classes classes  *)
(* 
  in let main_func (* maybe can be wildcard *) = 
            find_func ({univ = true; typ = Int; fname = "main"; formals = []; body = []; }) 
                      (snd (List.nth main_class.mems 0))    (* TODO: need to change bc this may not be public  *)
                                                          (maybe want to enforce ordering for encap to public, permit, private or smth) *)

  in List.rev (List.tl sclasses) (* remove Olympus before we pass to codegen *)

(* in List.fold_left [] (fun c -> sclass_decl { sclass_name : c.class_name; *)



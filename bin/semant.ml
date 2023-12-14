(* Semantic checking for the MicroC compiler *)

open Ast
open Sast
open Gus

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

let error line = "semant.ml line " ^ (string_of_int line) ^ ": "



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
    in let object_class =  { class_name = "Object"; 
            parent_name = ""; 
            permitted = [];
            mems = [] }
    in let big_chungus = List.fold_left build_chungus StringMap.empty (object_class :: (olympus_class :: classes)) 
      in let classes = object_class :: classes
        in let name_compare c1 c2 = compare c1.class_name c2.class_name in
        let check_dups checked a_class = 
          let dup_err = "Compilation error: Duplicate class name " ^ a_class.class_name
            in match checked with 
            (* No duplicate bindings *)
            (first_class :: _) when a_class.class_name = first_class.class_name -> 
                  raise (Failure dup_err)
            | _ -> a_class :: checked
    in let _ = List.fold_left check_dups [] (List.sort name_compare classes) 

  (* helper functions !!!! WOOOOOO *)

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

     let is_object = function
      | Object (n) -> let _ = find_class big_chungus n in true
      | _ -> false

      in let get_object_name = function 
        | Object (n) -> n 
        | _ -> "not an object!"

      in let mismatch_types err lhval rhval =
      (if lhval <> rhval then 
          (if ((is_object lhval) && (is_object rhval)) then 
            let lhcls = get_object_name lhval and rhcls = get_object_name rhval in
              (if (is_ancestor big_chungus rhcls lhcls) then 
                  true
              else 
                  raise (Failure ("class " ^ lhcls ^ " is not an ancestor of " ^ rhcls)))
          else raise (Failure (err)))
      else true)

    in let check_class (scls_accum : sclass_decl list) (cls : class_decl) = 
      let curr_class = cls.class_name
      and parent_class = cls.parent_name

      (*  *)

      (* TODO
        BIG TODO DO NOT FORGET
        write check_func function that defines these within it! *)
      in let rec check_expr m (e : expr) = 
        let not_implemented_err = "not implemented expr: " ^ (string_of_expr e)
        in match e with 
          Literal l -> ((Int, SLiteral l), m)
        | BoolLit b -> ((Bool, SBoolLit b), m)
        | StringLit s -> ((String, SStringLit(s)), m)
        | Fliteral f -> ((Float, SFliteral(f)), m)
        | Id n -> (try let (t, _) = StringMap.find n m 
                      in ((t, SId(n)), m)
                  with Not_found -> raise (Failure ( "variable " ^ n ^ " not found")))
        | Unop (uop, e) -> let ((t, e'), m') = check_expr m e in
                            let wrong_type_err = "type: " ^ (string_of_typ t) ^ " is invalid for unop" ^ (string_of_uop Not)
                            in 
                              let ty = (match uop with
                                Neg when t = Int || t = Float -> t
                              | Not when t = Bool -> Bool
                              | _  -> raise (Failure ( wrong_type_err)))
                              in 
                          ((ty, SUnop(uop, (ty, e'))), m')
        | Binop (e1, op, e2) -> 
              let ((t1, e1'), m') = check_expr m e1 in
              let ((t2, e2'), m'') = check_expr m' e2 in
              (* All binary operators require operands of the same type *)
              let same = t1 = t2 in
              (* Determine expression type based on operator and operand types *)
              let ty = match op with
                Add | Sub | Mult | Div when same && t1 = Int   -> Int
              | Add | Sub | Mult | Div when same && t1 = Float -> Float
              | Equal | Neq           when same               -> Bool
              | Less | Leq | Greater | Geq
                        when same && (t1 = Int || t1 = Float) -> Bool
              | And | Or when same && t1 = Bool               -> Bool
              | _ -> raise (Failure ( "illegal binary operator " ^
                                    string_of_typ t1 ^ " " ^ string_of_op op ^ " " ^
                                    string_of_typ t2 ^ " in " ^ string_of_expr e))
              in ((ty, SBinop((t1, e1'), op, (t2, e2'))), m'')
        | DoubleOp (n, doubleop) -> let (typ, _) = (try StringMap.find n m 
            with Not_found -> raise (Failure ( "Variable " ^ n ^ " not declared")))
            in (match typ with 
                                    Int   -> ((Int, SDoubleOp(n, doubleop)), m)
                                  | Float -> ((Float, SDoubleOp(n, doubleop)), m)
                                  | _     -> raise (Failure (  (string_of_typ typ) ^ " is not a valid type for double op")))
        | Call (caller, function_string, (args : expr list)) -> 
          let ((_, encap), func_d) = 
          (* TODO CHANGEEEE check for instance vs class name 
            WE NEED TO CHECK FOR 
          *)
          (match caller with 
          "self" -> find_func big_chungus curr_class function_string
          | _    -> (try find_func big_chungus caller function_string
            with _ -> 
              let (typ, _) = (try StringMap.find caller m  
                with Not_found -> raise (Failure ( caller ^ "is not a class or local variable")))
              in 
                let cname = (match typ with 
                  | Object (c) -> c
                  | _ -> raise (Failure ( (string_of_typ typ) ^ "Not an object")))
                in 
                  find_func big_chungus cname function_string))
          in (match encap with 
            "private:" -> raise (Failure ( "function " ^ function_string ^ " is not accessible"))
            | _       ->      
              let sxpr_list = List.map (check_expr m) args 
                (* in let m_with_formals = List.fold_left (fun (new_map, (typ, name)) -> (StringMap.add name (typ, name) new_map)) m func_d.formals *)
                  in let sl  = List.map (fun ((t, sexpr), _) -> (t, sexpr)) sxpr_list
                    in let args = (try List.combine sl func_d.formals
                                with _ -> raise (Failure ( "Number of arguments doesn't match")))
                              in let _ = List.map (fun ((t1, _), (t2, _)) -> let  mismatch_err = "argument of type " ^ string_of_typ t1 
                                                                              ^ " does not match argument of  " ^ string_of_typ t2 
                                                                              in mismatch_types mismatch_err t2 t1) args
                  in ((func_d.typ, SCall(caller, function_string, sl)), m))
        | Assign (n, e) -> 
          (try let var = StringMap.find n m 
              and (sexpr, m') = check_expr m e in
              let typ1 = fst var and typ2 = fst sexpr in 
              let  mismatch_err = "variable " ^ n ^ " has type " ^ string_of_typ (typ1) 
              ^ ", but an expression with type " ^ string_of_typ (typ2) 
              ^ " was found." in
              let _ = mismatch_types mismatch_err typ1 typ2 in  
                ((typ2, SAssign(n, sexpr)), m')
          with Not_found -> raise (Failure ( "variable " ^ n ^ " not found"))) 
                          (* try let _ = StringMap.find n m in
                      raise (Failure ("local variable " ^ n ^ " already exists"))
                    with Not_found -> ((SLocal (t, n)), m)) *)
                (* check for same type and previously defined *)
        | DeclAssign (t, n, e) -> 
          let (sexpr, m') = (check_expr m e) in 
          let expr_type = fst sexpr in
          let mismatch_err = "variable " ^ n ^ " has type " ^ string_of_typ (t) 
              ^ ", but an expression with type " ^ string_of_typ (fst sexpr) 
              ^ " was found." in
          let _ = mismatch_types mismatch_err t expr_type in 
          let m'' = StringMap.add n (t, n) m' in
              ((expr_type, SDeclAssign(t, n, sexpr)), m'')
        | ClassVar (inst_name, mem) -> 
          let (class_typ, _) = StringMap.find inst_name m 
          in 
            let cname = (match class_typ with 
              Object (c) -> c
              | _ -> raise (Failure ( "variable " ^ inst_name ^ " not an object")))
            in 
              let (encap_level, (mem_type, _)) = find_var big_chungus cname mem 
              in 
                (match encap_level with 
                  "private:" -> raise (Failure ( "member " ^ mem ^ " is not accessible"))
                  | _       ->  ((mem_type, SClassVar(inst_name, mem)), m))
            
        | ClassVarAssign (inst_name, mem, e) -> 
          let (class_typ, _) = StringMap.find inst_name m 
          in 
            let cname = (match class_typ with 
              Object (c) -> c
              | _ -> raise (Failure ( "variable " ^ inst_name ^ " not an object")))
            in 
              (* pull out type from chungus variable *)
              let (encap_level, (mem_type, _)) = find_var big_chungus cname mem
            in
              (match encap_level with 
                "private:" -> raise (Failure ( "member " ^ mem ^ " is not accessible"))
              | _         -> let (sexpr, m') = (check_expr m e) in
              let expr_type = fst sexpr in 
              let  mismatch_err = "class variable " ^ mem ^ " has type " ^ string_of_typ (mem_type) 
              ^ ", but an expression with type " ^ string_of_typ (expr_type) 
              ^ " was found." in
              let _ = mismatch_types mismatch_err mem_type expr_type in
                ((mem_type, SClassVarAssign(inst_name, mem, sexpr)), m'))                                      
        | OpAssign (var, op, e) ->  
              let _ = (try StringMap.find var m 
                with Not_found -> raise (Failure ( "variable" ^ var ^ "has not been declared"))) in
              let ((t, e'), m'') = check_expr m e in  
              (* Determine expression type based on operator and operand types *)
              let ty = match op with
                Peq | Meq | Teq | Deq when t = Int -> Int
              | Peq | Meq | Teq | Deq when t = Float -> Float
              | _ -> raise (Failure ( string_of_typ t ^ " not valid for op assign"))
            in ((ty, SOpAssign(var, op, (t, e'))), m'')
        | NewObject (n) -> let _ = find_class big_chungus n in 
                            ((Object (n), (SNewObject (n))), m)                                                  
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
                Void -> raise (Failure ( void_err))
              | _ ->  (try let _ = StringMap.find n m in
                        raise (Failure ( "local variable " ^ n ^ " already exists"))
                      with Not_found -> ((SLocal (t, n)), StringMap.add n (t, n) m)))
                      (* need to pattern match here or else get compiler warning*)
                        (* (match t with 
                        Object (cname) -> ((SLocal (Object (cname), n)), StringMap.add n (t, n) m) 
                      | _ -> ((SLocal (t, n)), StringMap.add n (t, n) m))) *)
          | If(p, b1, b2) -> 
              let (b, m1) = check_expr m p in 
                let (typ, _) = b in
                  let _ = (match typ with 
                  Bool -> ()
                  | _ -> raise (Failure ( "Predicate in if statement is not a bool"))) in
              let (stmt1, _) = check_stmt m1 b1 in
              let (stmt2, _) = check_stmt m1 b2 in 
              (SIf(b, stmt1, stmt2), m)
          (* | For(e1, e2, e3, st) -> SFor(expr e1, check_bool_expr e2, expr e3, check_stmt st)
          | While(p, s) -> SWhile(check_bool_expr p, check_stmt s) *)
          | Return e -> let ((t, e'), m') = check_expr m e in
            (* func is the argument of check_func (to be written) *)
            let  mismatch_err =  "return gives " ^ string_of_typ t ^ " expected " ^
            string_of_typ func.typ ^ " in " ^ string_of_expr e in
            let _ = mismatch_types mismatch_err func.typ t in 
            (SReturn (t, e'), m')
            
          | Block sl -> 
            let rec check_stmt_list map slist = match slist with 
                [Return _ as s]   -> [check_stmt map s]
              | Return _ :: _     -> raise (Failure ("nothing may follow a return"))
              | Block sl :: ss    -> check_stmt_list map (sl @ ss)  (* Flatten blocks *)
              (* | Local (typ, name) :: ss -> 
                let (svar, map') = check_stmt map (Local (typ, name)) in
                (svar, map') :: check_stmt_list (StringMap.add name (typ, name) map') ss *)
              | stmt1 :: ss -> 
                let (checked_stmt, map') = (check_stmt map stmt1) 
                in 
                  (checked_stmt, map') :: check_stmt_list map' ss
              | []          -> [] 
            in let ret_stmts = List.map (fun (s, _) -> s) (check_stmt_list m sl)
            in (SBlock(ret_stmts), m)

          | _ -> raise (Failure not_implemented_err)
          (* in let member_vars =  *)
          in let locals = List.fold_left (fun acc (typ, name) -> StringMap.add name (typ, name) acc) StringMap.empty func.formals

        in {suniv = func.univ;
            styp = func.typ;
            sfname = func.fname;
            sformals = func.formals;
            sbody = (let (checked_block, _) = check_stmt locals (Block (func.body))
                    in (match checked_block with 
                    SBlock(checked_stmt_list) -> checked_stmt_list
                    | _ -> raise (Failure "whoops!")));
            sorigin = get_func_origin big_chungus curr_class func.fname;
            sencap = get_func_encap big_chungus curr_class func.fname}


      
          
      (* check_encap, check_class... *)
        in let check_mem enc (vars, meths) (mem : member)  =
            (match mem with
              MemberFun(f) -> 
                let sfunc = check_function f
                in (vars, (sfunc :: meths))
            | MemberVar(v) -> 
                (v :: vars, meths)
              (* TO DO: make sure that the type actually exists and variable?? *)
              )


        in let sort_fcns (fs : sfunc_decl list) (ps : sfunc_decl list) =
          let replace_local (p : sfunc_decl) =
            if (get_func_origin big_chungus curr_class p.sfname = curr_class) 
              then List.find (fun func1 -> func1.sfname = p.sfname) fs else p
          in
          let delete_local flist (f : sfunc_decl) =
            if (is_meth big_chungus parent_class f.sfname) then flist else f::flist
          in 
          let ps_updated = List.map replace_local ps 
          in
            ps_updated @ (List.fold_left delete_local [] fs)

  
        in let check_encap lists ((enc, mems) : encap) = 
          List.fold_left (check_mem enc) lists mems
        

          (* (match mem with
            MemberFun(f) -> 
              let sfunc = check_function f
              in 
                (match enc with 
                  "permit" -> ((vars, perm_vars), (meths, sfunc :: perm_meths))
                  | _        -> ((vars, perm_vars), (sfunc :: meths, perm_meths)))
          | MemberVar(v) -> 
            (* TO DO: make sure that the type actually exists and variable?? *)
            (match enc with 
              "permit" -> ((vars, v :: perm_vars), (meths, perm_meths))
              | _ -> ((v :: vars, perm_vars), (meths, perm_meths)))) check for valid class name (if class type) and duplicate and ladida *)
        
          
          (* maybe we allow for up to 3 encap blocks *)
          (* made one big function because we want to assign each encap into corresponding public, permit, and private *)
        (* in let check_encap_list (encaps : encap list) = 
          (* let invalid_encaps_error = "encapsulation is malformed"  *)
            (* if (List.length encaps > 3) then raise (Failure invalid_encaps_error) 
            else                                    TODO: check for dup labels ??? *)
          let first = List.nth encaps 0 in
            (fst first, List.map check_member (snd first)) :: [] eventually need to loop over encaps and check their mems *)
              
      (* in let check_class (cls : class_decl) =  *)
        
          in let (vars, meths) = List.fold_left check_encap ([], []) cls.mems
        in (* TODO: check permitted list for valid names, *) 
            let curr_meths = (if (curr_class <> "Object") then
            let sp_class = List.find (fun p_class -> p_class.sclass_name = parent_class) scls_accum 
            in 
              sort_fcns meths sp_class.smeths 
            else meths)
            in let curr_vars = (if (curr_class <> "Object") then
              let sp_class = List.find (fun p_class -> p_class.sclass_name = parent_class) scls_accum 
              in 
                sp_class.svars @ (List.rev vars)
              else (List.rev vars))
      in
          { sclass_name = cls.class_name;
            sparent_name = cls.parent_name;
            spermitted = cls.permitted;
            svars = curr_vars;
            smeths = curr_meths
            (* List.find (fun func1 -> func1.sfname = p.sfname)  *)
          } :: scls_accum
    in List.fold_left check_class [] cdecls

    (* type sclass_decl = {
  sclass_name : string;
  sparent_name : string;
  spermitted: string list;
  svars: bind list;
  spermittedvars: bind list;
  smeths: string * sfunc_decl list;  (* change to a tuple of (origin class, sfun_decl) *)
  spermittedmeths: string * sfunc_decl list;
  (* smems: sencap list; *)
} *)
     
  (* semantically check all, then make sure main exists *)
  in let sclasses = build_sast classes

  (* in let main_class = find_class "Main" sclasses *)

  (* in let sclasses = check_classes classes  *)
(*
  in let main_func (* maybe can be wildcard *) = 
            find_func ({univ = true; typ = Int; fname = "main"; formals = []; body = []; }) 
                      (snd (List.nth main_class.mems 0))    (* TODO: need to change bc this may not be public  *)
                                                          (maybe want to enforce ordering for encap to public, permit, private or smth) *)

    in let add_self (sclass : sclass_decl) = 
      let add_self_to_func (sfunc : sfunc_decl) = 
        { suniv = sfunc.suniv;
          styp = sfunc.styp;
          sfname = sfunc.sfname;
          sformals = (Object (sfunc.sorigin), "self") :: sfunc.sformals;
          sbody = sfunc.sbody;
          sorigin = sfunc.sorigin;
          sencap = sfunc.sencap
        }
      in 
        { sclass_name = sclass.sclass_name;
          sparent_name = sclass.sparent_name;
          spermitted = sclass.spermitted;
          svars = sclass.svars;
          smeths = List.map add_self_to_func sclass.smeths
        }
        
      
    in let classes_with_self = List.map add_self sclasses
  in List.rev classes_with_self

(* in List.fold_left [] (fun c -> sclass_decl { sclass_name : c.class_name; *)



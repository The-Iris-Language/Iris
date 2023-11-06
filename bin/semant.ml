(* Semantic checking for the MicroC compiler *)

open Ast
open Sast

module StringMap = Map.Make(String)

(* Semantic checking of the AST. Returns an SAST if successful,
   throws an exception if something is wrong.

   Check each defined class *)

let check classes = (* semantically check all, then make sure main exists *)

  (* let olympus_print  = { univ = true;
                         typ = Void;
                         fname = "print";
                         formals = [(String, "out")];
                         locals = [];
                         body = []} 
  in let olympus_class = { class_name = "Olympus"; 
                           parent_name = "Object"; 
                           permitted = [];
                           mems = [("public", (MemberFun olympus_print)::[])] }
     (* start building our *)
  in let classes = olympus_class::classes in *)



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

  (* ______________________________________________________________________ *)



  (* helper functions !!!! WOOOOOO *)
  (* find_func: finds a function given a function declaration and list of functions *)
  let find_func (func : func_decl) (mems : member list) = 
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
      with Not_found -> raise (Failure func_not_found)

    in let get_func (func_name : string) (mems : member list) = 
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
  in let find_var ((bind_typ, bind_name) : bind) (mems : member list) = 
    let var_not_found = "var of name " ^ bind_name ^ " not found" in 
    let check_mems a_mem = 
      match a_mem with 
          MemberVar((a_bind_typ, a_bind_name)) -> 
              (a_bind_typ = bind_typ) 
            && (a_bind_name = bind_name) 
        | MemberFun(_) -> false
    in 
      try List.find check_mems mems
      with Not_found -> raise (Failure var_not_found)

    in let find_class class_name classes = 
      let class_not_found_err = "class " ^ class_name ^ " not found"
    in 
      try List.find (fun a_class -> (class_name = a_class.class_name)) classes 
      with Not_found -> raise (Failure class_not_found_err)


    


  (* build SAST. then if main() and Main exist: return SAST, else throw error *)
  in let check_classes classes = 

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

  let name_compare c1 c2 = compare c1.class_name c2.class_name in
  let check_dups checked a_class = 
    let dup_err = "duplicate class " ^ a_class.class_name
    in match checked with 
      (* No duplicate bindings *)
      (first_class :: _) when a_class.class_name = first_class.class_name -> 
             raise (Failure dup_err)
      | _ -> a_class :: checked
    in let dup_checked = List.fold_left check_dups [] (List.sort name_compare classes) in






  let build_sast (cdecls : class_decl list) =
    (* TODO
       BIG TODO DO NOT FORGET
       write check_func function that defines these within it! *)
    let rec check_expr (e : expr) = 
      let not_implemented_err = "WAAAAAAAAAAAAAHHHHHHHHHHHHHH" in
      match e with 
        StringLit s -> (String, SStringLit(s))
        
      | Call (class_string, function_string, (args : expr list)) -> 
        (* TODO CHANGEEEE check for instance vs class name *)
        let func_class = find_class class_string classes in
        let func = get_func function_string (snd (List.nth func_class.mems 0)) in
        let sxpr_list = List.map check_expr args in 
          (func.typ, SCall(class_string, function_string, sxpr_list))
      | _ -> raise (Failure not_implemented_err)
    
    in 

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

    let rec check_function (func : func_decl) =
      (* TODO:: FINISH THIS ~~~~~~ WAAHHHHH SADDDDD WE CRY BUT WE TIRED OOP
         THERE
         HAS
         TO
         BE
         ANOTHER
         WAYYYYYYYYYYYYYY

         hesgoingotsacrificehimself

         NOOOOO
         RON NOOOOOO
         
      *)
        
    in let rec check_stmt (s : stmt) = 
      match s with 
        Expr e -> SExpr (check_expr e)
      (* | If(p, b1, b2) -> SIf(check_bool_expr p, check_stmt b1, check_stmt b2)
      | For(e1, e2, e3, st) -> SFor(expr e1, check_bool_expr e2, expr e3, check_stmt st)
      | While(p, s) -> SWhile(check_bool_expr p, check_stmt s) *)
      | Return e -> let (t, e') = check_expr e in
        (* func is the argument of check_func (to be written) *)
        if t = func.typ then SReturn (t, e') 
        else raise (Failure ("return gives " ^ string_of_typ t ^ " expected " ^
		                         string_of_typ func.typ ^ " in " ^ string_of_expr e))
      | Block sl -> 
        let rec check_stmt_list = function
            [Return _ as s] -> [check_stmt s]
          | Return _ :: _   -> raise (Failure "nothing may follow a return")
          | Block sl :: ss  -> check_stmt_list (sl @ ss) (* Flatten blocks *)
          | s :: ss         -> check_stmt s :: check_stmt_list ss
          | []              -> []
        in SBlock(check_stmt_list sl)
      | _ -> raise (Failure not_implemented_err)
    
    in scdecls

  in sclasses = build_sast classes
  

  in let main_class = find_class "Main" sclasses


  in let sclasses = check_classes classes 

  in let main_func (* maybe can be wildcard *) = 
            find_func ({univ = true; typ = Int; fname = "main"; formals = []; body = []; }) 
                      (snd (List.nth main_class.mems 0))    (* TODO: need to change bc this may not be public 
                                                          (maybe want to enforce ordering for encap to public, permit, private or smth) *)
in List.rev sclasses

(* in List.fold_left [] (fun c -> sclass_decl { sclass_name : c.class_name; *)






  (* ______________________________________________________________________ *)





  (* Check if a certain kind of binding has void type or is a duplicate
     of another, previously checked binding *) 
  (* let check_binds (kind : string) (to_check : bind list) = 
    let name_compare (_, n1) (_, n2) = compare n1 n2 in
    let check_it checked binding = 
      let void_err = "illegal void " ^ kind ^ " " ^ snd binding
      and dup_err = "duplicate " ^ kind ^ " " ^ snd binding
      in match binding with
        (* No void bindings *)
        (Void, _) -> raise (Failure void_err)
      | (_, n1) -> match checked with
                    (* No duplicate bindings *)
                      ((_, n2) :: _) when n1 = n2 -> raise (Failure dup_err)
                    | _ -> binding :: checked

    in let _ = List.fold_left check_it [] (List.sort name_compare to_check) 
       in to_check
  in 

  (**** Checking Global Variables ****)

  let globals' = check_binds "global" globals in

  (**** Checking Functions ****)


  (* Collect function declarations for built-in functions: no bodies *)
  let built_in_decls = 
    let add_bind map (name, ty) = StringMap.add name {
      typ = Void; fname = name; 
      formals = [(ty, "x")];
      locals = []; body = [] } map
    in List.fold_left add_bind StringMap.empty [ ("print", Int);
			                         ("printb", Bool);
			                         ("printf", Float);
			                         ("printbig", Int) ]
  in

  (* Add function name to symbol table *)
  let add_func map fd = 
    let built_in_err = "function " ^ fd.fname ^ " may not be defined"
    and dup_err = "duplicate function " ^ fd.fname
    and make_err er = raise (Failure er)
    and n = fd.fname (* Name of the function *)
    in match fd with (* No duplicate functions or redefinitions of built-ins *)
         _ when StringMap.mem n built_in_decls -> make_err built_in_err
       | _ when StringMap.mem n map -> make_err dup_err  
       | _ ->  StringMap.add n fd map 
  in

  (* Collect all other function names into one symbol table *)
  let function_decls = List.fold_left add_func built_in_decls functions
  in
  
  (* Return a function from our symbol table *)
  let find_func s = 
    try StringMap.find s function_decls
    with Not_found -> raise (Failure ("unrecognized function " ^ s))
  in

  let _ = find_func "main" in (* Ensure "main" is defined *)

  let check_function func =
    (* Make sure no formals or locals are void or duplicates *)
    let formals' = check_binds "formal" func.formals in
    let locals' = check_binds "local" func.locals in

    (* Raise an exception if the given rvalue type cannot be assigned to
       the given lvalue type *)
    let check_assign lvaluet rvaluet err =
       if lvaluet = rvaluet then lvaluet else raise (Failure err)
    in   

    (* Build local symbol table of variables for this function *)
    let symbols = List.fold_left (fun m (ty, name) -> StringMap.add name ty m)
	                StringMap.empty (globals' @ formals' @ locals' )
    in

    (* Return a variable from our local symbol table *)
    let type_of_identifier s =
      try StringMap.find s symbols
      with Not_found -> raise (Failure ("undeclared identifier " ^ s))
    in


    (* Return a semantically-checked expression, i.e., with a type *)
    let rec expr = function
        Literal  l -> (Int, SLiteral l)
      | Fliteral l -> (Float, SFliteral l)
      | BoolLit l  -> (Bool, SBoolLit l)
      | StringLit l -> (String, SStringLit l)
      | Noexpr     -> (Void, SNoexpr)
      | Id s       -> (type_of_identifier s, SId s)
      | Assign(var, e) as ex -> 
          let lt = type_of_identifier var
          and (rt, e') = expr e in
          let err = "illegal assignment " ^ string_of_typ lt ^ " = " ^ 
            string_of_typ rt ^ " in " ^ string_of_expr ex
          in (check_assign lt rt err, SAssign(var, (rt, e')))
      | Unop(op, e) as ex -> 
          let (t, e') = expr e in
          let ty = match op with
            Neg when t = Int || t = Float -> t
          | Not when t = Bool -> Bool
          | _ -> raise (Failure ("illegal unary operator " ^ 
                                 string_of_uop op ^ string_of_typ t ^
                                 " in " ^ string_of_expr ex))
          in (ty, SUnop(op, (t, e')))
      | Binop(e1, op, e2) as e -> 
          let (t1, e1') = expr e1 
          and (t2, e2') = expr e2 in
          (* All binary operators require operands of the same type *)
          let same = t1 = t2 in
          (* Determine expression type based on operator and operand types *)
          let ty = match op with
            Add | Sub | Mult | Div when same && t1 = Int   -> Int
          | Add | Sub | Mult | Div when same && t1 = Float -> Float
          | Equal | Neq            when same               -> Bool
          | Less | Leq | Greater | Geq
                     when same && (t1 = Int || t1 = Float) -> Bool
          | And | Or when same && t1 = Bool -> Bool
          | _ -> raise (
	      Failure ("illegal binary operator " ^
                       string_of_typ t1 ^ " " ^ string_of_op op ^ " " ^
                       string_of_typ t2 ^ " in " ^ string_of_expr e))
          in (ty, SBinop((t1, e1'), op, (t2, e2')))
      | Call(fname, args) as call -> 
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
          in (fd.typ, SCall(fname, args'))
    in

    let check_bool_expr e = 
      let (t', e') = expr e
      and err = "expected Boolean expression in " ^ string_of_expr e
      in if t' != Bool then raise (Failure err) else (t', e') 
    in

    (* Return a semantically-checked statement i.e. containing sexprs *)
    let rec check_stmt = function
        Expr e -> SExpr (expr e)
      | If(p, b1, b2) -> SIf(check_bool_expr p, check_stmt b1, check_stmt b2)
      | For(e1, e2, e3, st) ->
	  SFor(expr e1, check_bool_expr e2, expr e3, check_stmt st)
      | While(p, s) -> SWhile(check_bool_expr p, check_stmt s)
      | Return e -> let (t, e') = expr e in
        if t = func.typ then SReturn (t, e') 
        else raise (
	  Failure ("return gives " ^ string_of_typ t ^ " expected " ^
		   string_of_typ func.typ ^ " in " ^ string_of_expr e))
	    
	    (* A block is correct if each statement is correct and nothing
	       follows any Return statement.  Nested blocks are flattened. *)
      | Block sl -> 
          let rec check_stmt_list = function
              [Return _ as s] -> [check_stmt s]
            | Return _ :: _   -> raise (Failure "nothing may follow a return")
            | Block sl :: ss  -> check_stmt_list (sl @ ss) (* Flatten blocks *)
            | s :: ss         -> check_stmt s :: check_stmt_list ss
            | []              -> []
          in SBlock(check_stmt_list sl)

    in (* body of check_function *)
    { styp = func.typ;
      sfname = func.fname;
      sformals = formals';
      slocals  = locals';
      sbody = match check_stmt (Block func.body) with
	SBlock(sl) -> sl
      | _ -> let err = "internal error: block didn't become a block?"
      in raise (Failure err)
    }
  in (globals', List.map check_function functions)
 *)

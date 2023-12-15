(* Semantically-checked Abstract Syntax Tree and functions for printing it *)
(* Ayda Aricanli, Trevor Sullivan, Valerie Zhang, Josh Kim, Tim Valk  *)

open Ast

type sexpr = typ * sx
and sx =
    SLiteral of int
  | SFliteral of string
  | SBoolLit of bool
  | SStringLit of string
  | SId of string
  | SBinop of sexpr * op * sexpr
  | SUnop of uop * sexpr
  | SDoubleOp of string * doubleop
  | SAssign of string * sexpr
  | SDeclAssign of typ * string * sexpr
  | SClassVarAssign of string * string * sexpr
  | SOpAssign of string * op_assign * sexpr
  | SCall of string * string * sexpr list (* TODO: finish *)
  | SClassVar of string * string
  | SNewObject of string
  | SNoexpr

type sstmt =
    SBlock of sstmt list
  | SExpr of sexpr
  | SReturn of sexpr
  | SIf of sexpr * sstmt * sstmt
  | SFor of sexpr * sexpr * sexpr * sstmt
  | SWhile of sexpr * sstmt
  | SLocal of bind

type sfunc_decl = {
    suniv     : bool;
    styp      : typ;
    sfname    : string;
    sformals  : bind list;
    sbody     : sstmt list;
    sorigin   : string;
    sencap    : string; 
  }

(* a member of a class is either a function or a variable *)
type smember = 
    SMemberVar of bind 
  | SMemberFun of sfunc_decl 
  
(* each encapsulation label (public, permit, private) has a list of members *)
type sencap = string * smember list

(* 
  class_name: name of the class
  parent_name: name of the parent class (defaults to Object)
  mems: list of encaps
  permitted: names of classes with access to permit members  
*)

type sclass_decl = {
  sclass_name : string;
  sparent_name : string;
  spermitted: string list;
  svars: bind list;
  smeths: sfunc_decl list;  (* change to a tuple of (origin class, sfun_decl) *)
}

type sprogram = sclass_decl list

(* Pretty-printing functions *)

let rec string_of_sexpr (t, e) =
  "(" ^ string_of_typ t ^ " : " ^ (match e with
    SLiteral(l) -> string_of_int l
  | SBoolLit(true) -> "true"
  | SBoolLit(false) -> "false"
  | SFliteral(l) -> l
  | SStringLit(l) -> l
  | SId(s) -> s
  | SBinop(e1, o, e2) ->
      string_of_sexpr e1 ^ " " ^ string_of_op o ^ " " ^ string_of_sexpr e2
  | SUnop(o, e) -> string_of_uop o ^ string_of_sexpr e
  | SAssign(v, e) -> v ^ " = " ^ string_of_sexpr e
  | SClassVarAssign(_, _, _) -> "unimplemented"
  | SCall(cname, fname, el) ->
      cname ^ "." ^ fname ^ "(" ^ String.concat ", " (List.map string_of_sexpr el) ^ ")"
  | SClassVar(_, _) -> "classvar"
  | SNewObject(n) -> "new " ^ n ^ "()"
  | SNoexpr -> ""		
  | _ -> "hi")	   ^ ")"  

let rec string_of_sstmt = function
    SBlock(stmts) ->
      "{\n" ^ String.concat "" (List.map string_of_sstmt stmts) ^ "}\n"
  | SExpr(expr) -> string_of_sexpr expr ^ ";\n";
  | SReturn(expr) -> "return " ^ string_of_sexpr expr ^ ";\n";
  | SIf(e, s, SBlock([])) ->
      "if (" ^ string_of_sexpr e ^ ")\n" ^ string_of_sstmt s
  | SIf(e, s1, s2) ->  "if (" ^ string_of_sexpr e ^ ")\n" ^
      string_of_sstmt s1 ^ "else\n" ^ string_of_sstmt s2
  | SFor(e1, e2, e3, s) ->
      "for (" ^ string_of_sexpr e1  ^ " ; " ^ string_of_sexpr e2 ^ " ; " ^
      string_of_sexpr e3  ^ ") " ^ string_of_sstmt s
  | SWhile(e, s) -> "while (" ^ string_of_sexpr e ^ ") " ^ string_of_sstmt s
  | SLocal(t, s) -> string_of_typ t ^ s

let string_of_suniv = function
    true  -> "univ " 
  | false -> ""

let string_of_sfdecl sfdecl =
  string_of_typ sfdecl.styp ^ " " ^ string_of_univ sfdecl.suniv ^ 
  sfdecl.sfname ^ "(" ^ String.concat ", " (List.map string_of_formal sfdecl.sformals) ^
  ") {\n" ^
  String.concat "" (List.map string_of_sstmt sfdecl.sbody) ^
  "}"



let rec string_of_svars = function
    []                  -> ""
  | bind :: rest -> "\n" ^ string_of_vdecl bind ^ string_of_svars rest
  

let rec string_of_sfuncs = function
    []                  -> ""
  | sfdecl :: rest -> "\n" ^ string_of_sfdecl sfdecl ^ string_of_sfuncs rest

let string_of_scdecl cdecl = 
  "class " ^ cdecl.sclass_name ^ " of " ^ cdecl.sparent_name ^
      " (" ^ String.concat ", " cdecl.spermitted ^ ")" ^
      " {\n" 


let string_of_sprogram classes =
  String.concat "\n" (List.map string_of_scdecl classes)


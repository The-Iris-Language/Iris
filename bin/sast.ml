(* Semantically-checked Abstract Syntax Tree and functions for printing it *)

open Ast

type sexpr = typ * sx
and sx =
    SLiteral of int
  | SFliteral of string
  | SBoolLit of bool
  | SStringLit of string
  (* | SCharList of string *)
  | SId of string
  | SBinop of sexpr * op * sexpr
  | SUnop of uop * sexpr
  (* | SDoubleOp of string * doubleop
  | SAssign of string * sexpr
  | SDeclAssign of typ * string * sexpr
  | SClassVarAssign of string * string * sexpr
  | SOpAssign of string * op_assign * sexpr *)
  | SCall of string * sexpr list
  (* |SClassVar of string * string *)
  | SNoexpr
(*
  type expr =
    Literal of int
  | Fliteral of string
  | BoolLit of bool
  | StringLit of string
  | CharLit of string 
  | Id of string
  | Binop of expr * op * expr 
  | Unop of uop * expr
  | DoubleOp of string * doubleop
  | Assign of string * expr
  | DeclAssign of typ * string * expr
  | ClassVarAssign of string * string * expr
  | OpAssign of string * op_assign * expr
  | Call of string * string * expr list
  | ClassVar of string * string
  | Noexpr
*)

type sstmt =
    SBlock of sstmt list
  | SExpr of sexpr
  | SReturn of sexpr
  | SIf of sexpr * sstmt * sstmt
  | SFor of sexpr * sexpr * sexpr * sstmt
  | SWhile of sexpr * sstmt

type sfunc_decl = {
    (* suniv : bool; *)
    styp : typ;
    sfname : string;
    sformals : bind list;
    slocals : bind list;
    sbody : sstmt list;
  }

(* a member of a class is either a function or a variable *)
(* type member =
    MemberVar of bind
  | MemberFun of func_decl  *)
  
(* each encapsulation label (public, permit, private) has a list of members *)
(* type encap = string * member list *)

(* 
  class_name: name of the class
  parent_name: name of the parent class (defaults to Object)
  mems: list of encaps
  permitted: names of classes with access to permit members  
*)
type sclass_decl = {
  class_name : string;
  parent_name : string;
  permitted: string list;
  mems: encap list;
}

type sprogram = sclass_decl list

(* Pretty-printing functions *)

let rec string_of_sexpr (t, e) =
  "(" ^ string_of_typ t ^ " : " ^ (match e with
    SLiteral(l) -> string_of_int l
  | SBoolLit(true) -> "true"
  | SBoolLit(false) -> "false"
  | SFliteral(l) -> l
  (* | SStringLit(l) -> l *)
  (*| SSCharList(l) -> l *)
  | SId(s) -> s
  | SBinop(e1, o, e2) ->
      string_of_sexpr e1 ^ " " ^ string_of_op o ^ " " ^ string_of_sexpr e2
  | SUnop(o, e) -> string_of_uop o ^ string_of_sexpr e
  | SAssign(v, e) -> v ^ " = " ^ string_of_sexpr e
  | SCall(f, el) ->
      f ^ "(" ^ String.concat ", " (List.map string_of_sexpr el) ^ ")"
  | SNoexpr -> ""
				  ) ^ ")"				     

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

let string_of_sfdecl fdecl =
  string_of_typ fdecl.styp ^ " " ^
  fdecl.sfname ^ "(" ^ String.concat ", " (List.map snd fdecl.sformals) ^
  ")\n{\n" ^
  String.concat "" (List.map string_of_vdecl fdecl.slocals) ^
  String.concat "" (List.map string_of_sstmt fdecl.sbody) ^
  "}\n"

let string_of_sprogram (vars, funcs) =
  String.concat "" (List.map string_of_vdecl vars) ^ "\n" ^
  String.concat "\n" (List.map string_of_sfdecl funcs)

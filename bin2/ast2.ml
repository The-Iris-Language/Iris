(* ast.ml for IRIS *)

type op = Add | Sub | Mult | Div | Equal | Neq | Less | Leq | Greater | Geq |
          And | Or  | Pleq | Meq | Teq   | Deq 

type uop = Neg | Not | PPlus | MMinus

type typ = Char | Int | Bool | Float | String | Void 


type classname = string     (* a class' defined name, e.g. Object or Dog*)
type instname = string      (* name of an INSTANCE of a class *)

type classtyp = Class of classname

type objenv = instname * classtyp list

type bind = typ * string

type expr =
    Literal of int
  | Fliteral of float
  | BoolLit of bool
  | StringLit of string
  | CharLit of string
  | Id of string
  | Binop of expr * op * expr
  | Unop of uop * expr
  | Assign of string * expr
  | InstCall of instname * string * expr list     (* Function call from Object Instance. can refer to self within a class *)
  | ClassCall of classname * string * expr list   (* Class Method Function call *)
  | Inst of classname * instname * classname * expr list (* Object inst (object type, varname, object constructor, parameters) *)
  | Noexpr

type stmt =
    Block of stmt list
  | Expr of expr
  | Return of expr
  | If of expr * stmt * stmt
  | For of expr * expr * expr * stmt
  | While of expr * stmt

type func_decl = {
  univ : bool;
  typ : typ;
  fname : string;
  formals : bind list;
  locals : bind list;
  body : stmt list;
}

type members = func_decl list

type class_decl = {
  cname : string;
  pname : string;
  pub_mems : members;
  per_mems : members;
  pri_mems : members;
  per_classes : string list;
}

type program = class_decl list

(* 
type expr =
  Binop of expr * operator * expr
  | Lit of int
  | Seq of expr * expr
  | Asn of string * expr
  | Var of string *)

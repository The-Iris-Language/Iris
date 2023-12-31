(* Iris Abstract Syntax Tree and functions for printing it *)
(* Ayda Aricanli, Trevor Sullivan, Valerie Zhang, Josh Kim, Tim Valk *)

type op = Add | Sub | Mult | Div | Equal | Neq | Less | Leq | Greater | Geq |
          And | Or  

(*   +=   -=   *=   /=   *)
type op_assign = Peq | Meq | Teq | Deq 

type uop = Neg | Not 

(*   ++   --   *)
type doubleop = PPlus | MMinus

type class_name = string
type instance_name = string

type typ = Int | Bool | Float | Void | Char | String | Object of class_name (* Class name *)

type expr =
    Literal of int
  | Fliteral of string (* change to float *)
  | BoolLit of bool
  | StringLit of string
  | Id of string
  | Binop of expr * op * expr 
  | Unop of uop * expr
  | DoubleOp of string * doubleop
  | Assign of string * expr
  | DeclAssign of typ * string * expr
  | ClassVarAssign of instance_name * string * expr (* string is variable name *)
  | OpAssign of string * op_assign * expr
  | Call of string * string * expr list 
  | ClassVar of string * string
  | NewObject of string
  | Noexpr

type bind = typ * string

type stmt =
    Block of stmt list
  | Expr of expr
  | Return of expr
  | If of expr * stmt * stmt
  | For of expr * expr * expr * stmt
  | While of expr * stmt
  | Local of bind

(* 
  univ: class method indicator
  typ: return type
  fname: function name
  fomals: args
  body: implementation of function
*)
type func_decl = {
    univ : bool; 
    typ : typ;
    fname : string;
    formals : bind list;
    body : stmt list;
  }

(* a member of a class is either a function or a variable *)
type member =
    MemberVar of bind
  | MemberFun of func_decl 
  
(* each encapsulation label (public, permit, private) has a list of members *)
type encap = string * member list

(* 
  class_name: name of the class
  parent_name: name of the parent class (defaults to Object)
  mems: list of encaps
  permitted: names of classes with access to permit members  
*)
type class_decl = {
  class_name : string;
  parent_name : string;
  permitted: string list;
  mems: encap list;
}

type program = class_decl list

 
(* Pretty-printing functions *)

let string_of_op = function
    Add -> "+"
  | Sub -> "-"
  | Mult -> "*"
  | Div -> "/"
  | Equal -> "=="
  | Neq -> "!="
  | Less -> "<"
  | Leq -> "<="
  | Greater -> ">"
  | Geq -> ">="
  | And -> "&&"
  | Or -> "||"

let string_of_opAssign = function
    Peq -> "+="
  | Meq -> "-="
  | Teq -> "*="
  | Deq -> "/="

let string_of_uop = function
    Neg -> "-"
  | Not -> "!"

let string_of_doubleop = function
    MMinus -> "--"
  | PPlus -> "++"

let string_of_typ = function
    Int -> "int"
  | Bool -> "bool"
  | Float -> "float"
  | Void -> "void"
  | Char -> "char"
  | String -> "string"
  | Object(o) -> o
  
let rec string_of_expr = function
    Literal(l) -> string_of_int l
  | Fliteral(l) -> l
  | BoolLit(true) -> "true"
  | BoolLit(false) -> "false"
  | StringLit(l) -> l
  | Id(s) -> s
  | Binop(e1, o, e2) ->
      string_of_expr e1 ^ " " ^ string_of_op o ^ " " ^ string_of_expr e2
  | Unop(o, e) -> string_of_uop o ^ string_of_expr e
  | Assign(v, e) -> v ^ " = " ^ string_of_expr e
  | DeclAssign(t, v, e) -> 
      string_of_typ t ^ " " ^ v ^ " = "^ string_of_expr e 
  | ClassVarAssign(c, v, e) -> 
      c ^ "." ^ v ^ " = "^ string_of_expr e 
  | OpAssign(s, o, e) -> s ^ " " ^ string_of_opAssign o ^ " " ^ string_of_expr e
  | ClassVar(c, v) -> c ^ "." ^ v
  | Call(c, f, el) ->
      c ^ "." ^ f ^ "(" ^ String.concat ", " (List.map string_of_expr el) ^ ")"
  | DoubleOp(_, _) -> "double op"(*string_of_expr v ^ string_of_doubleop o *)
  | NewObject(n) -> "new " ^ n ^ "()"
  | Noexpr -> ""

let rec string_of_stmt = function
    Block(stmts) ->
      "{\n" ^ String.concat "" (List.map string_of_stmt stmts) ^ "}\n"
  | Expr(expr) -> string_of_expr expr ^ ";\n";
  | Return(expr) -> "return " ^ string_of_expr expr ^ ";\n";
  | If(e, s, Block([])) -> "if (" ^ string_of_expr e ^ ")\n" ^ string_of_stmt s
  | If(e, s1, s2) ->  "if (" ^ string_of_expr e ^ ")\n" ^
      string_of_stmt s1 ^ "else\n" ^ string_of_stmt s2
  | For(e1, e2, e3, s) ->
       "for (" ^ string_of_expr e1  ^ "; " ^ string_of_expr e2 ^ "; " ^
      string_of_expr e3  ^ ") " ^ string_of_stmt s
  | While(e, s) -> "while (" ^ string_of_expr e ^ ") " ^ string_of_stmt s
  | Local(t, id) -> string_of_typ t ^ " " ^ id ^ ";\n"


let string_of_vdecl (t, id) = string_of_typ t ^ " " ^ id ^ ";"

let string_of_formal (t, id) = string_of_typ t ^ " " ^ id

let string_of_univ = function
    true  -> "univ " 
  | false -> ""

let string_of_fdecl fdecl =
  string_of_typ fdecl.typ ^ " " ^ string_of_univ fdecl.univ ^ 
  fdecl.fname ^ "(" ^ String.concat ", " (List.map string_of_formal fdecl.formals) ^
  ") {\n" ^
  String.concat "" (List.map string_of_stmt fdecl.body) ^
  "}"

let rec string_of_members = function
    []                        -> ""
  | (MemberVar(curr) :: rest) -> string_of_vdecl curr ^ "\n" ^ string_of_members rest
  | (MemberFun(curr) :: rest) -> string_of_fdecl curr ^ "\n" ^ string_of_members rest
 
  
let rec string_of_encaps = function
    []                  -> ""
  | (str, mems) :: rest -> str ^ "\n" ^ string_of_members mems ^ string_of_encaps rest
  

let string_of_cdecl cdecl =
  "class " ^ cdecl.class_name ^ " of " ^ cdecl.parent_name ^
        " (" ^ String.concat ", " cdecl.permitted ^ ")" ^
        " {\n" ^ 
       string_of_encaps cdecl.mems ^       
  "}\n"


let string_of_program classes =
  String.concat "\n" (List.map string_of_cdecl classes)

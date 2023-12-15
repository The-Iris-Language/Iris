
(* The type of tokens. *)

type token = 
  | WHILE
  | VOID
  | UNIV
  | TIMES
  | TEQ
  | STRINGLIT of (string)
  | STRING
  | SEMI
  | SELF
  | RPAREN
  | RETURN
  | RBRACK
  | RBRACE
  | PUBLIC
  | PRIVATE
  | PPLUS
  | PLUS
  | PERMIT
  | PEQ
  | OR
  | OF
  | NOT
  | NEW
  | NEQ
  | MMINUS
  | MINUS
  | MEQ
  | LT
  | LPAREN
  | LITERAL of (int)
  | LEQ
  | LBRACK
  | LBRACE
  | INT
  | IF
  | ID of (string)
  | GT
  | GEQ
  | FOR
  | FLOAT
  | FLIT of (string)
  | EQ
  | EOF
  | ELSE
  | DOT
  | DIVIDE
  | DEQ
  | COMMA
  | COLON
  | CLASS
  | BOOL
  | BLIT of (bool)
  | ASSIGN
  | AND

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val program: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.program)

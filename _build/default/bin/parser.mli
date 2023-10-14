
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
  | RPAREN
  | RETURN
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
  | NEQ
  | MMINUS
  | MINUS
  | MEQ
  | LT
  | LPAREN
  | LITERAL of (int)
  | LEQ
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
  | DIVIDE
  | DEQ
  | COMMA
  | COLON
  | CLASS
  | CHARLIT of (string)
  | CHAR
  | BOOL
  | BLIT of (bool)
  | ASSIGN
  | AND

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val program: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.program)

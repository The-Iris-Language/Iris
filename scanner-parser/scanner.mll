(* Starter code for scanner.mll from OCaml slides *)

{ open Parser }

rule tokenize = parse
  [' ' '\t' '\r' '\n'] { tokenize lexbuf }
| '+' { PLUS }
| '-' { MINUS }
| '*' { TIMES }
| '/' { DIVIDE }
| '=' { ASSIGNMENT }
| ',' { SEQUENCE }
| ['0'-'9']+ as lit { LITERAL(int_of_string lit) }
| ['a'-'z']+ as lit { VARIABLE(lit) }


| eof { EOF }

(* Ocamllex scanner for Iris *)

{ open Parser }

let digit = ['0' - '9']
let digits = digit+
(* Starter code for scanner.mll from OCaml slides *)

{ open Parser }

let digit = ['0' - '9']
let digits = digit+

rule tokenize = parse
  [' ' '\t' '\r' '\n'] { tokenize lexbuf }
| ".."                 { singleComment lexbuf }
| ".~*"                { multiComment lexbuf }
| '('                  { LPAREN }
| ')'                  { RPAREN }
| '{'                  { LBRACE }
| '}'                  { RBRACE }
| ':'                  { COLON }
| ';'                  { SEMI }
| ','                  { COMMA }
| '+'                  { PLUS }
| "++"                 { PLUSPLUS }
| '-'                  { MINUS }
| "--"                 { MINUSMINUS }
| '*'                  { TIMES }
| '/'                  { DIVIDE }
| '='                  { ASSIGN }
| "+="                 { PEQ }
| "-="                 { MEQ }
| "/="                 { DEQ }
| "*="                 { TEQ }
| "=="                 { EQ }
| "!="                 { NEQ }
| '<'                  { LT }
| "<="                 { LEQ }
| ">"                  { GT }
| ">="                 { GEQ }
| "&&"                 { AND }
| "and"                { AND }
| "||"                 { OR }
| "or"                 { OR }
| "!"                  { NOT }
| "if"                 { IF }
| "else"               { ELSE }
| "for"                { FOR }
| "while"              { WHILE }
| "return"             { RETURN }
| "class"              { CLASS }
| "new"                { NEW }
| "of"                 { OF }
| "public"             { PUBLIC }
| "permit"             { PERMIT }
| "private"            { PRIVATE }
| "univ"               { UNIV }
| "class"              { CLASS }
| "int"                { INT }
| "bool"               { BOOL }
| "char"               { CHAR }
| "float"              { FLOAT }
| "void"               { VOID }
| "string"             { STRING }
| "true"               { BLIT(true)  }
| "false"              { BLIT(false) }
| digits as lxm        { LITERAL(int_of_string lxm) }
| digits '.'  digits as lxm { FLIT(float_of_string lxm) }
| '\''['\\']?[' ' - '~' '\161' - '\255'] as lxm { LITERAL(lxm) } 
| ['a'-'z' 'A'-'Z']['a'-'z' 'A'-'Z' '0'-'9' '_']* as lxm { ID(lxm) }

(* | '"'  *)
| ['0'-'9']+ as lit    { LITERAL(int_of_string lit) }
| eof                  { EOF }
| _ as char { raise (Failure("illegal character " ^ Char.escaped char)) }

and multiComment = parse
  "*~." { token lexbuf }
| _     { multiComment lexbuf }

and singleComment = parse 
  "\n"  { token lexbuf }
| _     { singleComment lexbuf }

(* Ocamllex scanner for Iris *)

{ open Parser }


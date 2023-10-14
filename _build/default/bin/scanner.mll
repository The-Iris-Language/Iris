(* Ocamllex scanner for MicroC *)

{ open Parser }

let digit = ['0' - '9']
let digits = digit+
let char = ['\\']?[' ' - '~' '\161' - '\255']

rule token = parse
  [' ' '\t' '\r' '\n'] { token lexbuf } (* Whitespace *)
| ".."     { singleComment lexbuf }           (* Comments *)
| ".~*"    { multiComment lexbuf }           (* Comments *)
| '('      { LPAREN }
| ')'      { RPAREN }
| '{'      { LBRACE }
| '}'      { RBRACE }
| ';'      { SEMI }
| ','      { COMMA }
| '+'      { PLUS }
| '-'      { MINUS }
| '*'      { TIMES }
| '/'      { DIVIDE }
| "++"     { PPLUS }
| "--"     { MMINUS }
| '='      { ASSIGN }
| "+="     { PEQ }
| "-="     { MEQ }
| "*="     { TEQ }
| "/="     { DEQ }
| "=="     { EQ }
| "!="     { NEQ }
| '<'      { LT }
| "<="     { LEQ }
| ">"      { GT }
| ">="     { GEQ }
| "&&"     { AND }
| "||"     { OR }
| "!"      { NOT }
| "univ"   { UNIV } 
| "class"  { CLASS } 
| "if"     { IF }
| "else"   { ELSE }
| "for"    { FOR }
| "while"  { WHILE }
| "return" { RETURN }
| "int"    { INT }
| "bool"   { BOOL }
| "float"  { FLOAT }
| "void"   { VOID }
| "char"   { CHAR }
| "string" { STRING }
| "true"   { BLIT(true)  }
| "false"  { BLIT(false) }
| digits as lxm { LITERAL(int_of_string lxm) }
| digits '.'  digit* as lxm { FLIT(lxm) }
| ['a'-'z' 'A'-'Z']['a'-'z' 'A'-'Z' '0'-'9' '_']* as lxm { ID(lxm) }
| eof { EOF }
| ['\'']char['\''] as lxm { CHARLIT(lxm) } 
| ['\"']char*['\"'] as lxm { STRINGLIT(lxm) }
| _ as character { raise (Failure("illegal character " ^ Char.escaped character)) }

and multiComment = parse
  "*~." { token lexbuf }
| _    { multiComment lexbuf }

and singleComment = parse 
  "\n"  { token lexbuf }
| _     { singleComment lexbuf }

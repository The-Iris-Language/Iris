(* Ocamllex scanner for Iris *)
(* Written by Ayda Aricanli, Trevor Sullivan, Valerie Zhang, Josh Kim, Tim Valk *)

{ open Parser }

let digit = ['0' - '9']
let digits = digit+

let single_char = [' ' '!' '#'-'&' '('-'[' ']'-'~']
let double_char = ['\\']['\\' 't' 'r' 'n' 'b']

let single_apo = '\\' '''
let double_apo = '\\' '"'

let char = single_char | double_char | single_apo | '"'
let string_char = single_char | double_char | double_apo | '''

rule token = parse
  [' ' '\t' '\r' '\n'] { token lexbuf }     (* Whitespace *)
| ".."      { singleComment lexbuf }        (* Comments *)
| ".~*"     { multiComment lexbuf }         (* Comments *)
| '.'       { DOT }
| '('       { LPAREN }
| ')'       { RPAREN }
| '{'       { LBRACE }
| '}'       { RBRACE }
| '['       { LBRACK }
| ']'       { RBRACK }
| ';'       { SEMI }
| ':'       { COLON }
| ','       { COMMA }
| '+'       { PLUS }
| '-'       { MINUS }
| '*'       { TIMES }
| '/'       { DIVIDE }
| "++"      { PPLUS }
| "--"      { MMINUS }
| '='       { ASSIGN }
| "+="      { PEQ }
| "-="      { MEQ }
| "*="      { TEQ }
| "/="      { DEQ }
| "=="      { EQ }
| "!="      { NEQ }
| '<'       { LT }
| "<="      { LEQ }
| ">"       { GT }
| ">="      { GEQ }
| "&&"      { AND }
| "||"      { OR }
| "!"       { NOT }
| "univ"    { UNIV } 
| "class"   { CLASS } 
| "of"      { OF }
| "new"     { NEW }
| "public"  { PUBLIC }
| "permit"  { PERMIT }
| "private" { PRIVATE }
| "if"      { IF }
| "else"    { ELSE }
| "for"     { FOR }
| "while"   { WHILE }
| "return"  { RETURN }
| "int"     { INT }
| "bool"    { BOOL }
| "float"   { FLOAT }
| "void"    { VOID }
| "string"  { STRING }
| "true"    { BLIT(true)  }
| "false"   { BLIT(false) }
| "self"    { SELF }
| digits as lxm { LITERAL(int_of_string lxm) }
| digits '.'  digit* as lxm { FLIT(lxm) }
| ['a'-'z' 'A'-'Z']['a'-'z' 'A'-'Z' '0'-'9' '_']* as lxm { ID(lxm) }
| eof { EOF }
| ['\"']string_char*['\"'] as lxm { STRINGLIT(String.sub lxm 1 (String.length lxm - 2)) }
| _ as character { raise (Failure("illegal character " ^ Char.escaped character)) }

and multiComment = parse
  "*~." { token lexbuf }
| _    { multiComment lexbuf }

and singleComment = parse 
  "\n"  { token lexbuf }
| _     { singleComment lexbuf }
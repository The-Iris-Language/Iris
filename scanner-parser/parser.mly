/* Ocamlyacc parser for Iris */




/* Starter parser.mly code from the OCaml slides */

%{ open Ast %}

%token PLUS MINUS TIMES DIVIDE EOF SEQUENCE ASSIGNMENT
%token <int> LITERAL
%token <string> VARIABLE

%left SEQUENCE
%left ASSIGNMENT
%left PLUS MINUS
%left TIMES DIVIDE

%start full_expr
%type <Ast.expr> full_expr

%%

full_expr:
  expr EOF { $1 }

expr:
| expr SEQUENCE expr       { Seq($1, $3) }
| VARIABLE                 { Var($1) }
| VARIABLE ASSIGNMENT expr { Asn($1, $3) }
| expr PLUS   expr         { Binop($1, Add, $3) }
| expr MINUS  expr         { Binop($1, Sub, $3) }
| expr TIMES  expr         { Binop($1, Mul, $3) }
| expr DIVIDE expr         { Binop($1, Div, $3) }
| LITERAL                  { Lit($1) }
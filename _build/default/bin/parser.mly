/* Ocamlyacc parser for MicroC */

%{
open Ast
%}

%token SEMI LPAREN RPAREN LBRACE RBRACE COMMA PLUS MINUS TIMES DIVIDE ASSIGN PEQ MEQ TEQ DEQ
%token NOT EQ NEQ LT LEQ GT GEQ AND OR PPLUS MMINUS
%token RETURN IF ELSE FOR WHILE INT BOOL FLOAT VOID CHAR STRING UNIV 
%token <int> LITERAL
%token <bool> BLIT
%token <string> ID FLIT CHARLIT STRINGLIT 
%token EOF

%start program
%type <Ast.program> program

%nonassoc NOELSE 
%nonassoc ELSE 
%right ASSIGN PEQ MEQ TEQ DEQ
%right DASSIGN
%left OR
%left AND
%left EQ NEQ
%left LT GT LEQ GEQ
%left PLUS MINUS
%left TIMES DIVIDE
%right NOT



%%
/* NOTES
a *= 2 + 3
a *= 5

(a = a * 2) + 3
*/
program:
  decls EOF { $1 }

decls:
    /* nothing */ { [] }
  | decls fdecl { $2 :: $1 }

// decls:
//    /* nothing */ { ([], [])               } 
//  | decls vdecl { (($2 :: fst $1), snd $1) } 
//  | decls fdecl { (fst $1, ($2 :: snd $1)) }


fdecl:
   typ UNIV ID LPAREN formals_opt RPAREN LBRACE stmt_list RBRACE
     { { 
      univ = true;
      typ = $1;
      fname = $3;
      formals = List.rev $5;
      body = List.rev $8 } }
  | typ ID LPAREN formals_opt RPAREN LBRACE stmt_list RBRACE
     { { 
      univ = false;
      typ = $1;
      fname = $2;
      formals = List.rev $4;
      body = List.rev $7 } }

// TODO: why can't we do this?
// fdecl:
//     univ_opt typ ID LPAREN formals_opt RPAREN LBRACE vdecl_list stmt_list RBRACE 
//      { { 
//       univ = $1;   
//       typ = $2;
//       fname = $3;
//       formals = List.rev $5;
//       locals = List.rev $8;
//       body = List.rev $9 } }

// univ_opt:
//  /* nothing */   { false }
//  | UNIV          { true }

    
formals_opt:
    /* nothing */ { [] }
  | formal_list   { $1 }

formal_list:
    typ ID                   { [($1,$2)]     }
  | formal_list COMMA typ ID { ($3,$4) :: $1 }

typ:
    INT    { Int   }
  | BOOL   { Bool  }
  | FLOAT  { Float }
  | VOID   { Void  }
  | CHAR   { Char  } 
  | STRING { String } 
  
vdecl_list:
    /* nothing */    { [] }
  | vdecl_list vdecl { $2 :: $1 } 

vdecl:
   typ ID SEMI { ($1, $2) }
  /*| typ ID ASSIGN expr SEMI { ($1, $2) } (* vdecl: (Int, "z", 5) *)*/

stmt_list:
    /* nothing */  { [] }
  | stmt_list stmt { $2 :: $1 }

stmt:
    expr SEMI                               { Expr $1               }
  | RETURN expr_opt SEMI                    { Return $2             }
  | LBRACE stmt_list RBRACE                 { Block(List.rev $2)    }
  | IF LPAREN expr RPAREN stmt %prec NOELSE { If($3, $5, Block([])) }
  | IF LPAREN expr RPAREN stmt ELSE stmt    { If($3, $5, $7)        }
  | FOR LPAREN expr_opt SEMI expr SEMI expr_opt RPAREN stmt
                                            { For($3, $5, $7, $9)   }
  | WHILE LPAREN expr RPAREN stmt           { While($3, $5)         }
  | typ ID SEMI                             { Local($1, $2) } 

expr_opt:
    /* nothing */ { Noexpr }
  | expr          { $1 }

expr:
    LITERAL          { Literal($1)            }
  | FLIT	           { Fliteral($1)           }
  | BLIT             { BoolLit($1)            }
  | CHARLIT	         { CharLit($1)            } 
  | STRINGLIT        { StringLit($1)          }
  | ID               { Id($1)                 }
  | expr PLUS   expr { Binop($1, Add,   $3)   }
  | expr MINUS  expr { Binop($1, Sub,   $3)   }
  | expr TIMES  expr { Binop($1, Mult,  $3)   }
  | expr DIVIDE expr { Binop($1, Div,   $3)   }
  | expr EQ     expr { Binop($1, Equal, $3)   }
  | expr NEQ    expr { Binop($1, Neq,   $3)   }
  | expr LT     expr { Binop($1, Less,  $3)   }
  | expr LEQ    expr { Binop($1, Leq,   $3)   }
  | expr GT     expr { Binop($1, Greater, $3) }
  | expr GEQ    expr { Binop($1, Geq,   $3)   }
  | expr AND    expr { Binop($1, And,   $3)   }
  | expr OR     expr { Binop($1, Or,    $3)   }
  | MINUS expr %prec NOT { Unop(Neg, $2)      }
  | NOT expr         { Unop(Not, $2)          }
  | ID   PPLUS       { DoubleOp($1, PPlus)        }
  | ID   MMINUS      { DoubleOp($1, MMinus)      }
  | ID ASSIGN expr   { Assign($1, $3)         }
  | typ ID ASSIGN expr %prec DASSIGN { DeclAssign($1, $2, $4) }
  | ID   PEQ    expr { OpAssign($1, Peq, $3)   }
  | ID   MEQ    expr { OpAssign($1, Meq, $3)   }
  | ID   TEQ    expr { OpAssign($1, Teq, $3)   }
  | ID   DEQ    expr { OpAssign($1, Deq, $3)   }
  | ID LPAREN args_opt RPAREN { Call($1, $3)  }
  | LPAREN expr RPAREN { $2                   }

args_opt:
    /* nothing */ { [] }
  | args_list  { List.rev $1 }

args_list:
    expr                    { [$1] }
  | args_list COMMA expr { $3 :: $1 }

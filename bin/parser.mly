/* Ocamlyacc parser for Iris */
/*  Ayda Aricanli, Trevor Sullivan, Valerie Zhang, Josh Kim, Tim Valk */ 

%{
open Ast
%}

%token SEMI COLON DOT LPAREN RPAREN LBRACE RBRACE LBRACK RBRACK COMMA PLUS MINUS TIMES DIVIDE ASSIGN PEQ MEQ TEQ DEQ
%token NOT EQ NEQ LT LEQ GT GEQ AND OR PPLUS MMINUS
%token RETURN IF ELSE FOR WHILE INT BOOL FLOAT VOID CHAR STRING UNIV 
%token CLASS PUBLIC PERMIT PRIVATE OF NEW
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

program:
  class_decls_opt EOF { List.rev $1 }

class_decls_opt:
    /* nothing */ { [] }
  | class_decls_opt class_decl { $2 :: $1 }

class_decl: 

    CLASS ID of_opt LPAREN class_opt RPAREN LBRACE encap_opt_list RBRACE
    { {
      class_name      = $2;
      parent_name     = $3;
      permitted       = $5;
      mems            = List.rev $8;
    } }

of_opt: 
  /* nothing */ { "Object" }
  | OF ID       { $2 }

class_opt:
    /* nothing */ { [] }
  | class_list    { List.rev $1 }

class_list:
    ID                  { [$1] }
  | class_list COMMA ID { $3 :: $1 }

encap_opt_list:
  /* nothing */ { [] } 
  | encap_opt_list encap_opt { (fst $2, List.rev (snd $2)) :: $1 }

encap_opt:
    /* mem_decls_opt                 { ("", $1)  } */
  | PUBLIC COLON mem_decls_opt    { ("public:", $3)  }
  | PERMIT COLON mem_decls_opt    { ("permit:", $3)  }
  | PRIVATE COLON mem_decls_opt   { ("private:", $3) }

mem_decls_opt:
   /* nothing */ { [] } 
 | mem_decls_opt member { $2 :: $1 } 

member:
  | var_decl { MemberVar($1) }
  | fun_decl { MemberFun($1) }

fun_decl:
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


// TODO: why can't we do this? ask??
// fdecl:
//     univ_opt typ ID LPAREN formals_opt RPAREN LBRACE var_decl_list stmt_list RBRACE 
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
  | ID     { Object($1) }
  

/*
var_decls:
    /* nothing     { [] }
  | var_decls var_decl { $2 :: $1 } */

var_decl:
   typ ID SEMI { ($1, $2) }

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
  | typ ID SEMI                             { Local($1, $2)         }

 /* int y = 1; --> evaluates to 1 */ 
 /* int y; --> doesn't evaluate to anything */

expr_opt:
    /* nothing */ { Noexpr }    
  | expr          { $1 }    
    
expr:    
    LITERAL                           { Literal($1)                }
  | FLIT	                          { Fliteral($1)               }
  | BLIT                              { BoolLit($1)                }
  | CHARLIT	                          { CharLit($1)                } 
  | STRINGLIT                         { StringLit($1)              }
  | ID                                { Id($1)                     }
  | expr PLUS   expr                  { Binop($1, Add,   $3)       }
  | expr MINUS  expr                  { Binop($1, Sub,   $3)       }
  | expr TIMES  expr                  { Binop($1, Mult,  $3)       }
  | expr DIVIDE expr                  { Binop($1, Div,   $3)       }
  | expr EQ     expr                  { Binop($1, Equal, $3)       }
  | expr NEQ    expr                  { Binop($1, Neq,   $3)       }
  | expr LT     expr                  { Binop($1, Less,  $3)       }
  | expr LEQ    expr                  { Binop($1, Leq,   $3)       }
  | expr GT     expr                  { Binop($1, Greater, $3)     }
  | expr GEQ    expr                  { Binop($1, Geq,   $3)       }
  | expr AND    expr                  { Binop($1, And,   $3)       }
  | expr OR     expr                  { Binop($1, Or,    $3)       }
  | MINUS expr %prec NOT              { Unop(Neg, $2)              }
  | NOT expr                          { Unop(Not, $2)              }
  | ID   PPLUS                        { DoubleOp($1, PPlus)        }
  | ID   MMINUS                       { DoubleOp($1, MMinus)       }
  | ID   PEQ    expr                  { OpAssign($1, Peq, $3)      }
  | ID   MEQ    expr                  { OpAssign($1, Meq, $3)      }
  | ID   TEQ    expr                  { OpAssign($1, Teq, $3)      }
  | ID   DEQ    expr                  { OpAssign($1, Deq, $3)      }
  | ID ASSIGN   expr                  { Assign($1, $3)             }
  | typ ID ASSIGN expr %prec DASSIGN  { DeclAssign($1, $2, $4)     }
  | ID DOT ID ASSIGN expr             { ClassVarAssign($1, $3, $5) }
  | ID DOT ID                         { ClassVar($1, $3)           }
  | ID DOT ID LPAREN args_opt RPAREN  { Call($1, $3, $5)           }
  | ID LPAREN args_opt RPAREN         { Call("self", $1, $3)       } /* call on function within class */
  | NEW ID LPAREN args_opt RPAREN     { Call($2, $2, $4)           }
  | LBRACK args_opt RBRACK            { Call("List", "List", $2)   }
  | LPAREN expr RPAREN                { $2 }

args_opt:
    /* nothing */ { [] }
  | args_list     { List.rev $1 }

args_list:
    expr                    { [$1] }
  | args_list COMMA expr    { $3 :: $1 }



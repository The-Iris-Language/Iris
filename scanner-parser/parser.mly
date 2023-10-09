/* Ocamlyacc parser for Iris */





/* Starter parser.mly code from the OCaml slides */

%{ open Ast %}

%token SEMI LPAREN RPAREN LBRACE RBRACE COMMA PLUS MINUS TIMES DIVIDE ASSIGN
%token NOT EQ NEQ LT LEQ GT GEQ AND OR PEQ MEQ DEQ TEQ PLUSPLUS MINUSMINUS
%token RETURN IF ELSE FOR WHILE INT BOOL FLOAT VOID STRING
%token OF NEW PUBLIC PERMIT PRIVATE UNIV CLASS 
%token <int> LITERAL
%token <bool> BLIT
%token <float> FLIT
%token <string> VARIABLE 

%left PLUS MINUS
%left TIMES DIVIDE

%nonassoc NOELSE
%nonassoc ELSE
%right ASSIGN
%left OR
%left AND
%left EQ NEQ
%left LT GT LEQ GEQ
%left PLUS MINUS
%left TIMES DIVIDE
%right NOT

%start full_expr
%type <Ast.expr> full_expr

%%

full_expr:
  expr EOF { $1 }

expr:
  | LITERAL                   { Lit($1) }
  | BLIT                      { BoolList($1) }
  | FLIT                      { Fliteral($1) }
  | VARIABLE                  { Id($1) }
  | VARIABLE ASSIGN expr      { Assign($1, $3) }
  | expr PLUS   expr          { Binop($1, Add, $3) }
  | expr MINUS  expr          { Binop($1, Sub, $3) }
  | expr TIMES  expr          { Binop($1, Mul, $3) }
  | expr DIVIDE expr          { Binop($1, Div, $3) }
  | expr EQ     expr          { Binop($1, Equal, $3) }
  | expr NEQ    expr          { Binop($1, Neq,   $3) }
  | expr LT     expr          { Binop($1, Less,  $3) }
  | expr LEQ    expr          { Binop($1, Leq,   $3) }
  | expr GT     expr          { Binop($1, Greater, $3) }
  | expr GEQ    expr          { Binop($1, Geq,   $3) }
  | expr AND    expr          { Binop($1, And,   $3) }
  | expr OR     expr          { Binop($1, Or,    $3) }
  | expr PEQ expr             { Binop($1, Pleq, $3) }
  | expr MEQ expr             { Binop($1, Meq, $3) }
  | expr TEQ expr             { Binop($1, Teq, $3) }
  | expr DEQ expr             { Binop($1, Deq, $3) }
  | MINUS expr                { Unop(Neg, $2) }
  | NOT expr                  { Unop(Not, $2) }
  | VARIABLE PLUSPLUS         { Unop(PPlus, $1) }
  | VARIABLE MINUSMINUS       { Unop(MMinus, $1) }

expr_opt:
  /* nothing */  { Noexpr }
  | expr         { $1 }
  
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

fdecl:
   univ_opt typ ID LPAREN formals_opt RPAREN LBRACE vdecl_list stmt_list RBRACE
     { { typ = $1;
	 fname = $2;
	 formals = List.rev $4;
	 locals = List.rev $7;
	 body = List.rev $8 } }

univ_opt:
    /* nothing */ { true }
  | UNIV   { false }

formals_opt:
    /* nothing */ { [] }
  | formals_list   { List.rev $1 }

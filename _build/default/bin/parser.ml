
module MenhirBasics = struct
  
  exception Error
  
  let _eRR =
    fun _s ->
      raise Error
  
  type token = 
    | WHILE
    | VOID
    | UNIV
    | TIMES
    | TEQ
    | STRINGLIT of (
# 12 "bin/parser.mly"
       (string)
# 20 "bin/parser.ml"
  )
    | STRING
    | SEMI
    | RPAREN
    | RETURN
    | RBRACE
    | PPLUS
    | PLUS
    | PEQ
    | OR
    | NOT
    | NEQ
    | MMINUS
    | MINUS
    | MEQ
    | LT
    | LPAREN
    | LITERAL of (
# 10 "bin/parser.mly"
       (int)
# 41 "bin/parser.ml"
  )
    | LEQ
    | LBRACE
    | INT
    | IF
    | ID of (
# 12 "bin/parser.mly"
       (string)
# 50 "bin/parser.ml"
  )
    | GT
    | GEQ
    | FOR
    | FLOAT
    | FLIT of (
# 12 "bin/parser.mly"
       (string)
# 59 "bin/parser.ml"
  )
    | EQ
    | EOF
    | ELSE
    | DIVIDE
    | DEQ
    | COMMA
    | CHARLIT of (
# 12 "bin/parser.mly"
       (string)
# 70 "bin/parser.ml"
  )
    | CHAR
    | BOOL
    | BLIT of (
# 11 "bin/parser.mly"
       (bool)
# 77 "bin/parser.ml"
  )
    | ASSIGN
    | AND
  
end

include MenhirBasics

# 3 "bin/parser.mly"
  
open Ast

# 90 "bin/parser.ml"

type ('s, 'r) _menhir_state = 
  | MenhirState002 : ('s _menhir_cell0_decls, _menhir_box_program) _menhir_state
    (** State 002.
        Stack shape : decls.
        Start symbol: program. *)

  | MenhirState013 : (('s _menhir_cell0_decls, _menhir_box_program) _menhir_cell1_typ _menhir_cell0_ID, _menhir_box_program) _menhir_state
    (** State 013.
        Stack shape : decls typ ID.
        Start symbol: program. *)

  | MenhirState018 : ((('s _menhir_cell0_decls, _menhir_box_program) _menhir_cell1_typ _menhir_cell0_ID, _menhir_box_program) _menhir_cell1_formals_opt, _menhir_box_program) _menhir_state
    (** State 018.
        Stack shape : decls typ ID formals_opt.
        Start symbol: program. *)

  | MenhirState019 : (((('s _menhir_cell0_decls, _menhir_box_program) _menhir_cell1_typ _menhir_cell0_ID, _menhir_box_program) _menhir_cell1_formals_opt, _menhir_box_program) _menhir_cell1_stmt_list, _menhir_box_program) _menhir_state
    (** State 019.
        Stack shape : decls typ ID formals_opt stmt_list.
        Start symbol: program. *)

  | MenhirState021 : (('s, _menhir_box_program) _menhir_cell1_WHILE, _menhir_box_program) _menhir_state
    (** State 021.
        Stack shape : WHILE.
        Start symbol: program. *)

  | MenhirState023 : (('s, _menhir_box_program) _menhir_cell1_NOT, _menhir_box_program) _menhir_state
    (** State 023.
        Stack shape : NOT.
        Start symbol: program. *)

  | MenhirState024 : (('s, _menhir_box_program) _menhir_cell1_MINUS, _menhir_box_program) _menhir_state
    (** State 024.
        Stack shape : MINUS.
        Start symbol: program. *)

  | MenhirState025 : (('s, _menhir_box_program) _menhir_cell1_LPAREN, _menhir_box_program) _menhir_state
    (** State 025.
        Stack shape : LPAREN.
        Start symbol: program. *)

  | MenhirState028 : (('s, _menhir_box_program) _menhir_cell1_ID, _menhir_box_program) _menhir_state
    (** State 028.
        Stack shape : ID.
        Start symbol: program. *)

  | MenhirState034 : (('s, _menhir_box_program) _menhir_cell1_typ _menhir_cell0_ID, _menhir_box_program) _menhir_state
    (** State 034.
        Stack shape : typ ID.
        Start symbol: program. *)

  | MenhirState036 : (('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 036.
        Stack shape : expr.
        Start symbol: program. *)

  | MenhirState038 : (('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 038.
        Stack shape : expr.
        Start symbol: program. *)

  | MenhirState040 : (('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 040.
        Stack shape : expr.
        Start symbol: program. *)

  | MenhirState042 : (('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 042.
        Stack shape : expr.
        Start symbol: program. *)

  | MenhirState044 : (('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 044.
        Stack shape : expr.
        Start symbol: program. *)

  | MenhirState046 : (('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 046.
        Stack shape : expr.
        Start symbol: program. *)

  | MenhirState048 : (('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 048.
        Stack shape : expr.
        Start symbol: program. *)

  | MenhirState050 : (('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 050.
        Stack shape : expr.
        Start symbol: program. *)

  | MenhirState052 : (('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 052.
        Stack shape : expr.
        Start symbol: program. *)

  | MenhirState054 : (('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 054.
        Stack shape : expr.
        Start symbol: program. *)

  | MenhirState056 : (('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 056.
        Stack shape : expr.
        Start symbol: program. *)

  | MenhirState058 : (('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 058.
        Stack shape : expr.
        Start symbol: program. *)

  | MenhirState062 : (('s, _menhir_box_program) _menhir_cell1_ID, _menhir_box_program) _menhir_state
    (** State 062.
        Stack shape : ID.
        Start symbol: program. *)

  | MenhirState065 : (('s, _menhir_box_program) _menhir_cell1_ID, _menhir_box_program) _menhir_state
    (** State 065.
        Stack shape : ID.
        Start symbol: program. *)

  | MenhirState067 : (('s, _menhir_box_program) _menhir_cell1_ID, _menhir_box_program) _menhir_state
    (** State 067.
        Stack shape : ID.
        Start symbol: program. *)

  | MenhirState072 : ((('s, _menhir_box_program) _menhir_cell1_ID, _menhir_box_program) _menhir_cell1_args_list, _menhir_box_program) _menhir_state
    (** State 072.
        Stack shape : ID args_list.
        Start symbol: program. *)

  | MenhirState074 : (('s, _menhir_box_program) _menhir_cell1_ID, _menhir_box_program) _menhir_state
    (** State 074.
        Stack shape : ID.
        Start symbol: program. *)

  | MenhirState076 : (('s, _menhir_box_program) _menhir_cell1_ID, _menhir_box_program) _menhir_state
    (** State 076.
        Stack shape : ID.
        Start symbol: program. *)

  | MenhirState083 : ((('s, _menhir_box_program) _menhir_cell1_WHILE, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 083.
        Stack shape : WHILE expr.
        Start symbol: program. *)

  | MenhirState084 : (('s, _menhir_box_program) _menhir_cell1_RETURN, _menhir_box_program) _menhir_state
    (** State 084.
        Stack shape : RETURN.
        Start symbol: program. *)

  | MenhirState088 : (('s, _menhir_box_program) _menhir_cell1_LBRACE, _menhir_box_program) _menhir_state
    (** State 088.
        Stack shape : LBRACE.
        Start symbol: program. *)

  | MenhirState089 : ((('s, _menhir_box_program) _menhir_cell1_LBRACE, _menhir_box_program) _menhir_cell1_stmt_list, _menhir_box_program) _menhir_state
    (** State 089.
        Stack shape : LBRACE stmt_list.
        Start symbol: program. *)

  | MenhirState092 : (('s, _menhir_box_program) _menhir_cell1_IF, _menhir_box_program) _menhir_state
    (** State 092.
        Stack shape : IF.
        Start symbol: program. *)

  | MenhirState094 : ((('s, _menhir_box_program) _menhir_cell1_IF, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 094.
        Stack shape : IF expr.
        Start symbol: program. *)

  | MenhirState096 : (('s, _menhir_box_program) _menhir_cell1_FOR, _menhir_box_program) _menhir_state
    (** State 096.
        Stack shape : FOR.
        Start symbol: program. *)

  | MenhirState098 : ((('s, _menhir_box_program) _menhir_cell1_FOR, _menhir_box_program) _menhir_cell1_expr_opt, _menhir_box_program) _menhir_state
    (** State 098.
        Stack shape : FOR expr_opt.
        Start symbol: program. *)

  | MenhirState100 : (((('s, _menhir_box_program) _menhir_cell1_FOR, _menhir_box_program) _menhir_cell1_expr_opt, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 100.
        Stack shape : FOR expr_opt expr.
        Start symbol: program. *)

  | MenhirState102 : ((((('s, _menhir_box_program) _menhir_cell1_FOR, _menhir_box_program) _menhir_cell1_expr_opt, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_expr_opt, _menhir_box_program) _menhir_state
    (** State 102.
        Stack shape : FOR expr_opt expr expr_opt.
        Start symbol: program. *)

  | MenhirState110 : (((('s, _menhir_box_program) _menhir_cell1_IF, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_stmt, _menhir_box_program) _menhir_state
    (** State 110.
        Stack shape : IF expr stmt.
        Start symbol: program. *)

  | MenhirState116 : (('s _menhir_cell0_ID, _menhir_box_program) _menhir_cell1_formal_list, _menhir_box_program) _menhir_state
    (** State 116.
        Stack shape : ID formal_list.
        Start symbol: program. *)

  | MenhirState120 : (('s _menhir_cell0_decls, _menhir_box_program) _menhir_cell1_typ _menhir_cell0_ID, _menhir_box_program) _menhir_state
    (** State 120.
        Stack shape : decls typ ID.
        Start symbol: program. *)

  | MenhirState123 : ((('s _menhir_cell0_decls, _menhir_box_program) _menhir_cell1_typ _menhir_cell0_ID, _menhir_box_program) _menhir_cell1_formals_opt, _menhir_box_program) _menhir_state
    (** State 123.
        Stack shape : decls typ ID formals_opt.
        Start symbol: program. *)

  | MenhirState124 : (((('s _menhir_cell0_decls, _menhir_box_program) _menhir_cell1_typ _menhir_cell0_ID, _menhir_box_program) _menhir_cell1_formals_opt, _menhir_box_program) _menhir_cell1_stmt_list, _menhir_box_program) _menhir_state
    (** State 124.
        Stack shape : decls typ ID formals_opt stmt_list.
        Start symbol: program. *)


and ('s, 'r) _menhir_cell1_args_list = 
  | MenhirCell1_args_list of 's * ('s, 'r) _menhir_state * (Ast.expr list)

and 's _menhir_cell0_decls = 
  | MenhirCell0_decls of 's * (Ast.program)

and ('s, 'r) _menhir_cell1_expr = 
  | MenhirCell1_expr of 's * ('s, 'r) _menhir_state * (Ast.expr)

and ('s, 'r) _menhir_cell1_expr_opt = 
  | MenhirCell1_expr_opt of 's * ('s, 'r) _menhir_state * (Ast.expr)

and ('s, 'r) _menhir_cell1_formal_list = 
  | MenhirCell1_formal_list of 's * ('s, 'r) _menhir_state * (Ast.bind list)

and ('s, 'r) _menhir_cell1_formals_opt = 
  | MenhirCell1_formals_opt of 's * ('s, 'r) _menhir_state * (Ast.bind list)

and ('s, 'r) _menhir_cell1_stmt = 
  | MenhirCell1_stmt of 's * ('s, 'r) _menhir_state * (Ast.stmt)

and ('s, 'r) _menhir_cell1_stmt_list = 
  | MenhirCell1_stmt_list of 's * ('s, 'r) _menhir_state * (Ast.stmt list)

and ('s, 'r) _menhir_cell1_typ = 
  | MenhirCell1_typ of 's * ('s, 'r) _menhir_state * (Ast.typ)

and ('s, 'r) _menhir_cell1_FOR = 
  | MenhirCell1_FOR of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_ID = 
  | MenhirCell1_ID of 's * ('s, 'r) _menhir_state * (
# 12 "bin/parser.mly"
       (string)
# 343 "bin/parser.ml"
)

and 's _menhir_cell0_ID = 
  | MenhirCell0_ID of 's * (
# 12 "bin/parser.mly"
       (string)
# 350 "bin/parser.ml"
)

and ('s, 'r) _menhir_cell1_IF = 
  | MenhirCell1_IF of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_LBRACE = 
  | MenhirCell1_LBRACE of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_LPAREN = 
  | MenhirCell1_LPAREN of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_MINUS = 
  | MenhirCell1_MINUS of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_NOT = 
  | MenhirCell1_NOT of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_RETURN = 
  | MenhirCell1_RETURN of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_WHILE = 
  | MenhirCell1_WHILE of 's * ('s, 'r) _menhir_state

and _menhir_box_program = 
  | MenhirBox_program of (Ast.program) [@@unboxed]

let _menhir_action_01 =
  fun _1 ->
    (
# 164 "bin/parser.mly"
                            ( [_1] )
# 382 "bin/parser.ml"
     : (Ast.expr list))

let _menhir_action_02 =
  fun _1 _3 ->
    (
# 165 "bin/parser.mly"
                         ( _3 :: _1 )
# 390 "bin/parser.ml"
     : (Ast.expr list))

let _menhir_action_03 =
  fun () ->
    (
# 160 "bin/parser.mly"
                  ( [] )
# 398 "bin/parser.ml"
     : (Ast.expr list))

let _menhir_action_04 =
  fun _1 ->
    (
# 161 "bin/parser.mly"
               ( List.rev _1 )
# 406 "bin/parser.ml"
     : (Ast.expr list))

let _menhir_action_05 =
  fun () ->
    (
# 43 "bin/parser.mly"
                  ( [] )
# 414 "bin/parser.ml"
     : (Ast.program))

let _menhir_action_06 =
  fun _1 _2 ->
    (
# 44 "bin/parser.mly"
                ( _2 :: _1 )
# 422 "bin/parser.ml"
     : (Ast.program))

let _menhir_action_07 =
  fun _1 ->
    (
# 128 "bin/parser.mly"
                     ( Literal(_1)            )
# 430 "bin/parser.ml"
     : (Ast.expr))

let _menhir_action_08 =
  fun _1 ->
    (
# 129 "bin/parser.mly"
                    ( Fliteral(_1)           )
# 438 "bin/parser.ml"
     : (Ast.expr))

let _menhir_action_09 =
  fun _1 ->
    (
# 130 "bin/parser.mly"
                     ( BoolLit(_1)            )
# 446 "bin/parser.ml"
     : (Ast.expr))

let _menhir_action_10 =
  fun _1 ->
    (
# 131 "bin/parser.mly"
                     ( CharLit(_1)            )
# 454 "bin/parser.ml"
     : (Ast.expr))

let _menhir_action_11 =
  fun _1 ->
    (
# 132 "bin/parser.mly"
                     ( StringLit(_1)          )
# 462 "bin/parser.ml"
     : (Ast.expr))

let _menhir_action_12 =
  fun _1 ->
    (
# 133 "bin/parser.mly"
                     ( Id(_1)                 )
# 470 "bin/parser.ml"
     : (Ast.expr))

let _menhir_action_13 =
  fun _1 _3 ->
    (
# 134 "bin/parser.mly"
                     ( Binop(_1, Add,   _3)   )
# 478 "bin/parser.ml"
     : (Ast.expr))

let _menhir_action_14 =
  fun _1 _3 ->
    (
# 135 "bin/parser.mly"
                     ( Binop(_1, Sub,   _3)   )
# 486 "bin/parser.ml"
     : (Ast.expr))

let _menhir_action_15 =
  fun _1 _3 ->
    (
# 136 "bin/parser.mly"
                     ( Binop(_1, Mult,  _3)   )
# 494 "bin/parser.ml"
     : (Ast.expr))

let _menhir_action_16 =
  fun _1 _3 ->
    (
# 137 "bin/parser.mly"
                     ( Binop(_1, Div,   _3)   )
# 502 "bin/parser.ml"
     : (Ast.expr))

let _menhir_action_17 =
  fun _1 _3 ->
    (
# 138 "bin/parser.mly"
                     ( Binop(_1, Equal, _3)   )
# 510 "bin/parser.ml"
     : (Ast.expr))

let _menhir_action_18 =
  fun _1 _3 ->
    (
# 139 "bin/parser.mly"
                     ( Binop(_1, Neq,   _3)   )
# 518 "bin/parser.ml"
     : (Ast.expr))

let _menhir_action_19 =
  fun _1 _3 ->
    (
# 140 "bin/parser.mly"
                     ( Binop(_1, Less,  _3)   )
# 526 "bin/parser.ml"
     : (Ast.expr))

let _menhir_action_20 =
  fun _1 _3 ->
    (
# 141 "bin/parser.mly"
                     ( Binop(_1, Leq,   _3)   )
# 534 "bin/parser.ml"
     : (Ast.expr))

let _menhir_action_21 =
  fun _1 _3 ->
    (
# 142 "bin/parser.mly"
                     ( Binop(_1, Greater, _3) )
# 542 "bin/parser.ml"
     : (Ast.expr))

let _menhir_action_22 =
  fun _1 _3 ->
    (
# 143 "bin/parser.mly"
                     ( Binop(_1, Geq,   _3)   )
# 550 "bin/parser.ml"
     : (Ast.expr))

let _menhir_action_23 =
  fun _1 _3 ->
    (
# 144 "bin/parser.mly"
                     ( Binop(_1, And,   _3)   )
# 558 "bin/parser.ml"
     : (Ast.expr))

let _menhir_action_24 =
  fun _1 _3 ->
    (
# 145 "bin/parser.mly"
                     ( Binop(_1, Or,    _3)   )
# 566 "bin/parser.ml"
     : (Ast.expr))

let _menhir_action_25 =
  fun _2 ->
    (
# 146 "bin/parser.mly"
                         ( Unop(Neg, _2)      )
# 574 "bin/parser.ml"
     : (Ast.expr))

let _menhir_action_26 =
  fun _2 ->
    (
# 147 "bin/parser.mly"
                     ( Unop(Not, _2)          )
# 582 "bin/parser.ml"
     : (Ast.expr))

let _menhir_action_27 =
  fun _1 ->
    (
# 148 "bin/parser.mly"
                     ( DoubleOp(_1, PPlus)        )
# 590 "bin/parser.ml"
     : (Ast.expr))

let _menhir_action_28 =
  fun _1 ->
    (
# 149 "bin/parser.mly"
                     ( DoubleOp(_1, MMinus)      )
# 598 "bin/parser.ml"
     : (Ast.expr))

let _menhir_action_29 =
  fun _1 _3 ->
    (
# 150 "bin/parser.mly"
                     ( Assign(_1, _3)         )
# 606 "bin/parser.ml"
     : (Ast.expr))

let _menhir_action_30 =
  fun _1 _2 _4 ->
    (
# 151 "bin/parser.mly"
                                     ( DeclAssign(_1, _2, _4) )
# 614 "bin/parser.ml"
     : (Ast.expr))

let _menhir_action_31 =
  fun _1 _3 ->
    (
# 152 "bin/parser.mly"
                     ( OpAssign(_1, Peq, _3)   )
# 622 "bin/parser.ml"
     : (Ast.expr))

let _menhir_action_32 =
  fun _1 _3 ->
    (
# 153 "bin/parser.mly"
                     ( OpAssign(_1, Meq, _3)   )
# 630 "bin/parser.ml"
     : (Ast.expr))

let _menhir_action_33 =
  fun _1 _3 ->
    (
# 154 "bin/parser.mly"
                     ( OpAssign(_1, Teq, _3)   )
# 638 "bin/parser.ml"
     : (Ast.expr))

let _menhir_action_34 =
  fun _1 _3 ->
    (
# 155 "bin/parser.mly"
                     ( OpAssign(_1, Deq, _3)   )
# 646 "bin/parser.ml"
     : (Ast.expr))

let _menhir_action_35 =
  fun _1 _3 ->
    (
# 156 "bin/parser.mly"
                              ( Call(_1, _3)  )
# 654 "bin/parser.ml"
     : (Ast.expr))

let _menhir_action_36 =
  fun _2 ->
    (
# 157 "bin/parser.mly"
                       ( _2                   )
# 662 "bin/parser.ml"
     : (Ast.expr))

let _menhir_action_37 =
  fun () ->
    (
# 124 "bin/parser.mly"
                  ( Noexpr )
# 670 "bin/parser.ml"
     : (Ast.expr))

let _menhir_action_38 =
  fun _1 ->
    (
# 125 "bin/parser.mly"
                  ( _1 )
# 678 "bin/parser.ml"
     : (Ast.expr))

let _menhir_action_39 =
  fun _1 _3 _5 _8 ->
    (
# 54 "bin/parser.mly"
     ( { 
      univ = true;
      typ = _1;
      fname = _3;
      formals = List.rev _5;
      body = List.rev _8 } )
# 691 "bin/parser.ml"
     : (Ast.func_decl))

let _menhir_action_40 =
  fun _1 _2 _4 _7 ->
    (
# 61 "bin/parser.mly"
     ( { 
      univ = false;
      typ = _1;
      fname = _2;
      formals = List.rev _4;
      body = List.rev _7 } )
# 704 "bin/parser.ml"
     : (Ast.func_decl))

let _menhir_action_41 =
  fun _1 _2 ->
    (
# 89 "bin/parser.mly"
                             ( [(_1,_2)]     )
# 712 "bin/parser.ml"
     : (Ast.bind list))

let _menhir_action_42 =
  fun _1 _3 _4 ->
    (
# 90 "bin/parser.mly"
                             ( (_3,_4) :: _1 )
# 720 "bin/parser.ml"
     : (Ast.bind list))

let _menhir_action_43 =
  fun () ->
    (
# 85 "bin/parser.mly"
                  ( [] )
# 728 "bin/parser.ml"
     : (Ast.bind list))

let _menhir_action_44 =
  fun _1 ->
    (
# 86 "bin/parser.mly"
                  ( _1 )
# 736 "bin/parser.ml"
     : (Ast.bind list))

let _menhir_action_45 =
  fun _1 ->
    (
# 40 "bin/parser.mly"
            ( _1 )
# 744 "bin/parser.ml"
     : (Ast.program))

let _menhir_action_46 =
  fun _1 ->
    (
# 113 "bin/parser.mly"
                                            ( Expr _1               )
# 752 "bin/parser.ml"
     : (Ast.stmt))

let _menhir_action_47 =
  fun _2 ->
    (
# 114 "bin/parser.mly"
                                            ( Return _2             )
# 760 "bin/parser.ml"
     : (Ast.stmt))

let _menhir_action_48 =
  fun _2 ->
    (
# 115 "bin/parser.mly"
                                            ( Block(List.rev _2)    )
# 768 "bin/parser.ml"
     : (Ast.stmt))

let _menhir_action_49 =
  fun _3 _5 ->
    (
# 116 "bin/parser.mly"
                                            ( If(_3, _5, Block([])) )
# 776 "bin/parser.ml"
     : (Ast.stmt))

let _menhir_action_50 =
  fun _3 _5 _7 ->
    (
# 117 "bin/parser.mly"
                                            ( If(_3, _5, _7)        )
# 784 "bin/parser.ml"
     : (Ast.stmt))

let _menhir_action_51 =
  fun _3 _5 _7 _9 ->
    (
# 119 "bin/parser.mly"
                                            ( For(_3, _5, _7, _9)   )
# 792 "bin/parser.ml"
     : (Ast.stmt))

let _menhir_action_52 =
  fun _3 _5 ->
    (
# 120 "bin/parser.mly"
                                            ( While(_3, _5)         )
# 800 "bin/parser.ml"
     : (Ast.stmt))

let _menhir_action_53 =
  fun _1 _2 ->
    (
# 121 "bin/parser.mly"
                                            ( Local(_1, _2) )
# 808 "bin/parser.ml"
     : (Ast.stmt))

let _menhir_action_54 =
  fun () ->
    (
# 109 "bin/parser.mly"
                   ( [] )
# 816 "bin/parser.ml"
     : (Ast.stmt list))

let _menhir_action_55 =
  fun _1 _2 ->
    (
# 110 "bin/parser.mly"
                   ( _2 :: _1 )
# 824 "bin/parser.ml"
     : (Ast.stmt list))

let _menhir_action_56 =
  fun () ->
    (
# 93 "bin/parser.mly"
           ( Int   )
# 832 "bin/parser.ml"
     : (Ast.typ))

let _menhir_action_57 =
  fun () ->
    (
# 94 "bin/parser.mly"
           ( Bool  )
# 840 "bin/parser.ml"
     : (Ast.typ))

let _menhir_action_58 =
  fun () ->
    (
# 95 "bin/parser.mly"
           ( Float )
# 848 "bin/parser.ml"
     : (Ast.typ))

let _menhir_action_59 =
  fun () ->
    (
# 96 "bin/parser.mly"
           ( Void  )
# 856 "bin/parser.ml"
     : (Ast.typ))

let _menhir_action_60 =
  fun () ->
    (
# 97 "bin/parser.mly"
           ( Char  )
# 864 "bin/parser.ml"
     : (Ast.typ))

let _menhir_action_61 =
  fun () ->
    (
# 98 "bin/parser.mly"
           ( String )
# 872 "bin/parser.ml"
     : (Ast.typ))

let _menhir_print_token : token -> string =
  fun _tok ->
    match _tok with
    | AND ->
        "AND"
    | ASSIGN ->
        "ASSIGN"
    | BLIT _ ->
        "BLIT"
    | BOOL ->
        "BOOL"
    | CHAR ->
        "CHAR"
    | CHARLIT _ ->
        "CHARLIT"
    | COMMA ->
        "COMMA"
    | DEQ ->
        "DEQ"
    | DIVIDE ->
        "DIVIDE"
    | ELSE ->
        "ELSE"
    | EOF ->
        "EOF"
    | EQ ->
        "EQ"
    | FLIT _ ->
        "FLIT"
    | FLOAT ->
        "FLOAT"
    | FOR ->
        "FOR"
    | GEQ ->
        "GEQ"
    | GT ->
        "GT"
    | ID _ ->
        "ID"
    | IF ->
        "IF"
    | INT ->
        "INT"
    | LBRACE ->
        "LBRACE"
    | LEQ ->
        "LEQ"
    | LITERAL _ ->
        "LITERAL"
    | LPAREN ->
        "LPAREN"
    | LT ->
        "LT"
    | MEQ ->
        "MEQ"
    | MINUS ->
        "MINUS"
    | MMINUS ->
        "MMINUS"
    | NEQ ->
        "NEQ"
    | NOT ->
        "NOT"
    | OR ->
        "OR"
    | PEQ ->
        "PEQ"
    | PLUS ->
        "PLUS"
    | PPLUS ->
        "PPLUS"
    | RBRACE ->
        "RBRACE"
    | RETURN ->
        "RETURN"
    | RPAREN ->
        "RPAREN"
    | SEMI ->
        "SEMI"
    | STRING ->
        "STRING"
    | STRINGLIT _ ->
        "STRINGLIT"
    | TEQ ->
        "TEQ"
    | TIMES ->
        "TIMES"
    | UNIV ->
        "UNIV"
    | VOID ->
        "VOID"
    | WHILE ->
        "WHILE"

let _menhir_fail : unit -> 'a =
  fun () ->
    Printf.eprintf "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

include struct
  
  [@@@ocaml.warning "-4-37"]
  
  let rec _menhir_goto_decls : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | VOID ->
          let _menhir_stack = MenhirCell0_decls (_menhir_stack, _v) in
          _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState002
      | STRING ->
          let _menhir_stack = MenhirCell0_decls (_menhir_stack, _v) in
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState002
      | INT ->
          let _menhir_stack = MenhirCell0_decls (_menhir_stack, _v) in
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState002
      | FLOAT ->
          let _menhir_stack = MenhirCell0_decls (_menhir_stack, _v) in
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState002
      | EOF ->
          let _1 = _v in
          let _v = _menhir_action_45 _1 in
          MenhirBox_program _v
      | CHAR ->
          let _menhir_stack = MenhirCell0_decls (_menhir_stack, _v) in
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState002
      | BOOL ->
          let _menhir_stack = MenhirCell0_decls (_menhir_stack, _v) in
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState002
      | _ ->
          _eRR ()
  
  and _menhir_run_003 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_59 () in
      _menhir_goto_typ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_typ : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState116 ->
          _menhir_run_117 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState124 ->
          _menhir_run_103 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState019 ->
          _menhir_run_103 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState083 ->
          _menhir_run_103 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState089 ->
          _menhir_run_103 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState110 ->
          _menhir_run_103 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState094 ->
          _menhir_run_103 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState102 ->
          _menhir_run_103 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState100 ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState098 ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState096 ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState092 ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState084 ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState021 ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState023 ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState024 ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState025 ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState076 ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState074 ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState072 ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState067 ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState065 ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState062 ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState058 ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState056 ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState054 ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState052 ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState050 ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState048 ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState046 ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState044 ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState042 ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState040 ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState038 ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState036 ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState034 ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState028 ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState120 ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState013 ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState002 ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_117 : type  ttv_stack. (ttv_stack _menhir_cell0_ID, _menhir_box_program) _menhir_cell1_formal_list -> _ -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | ID _v_0 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_formal_list (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let (_4, _3) = (_v_0, _v) in
          let _v = _menhir_action_42 _1 _3 _4 in
          _menhir_goto_formal_list _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_formal_list : type  ttv_stack. (ttv_stack _menhir_cell0_ID as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | COMMA ->
          let _menhir_stack = MenhirCell1_formal_list (_menhir_stack, _menhir_s, _v) in
          let _menhir_s = MenhirState116 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | VOID ->
              _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | STRING ->
              _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | INT ->
              _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | FLOAT ->
              _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | CHAR ->
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BOOL ->
              _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | RPAREN ->
          let _1 = _v in
          let _v = _menhir_action_44 _1 in
          _menhir_goto_formals_opt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_004 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_61 () in
      _menhir_goto_typ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_005 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_56 () in
      _menhir_goto_typ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_006 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_58 () in
      _menhir_goto_typ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_008 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_60 () in
      _menhir_goto_typ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_009 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_57 () in
      _menhir_goto_typ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_formals_opt : type  ttv_stack. (ttv_stack _menhir_cell0_ID as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState120 ->
          _menhir_run_121 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | MenhirState013 ->
          _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_121 : type  ttv_stack. ((ttv_stack _menhir_cell0_decls, _menhir_box_program) _menhir_cell1_typ _menhir_cell0_ID as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_formals_opt (_menhir_stack, _menhir_s, _v) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LBRACE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v_0 = _menhir_action_54 () in
          _menhir_run_124 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState123 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_124 : type  ttv_stack. (((ttv_stack _menhir_cell0_decls, _menhir_box_program) _menhir_cell1_typ _menhir_cell0_ID, _menhir_box_program) _menhir_cell1_formals_opt as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | WHILE ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState124
      | VOID ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState124
      | STRINGLIT _v_0 ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState124
      | STRING ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState124
      | RETURN ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState124
      | RBRACE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_formals_opt (_menhir_stack, _, _4) = _menhir_stack in
          let MenhirCell0_ID (_menhir_stack, _2) = _menhir_stack in
          let MenhirCell1_typ (_menhir_stack, _, _1) = _menhir_stack in
          let _7 = _v in
          let _v = _menhir_action_40 _1 _2 _4 _7 in
          _menhir_goto_fdecl _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | NOT ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState124
      | MINUS ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState124
      | LPAREN ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState124
      | LITERAL _v_1 ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState124
      | LBRACE ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState124
      | INT ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState124
      | IF ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_091 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState124
      | ID _v_2 ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2 MenhirState124
      | FOR ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_095 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState124
      | FLOAT ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState124
      | FLIT _v_3 ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3 MenhirState124
      | CHARLIT _v_4 ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _v_4 MenhirState124
      | CHAR ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState124
      | BOOL ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState124
      | BLIT _v_5 ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v_5 MenhirState124
      | _ ->
          _eRR ()
  
  and _menhir_run_020 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_WHILE (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LPAREN ->
          let _menhir_s = MenhirState021 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | VOID ->
              _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | STRINGLIT _v ->
              _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | STRING ->
              _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NOT ->
              _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | MINUS ->
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LPAREN ->
              _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LITERAL _v ->
              _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | INT ->
              _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | ID _v ->
              _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | FLOAT ->
              _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | FLIT _v ->
              _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | CHARLIT _v ->
              _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | CHAR ->
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BOOL ->
              _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BLIT _v ->
              _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_022 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _1 = _v in
      let _v = _menhir_action_11 _1 in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_expr : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState124 ->
          _menhir_run_107 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState019 ->
          _menhir_run_107 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState083 ->
          _menhir_run_107 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState089 ->
          _menhir_run_107 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState094 ->
          _menhir_run_107 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState110 ->
          _menhir_run_107 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState102 ->
          _menhir_run_107 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState098 ->
          _menhir_run_099 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState092 ->
          _menhir_run_093 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState096 ->
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState100 ->
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState084 ->
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState021 ->
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState023 ->
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState024 ->
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState025 ->
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState076 ->
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState074 ->
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState072 ->
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState067 ->
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState065 ->
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState062 ->
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState028 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState058 ->
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState056 ->
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState054 ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState052 ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState050 ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState048 ->
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState046 ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState044 ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState042 ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState040 ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState038 ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState036 ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState034 ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_107 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SEMI ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v in
          let _v = _menhir_action_46 _1 in
          _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIVIDE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_036 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _menhir_s = MenhirState036 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | VOID ->
          _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | STRINGLIT _v ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | STRING ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NOT ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAREN ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LITERAL _v ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | INT ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | ID _v ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FLOAT ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | FLIT _v ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CHARLIT _v ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CHAR ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BOOL ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BLIT _v ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_023 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_NOT (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState023 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | VOID ->
          _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | STRINGLIT _v ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | STRING ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NOT ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAREN ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LITERAL _v ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | INT ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | ID _v ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FLOAT ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | FLIT _v ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CHARLIT _v ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CHAR ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BOOL ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BLIT _v ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_024 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_MINUS (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState024 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | VOID ->
          _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | STRINGLIT _v ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | STRING ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NOT ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAREN ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LITERAL _v ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | INT ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | ID _v ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FLOAT ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | FLIT _v ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CHARLIT _v ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CHAR ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BOOL ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BLIT _v ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_025 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LPAREN (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState025 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | VOID ->
          _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | STRINGLIT _v ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | STRING ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NOT ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAREN ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LITERAL _v ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | INT ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | ID _v ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FLOAT ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | FLIT _v ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CHARLIT _v ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CHAR ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BOOL ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BLIT _v ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_026 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _1 = _v in
      let _v = _menhir_action_07 _1 in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_027 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TEQ ->
          let _menhir_stack = MenhirCell1_ID (_menhir_stack, _menhir_s, _v) in
          let _menhir_s = MenhirState028 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | VOID ->
              _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | STRINGLIT _v ->
              _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | STRING ->
              _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NOT ->
              _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | MINUS ->
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LPAREN ->
              _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LITERAL _v ->
              _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | INT ->
              _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | ID _v ->
              _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | FLOAT ->
              _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | FLIT _v ->
              _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | CHARLIT _v ->
              _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | CHAR ->
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BOOL ->
              _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BLIT _v ->
              _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | PPLUS ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v in
          let _v = _menhir_action_27 _1 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | PEQ ->
          let _menhir_stack = MenhirCell1_ID (_menhir_stack, _menhir_s, _v) in
          let _menhir_s = MenhirState062 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | VOID ->
              _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | STRINGLIT _v ->
              _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | STRING ->
              _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NOT ->
              _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | MINUS ->
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LPAREN ->
              _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LITERAL _v ->
              _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | INT ->
              _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | ID _v ->
              _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | FLOAT ->
              _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | FLIT _v ->
              _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | CHARLIT _v ->
              _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | CHAR ->
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BOOL ->
              _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BLIT _v ->
              _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | MMINUS ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v in
          let _v = _menhir_action_28 _1 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MEQ ->
          let _menhir_stack = MenhirCell1_ID (_menhir_stack, _menhir_s, _v) in
          let _menhir_s = MenhirState065 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | VOID ->
              _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | STRINGLIT _v ->
              _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | STRING ->
              _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NOT ->
              _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | MINUS ->
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LPAREN ->
              _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LITERAL _v ->
              _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | INT ->
              _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | ID _v ->
              _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | FLOAT ->
              _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | FLIT _v ->
              _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | CHARLIT _v ->
              _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | CHAR ->
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BOOL ->
              _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BLIT _v ->
              _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | LPAREN ->
          let _menhir_stack = MenhirCell1_ID (_menhir_stack, _menhir_s, _v) in
          let _menhir_s = MenhirState067 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | VOID ->
              _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | STRINGLIT _v ->
              _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | STRING ->
              _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NOT ->
              _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | MINUS ->
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LPAREN ->
              _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LITERAL _v ->
              _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | INT ->
              _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | ID _v ->
              _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | FLOAT ->
              _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | FLIT _v ->
              _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | CHARLIT _v ->
              _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | CHAR ->
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BOOL ->
              _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BLIT _v ->
              _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | RPAREN ->
              let _v = _menhir_action_03 () in
              _menhir_goto_args_opt _menhir_stack _menhir_lexbuf _menhir_lexer _v
          | _ ->
              _eRR ())
      | DEQ ->
          let _menhir_stack = MenhirCell1_ID (_menhir_stack, _menhir_s, _v) in
          let _menhir_s = MenhirState074 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | VOID ->
              _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | STRINGLIT _v ->
              _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | STRING ->
              _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NOT ->
              _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | MINUS ->
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LPAREN ->
              _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LITERAL _v ->
              _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | INT ->
              _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | ID _v ->
              _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | FLOAT ->
              _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | FLIT _v ->
              _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | CHARLIT _v ->
              _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | CHAR ->
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BOOL ->
              _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BLIT _v ->
              _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | ASSIGN ->
          let _menhir_stack = MenhirCell1_ID (_menhir_stack, _menhir_s, _v) in
          let _menhir_s = MenhirState076 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | VOID ->
              _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | STRINGLIT _v ->
              _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | STRING ->
              _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NOT ->
              _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | MINUS ->
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LPAREN ->
              _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LITERAL _v ->
              _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | INT ->
              _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | ID _v ->
              _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | FLOAT ->
              _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | FLIT _v ->
              _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | CHARLIT _v ->
              _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | CHAR ->
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BOOL ->
              _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BLIT _v ->
              _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | AND | COMMA | DIVIDE | EQ | GEQ | GT | LEQ | LT | MINUS | NEQ | OR | PLUS | RPAREN | SEMI | TIMES ->
          let _1 = _v in
          let _v = _menhir_action_12 _1 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_029 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _1 = _v in
      let _v = _menhir_action_08 _1 in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_030 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _1 = _v in
      let _v = _menhir_action_10 _1 in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_031 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _1 = _v in
      let _v = _menhir_action_09 _1 in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_args_opt : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_ID -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_ID (_menhir_stack, _menhir_s, _1) = _menhir_stack in
      let _3 = _v in
      let _v = _menhir_action_35 _1 _3 in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_stmt : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState083 ->
          _menhir_run_113 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState124 ->
          _menhir_run_112 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState019 ->
          _menhir_run_112 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState089 ->
          _menhir_run_112 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState110 ->
          _menhir_run_111 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState094 ->
          _menhir_run_109 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState102 ->
          _menhir_run_106 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_113 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_WHILE, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_expr (_menhir_stack, _, _3) = _menhir_stack in
      let MenhirCell1_WHILE (_menhir_stack, _menhir_s) = _menhir_stack in
      let _5 = _v in
      let _v = _menhir_action_52 _3 _5 in
      _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_112 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_stmt_list -> _ -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _1) = _menhir_stack in
      let _2 = _v in
      let _v = _menhir_action_55 _1 _2 in
      _menhir_goto_stmt_list _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_stmt_list : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState123 ->
          _menhir_run_124 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState088 ->
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState018 ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_089 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_LBRACE as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | WHILE ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState089
      | VOID ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState089
      | STRINGLIT _v_0 ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState089
      | STRING ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState089
      | RETURN ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState089
      | RBRACE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_LBRACE (_menhir_stack, _menhir_s) = _menhir_stack in
          let _2 = _v in
          let _v = _menhir_action_48 _2 in
          _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | NOT ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState089
      | MINUS ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState089
      | LPAREN ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState089
      | LITERAL _v_1 ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState089
      | LBRACE ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState089
      | INT ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState089
      | IF ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_091 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState089
      | ID _v_2 ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2 MenhirState089
      | FOR ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_095 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState089
      | FLOAT ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState089
      | FLIT _v_3 ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3 MenhirState089
      | CHARLIT _v_4 ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _v_4 MenhirState089
      | CHAR ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState089
      | BOOL ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState089
      | BLIT _v_5 ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v_5 MenhirState089
      | _ ->
          _eRR ()
  
  and _menhir_run_084 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_RETURN (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | VOID ->
          _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
      | STRINGLIT _v ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState084
      | STRING ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
      | NOT ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
      | MINUS ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
      | LPAREN ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
      | LITERAL _v ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState084
      | INT ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
      | ID _v ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState084
      | FLOAT ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
      | FLIT _v ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState084
      | CHARLIT _v ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState084
      | CHAR ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
      | BOOL ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
      | BLIT _v ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState084
      | SEMI ->
          let _v = _menhir_action_37 () in
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_085 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_RETURN -> _ -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | SEMI ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_RETURN (_menhir_stack, _menhir_s) = _menhir_stack in
          let _2 = _v in
          let _v = _menhir_action_47 _2 in
          _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_088 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LBRACE (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_54 () in
      _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState088 _tok
  
  and _menhir_run_091 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_IF (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LPAREN ->
          let _menhir_s = MenhirState092 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | VOID ->
              _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | STRINGLIT _v ->
              _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | STRING ->
              _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NOT ->
              _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | MINUS ->
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LPAREN ->
              _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LITERAL _v ->
              _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | INT ->
              _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | ID _v ->
              _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | FLOAT ->
              _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | FLIT _v ->
              _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | CHARLIT _v ->
              _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | CHAR ->
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BOOL ->
              _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BLIT _v ->
              _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_095 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_FOR (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LPAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | VOID ->
              _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState096
          | STRINGLIT _v ->
              _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState096
          | STRING ->
              _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState096
          | NOT ->
              _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState096
          | MINUS ->
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState096
          | LPAREN ->
              _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState096
          | LITERAL _v ->
              _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState096
          | INT ->
              _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState096
          | ID _v ->
              _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState096
          | FLOAT ->
              _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState096
          | FLIT _v ->
              _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState096
          | CHARLIT _v ->
              _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState096
          | CHAR ->
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState096
          | BOOL ->
              _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState096
          | BLIT _v ->
              _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState096
          | SEMI ->
              let _v = _menhir_action_37 () in
              _menhir_run_097 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState096 _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_097 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_FOR as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr_opt (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | SEMI ->
          let _menhir_s = MenhirState098 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | VOID ->
              _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | STRINGLIT _v ->
              _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | STRING ->
              _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NOT ->
              _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | MINUS ->
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LPAREN ->
              _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LITERAL _v ->
              _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | INT ->
              _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | ID _v ->
              _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | FLOAT ->
              _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | FLIT _v ->
              _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | CHARLIT _v ->
              _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | CHAR ->
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BOOL ->
              _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BLIT _v ->
              _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_019 : type  ttv_stack. (((ttv_stack _menhir_cell0_decls, _menhir_box_program) _menhir_cell1_typ _menhir_cell0_ID, _menhir_box_program) _menhir_cell1_formals_opt as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | WHILE ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState019
      | VOID ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState019
      | STRINGLIT _v_0 ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState019
      | STRING ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState019
      | RETURN ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState019
      | RBRACE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_formals_opt (_menhir_stack, _, _5) = _menhir_stack in
          let MenhirCell0_ID (_menhir_stack, _3) = _menhir_stack in
          let MenhirCell1_typ (_menhir_stack, _, _1) = _menhir_stack in
          let _8 = _v in
          let _v = _menhir_action_39 _1 _3 _5 _8 in
          _menhir_goto_fdecl _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | NOT ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState019
      | MINUS ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState019
      | LPAREN ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState019
      | LITERAL _v_1 ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState019
      | LBRACE ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState019
      | INT ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState019
      | IF ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_091 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState019
      | ID _v_2 ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2 MenhirState019
      | FOR ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_095 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState019
      | FLOAT ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState019
      | FLIT _v_3 ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3 MenhirState019
      | CHARLIT _v_4 ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _v_4 MenhirState019
      | CHAR ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState019
      | BOOL ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState019
      | BLIT _v_5 ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v_5 MenhirState019
      | _ ->
          _eRR ()
  
  and _menhir_goto_fdecl : type  ttv_stack. ttv_stack _menhir_cell0_decls -> _ -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell0_decls (_menhir_stack, _1) = _menhir_stack in
      let _2 = _v in
      let _v = _menhir_action_06 _1 _2 in
      _menhir_goto_decls _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_111 : type  ttv_stack. (((ttv_stack, _menhir_box_program) _menhir_cell1_IF, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_stmt -> _ -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_stmt (_menhir_stack, _, _5) = _menhir_stack in
      let MenhirCell1_expr (_menhir_stack, _, _3) = _menhir_stack in
      let MenhirCell1_IF (_menhir_stack, _menhir_s) = _menhir_stack in
      let _7 = _v in
      let _v = _menhir_action_50 _3 _5 _7 in
      _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_109 : type  ttv_stack. (((ttv_stack, _menhir_box_program) _menhir_cell1_IF, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | ELSE ->
          let _menhir_stack = MenhirCell1_stmt (_menhir_stack, _menhir_s, _v) in
          let _menhir_s = MenhirState110 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | WHILE ->
              _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | VOID ->
              _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | STRINGLIT _v ->
              _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | STRING ->
              _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | RETURN ->
              _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NOT ->
              _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | MINUS ->
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LPAREN ->
              _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LITERAL _v ->
              _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | LBRACE ->
              _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | INT ->
              _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IF ->
              _menhir_run_091 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | ID _v ->
              _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | FOR ->
              _menhir_run_095 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | FLOAT ->
              _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | FLIT _v ->
              _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | CHARLIT _v ->
              _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | CHAR ->
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BOOL ->
              _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BLIT _v ->
              _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | BLIT _ | BOOL | CHAR | CHARLIT _ | FLIT _ | FLOAT | FOR | ID _ | IF | INT | LBRACE | LITERAL _ | LPAREN | MINUS | NOT | RBRACE | RETURN | STRING | STRINGLIT _ | VOID | WHILE ->
          let MenhirCell1_expr (_menhir_stack, _, _3) = _menhir_stack in
          let MenhirCell1_IF (_menhir_stack, _menhir_s) = _menhir_stack in
          let _5 = _v in
          let _v = _menhir_action_49 _3 _5 in
          _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_106 : type  ttv_stack. ((((ttv_stack, _menhir_box_program) _menhir_cell1_FOR, _menhir_box_program) _menhir_cell1_expr_opt, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_expr_opt -> _ -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_expr_opt (_menhir_stack, _, _7) = _menhir_stack in
      let MenhirCell1_expr (_menhir_stack, _, _5) = _menhir_stack in
      let MenhirCell1_expr_opt (_menhir_stack, _, _3) = _menhir_stack in
      let MenhirCell1_FOR (_menhir_stack, _menhir_s) = _menhir_stack in
      let _9 = _v in
      let _v = _menhir_action_51 _3 _5 _7 _9 in
      _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_038 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _menhir_s = MenhirState038 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | VOID ->
          _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | STRINGLIT _v ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | STRING ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NOT ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAREN ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LITERAL _v ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | INT ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | ID _v ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FLOAT ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | FLIT _v ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CHARLIT _v ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CHAR ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BOOL ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BLIT _v ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_042 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _menhir_s = MenhirState042 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | VOID ->
          _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | STRINGLIT _v ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | STRING ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NOT ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAREN ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LITERAL _v ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | INT ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | ID _v ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FLOAT ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | FLIT _v ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CHARLIT _v ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CHAR ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BOOL ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BLIT _v ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_044 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _menhir_s = MenhirState044 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | VOID ->
          _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | STRINGLIT _v ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | STRING ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NOT ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAREN ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LITERAL _v ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | INT ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | ID _v ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FLOAT ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | FLIT _v ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CHARLIT _v ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CHAR ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BOOL ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BLIT _v ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_046 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _menhir_s = MenhirState046 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | VOID ->
          _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | STRINGLIT _v ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | STRING ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NOT ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAREN ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LITERAL _v ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | INT ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | ID _v ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FLOAT ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | FLIT _v ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CHARLIT _v ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CHAR ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BOOL ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BLIT _v ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_048 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _menhir_s = MenhirState048 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | VOID ->
          _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | STRINGLIT _v ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | STRING ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NOT ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAREN ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LITERAL _v ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | INT ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | ID _v ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FLOAT ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | FLIT _v ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CHARLIT _v ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CHAR ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BOOL ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BLIT _v ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_050 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _menhir_s = MenhirState050 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | VOID ->
          _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | STRINGLIT _v ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | STRING ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NOT ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAREN ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LITERAL _v ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | INT ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | ID _v ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FLOAT ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | FLIT _v ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CHARLIT _v ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CHAR ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BOOL ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BLIT _v ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_052 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _menhir_s = MenhirState052 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | VOID ->
          _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | STRINGLIT _v ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | STRING ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NOT ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAREN ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LITERAL _v ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | INT ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | ID _v ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FLOAT ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | FLIT _v ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CHARLIT _v ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CHAR ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BOOL ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BLIT _v ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_054 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _menhir_s = MenhirState054 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | VOID ->
          _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | STRINGLIT _v ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | STRING ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NOT ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAREN ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LITERAL _v ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | INT ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | ID _v ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FLOAT ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | FLIT _v ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CHARLIT _v ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CHAR ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BOOL ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BLIT _v ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_056 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _menhir_s = MenhirState056 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | VOID ->
          _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | STRINGLIT _v ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | STRING ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NOT ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAREN ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LITERAL _v ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | INT ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | ID _v ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FLOAT ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | FLIT _v ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CHARLIT _v ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CHAR ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BOOL ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BLIT _v ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_040 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _menhir_s = MenhirState040 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | VOID ->
          _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | STRINGLIT _v ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | STRING ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NOT ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAREN ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LITERAL _v ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | INT ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | ID _v ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FLOAT ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | FLIT _v ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CHARLIT _v ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CHAR ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BOOL ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BLIT _v ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_058 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _menhir_s = MenhirState058 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | VOID ->
          _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | STRINGLIT _v ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | STRING ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NOT ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAREN ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LITERAL _v ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | INT ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | ID _v ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FLOAT ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | FLIT _v ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CHARLIT _v ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CHAR ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BOOL ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BLIT _v ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_099 : type  ttv_stack. (((ttv_stack, _menhir_box_program) _menhir_cell1_FOR, _menhir_box_program) _menhir_cell1_expr_opt as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SEMI ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | VOID ->
              _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState100
          | STRINGLIT _v_0 ->
              _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState100
          | STRING ->
              _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState100
          | NOT ->
              _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState100
          | MINUS ->
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState100
          | LPAREN ->
              _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState100
          | LITERAL _v_1 ->
              _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState100
          | INT ->
              _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState100
          | ID _v_2 ->
              _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2 MenhirState100
          | FLOAT ->
              _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState100
          | FLIT _v_3 ->
              _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3 MenhirState100
          | CHARLIT _v_4 ->
              _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _v_4 MenhirState100
          | CHAR ->
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState100
          | BOOL ->
              _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState100
          | BLIT _v_5 ->
              _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v_5 MenhirState100
          | RPAREN ->
              let _v_6 = _menhir_action_37 () in
              _menhir_run_101 _menhir_stack _menhir_lexbuf _menhir_lexer _v_6 MenhirState100 _tok
          | _ ->
              _eRR ())
      | PLUS ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQ ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIVIDE ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_101 : type  ttv_stack. ((((ttv_stack, _menhir_box_program) _menhir_cell1_FOR, _menhir_box_program) _menhir_cell1_expr_opt, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr_opt (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | RPAREN ->
          let _menhir_s = MenhirState102 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | WHILE ->
              _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | VOID ->
              _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | STRINGLIT _v ->
              _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | STRING ->
              _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | RETURN ->
              _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NOT ->
              _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | MINUS ->
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LPAREN ->
              _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LITERAL _v ->
              _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | LBRACE ->
              _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | INT ->
              _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IF ->
              _menhir_run_091 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | ID _v ->
              _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | FOR ->
              _menhir_run_095 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | FLOAT ->
              _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | FLIT _v ->
              _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | CHARLIT _v ->
              _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | CHAR ->
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BOOL ->
              _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BLIT _v ->
              _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_093 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_IF as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RPAREN ->
          let _menhir_s = MenhirState094 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | WHILE ->
              _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | VOID ->
              _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | STRINGLIT _v ->
              _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | STRING ->
              _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | RETURN ->
              _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NOT ->
              _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | MINUS ->
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LPAREN ->
              _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LITERAL _v ->
              _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | LBRACE ->
              _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | INT ->
              _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IF ->
              _menhir_run_091 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | ID _v ->
              _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | FOR ->
              _menhir_run_095 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | FLOAT ->
              _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | FLIT _v ->
              _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | CHARLIT _v ->
              _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | CHAR ->
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BOOL ->
              _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BLIT _v ->
              _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | PLUS ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQ ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIVIDE ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_087 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIVIDE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RPAREN | SEMI ->
          let _1 = _v in
          let _v = _menhir_action_38 _1 in
          _menhir_goto_expr_opt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_expr_opt : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState100 ->
          _menhir_run_101 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState096 ->
          _menhir_run_097 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState084 ->
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_082 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_WHILE as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RPAREN ->
          let _menhir_s = MenhirState083 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | WHILE ->
              _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | VOID ->
              _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | STRINGLIT _v ->
              _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | STRING ->
              _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | RETURN ->
              _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NOT ->
              _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | MINUS ->
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LPAREN ->
              _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LITERAL _v ->
              _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | LBRACE ->
              _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | INT ->
              _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IF ->
              _menhir_run_091 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | ID _v ->
              _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | FOR ->
              _menhir_run_095 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | FLOAT ->
              _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | FLIT _v ->
              _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | CHARLIT _v ->
              _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | CHAR ->
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BOOL ->
              _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BLIT _v ->
              _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | PLUS ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQ ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIVIDE ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_081 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_NOT -> _ -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_NOT (_menhir_stack, _menhir_s) = _menhir_stack in
      let _2 = _v in
      let _v = _menhir_action_26 _2 in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_080 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_MINUS -> _ -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_MINUS (_menhir_stack, _menhir_s) = _menhir_stack in
      let _2 = _v in
      let _v = _menhir_action_25 _2 in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_078 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_LPAREN as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RPAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_LPAREN (_menhir_stack, _menhir_s) = _menhir_stack in
          let _2 = _v in
          let _v = _menhir_action_36 _2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIVIDE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_077 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_ID as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIVIDE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer
      | COMMA | RPAREN | SEMI ->
          let MenhirCell1_ID (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_29 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_075 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_ID as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIVIDE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer
      | COMMA | RPAREN | SEMI ->
          let MenhirCell1_ID (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_34 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_073 : type  ttv_stack. (((ttv_stack, _menhir_box_program) _menhir_cell1_ID, _menhir_box_program) _menhir_cell1_args_list as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIVIDE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer
      | COMMA | RPAREN ->
          let MenhirCell1_args_list (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_02 _1 _3 in
          _menhir_goto_args_list _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_args_list : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_ID as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | COMMA ->
          let _menhir_stack = MenhirCell1_args_list (_menhir_stack, _menhir_s, _v) in
          let _menhir_s = MenhirState072 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | VOID ->
              _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | STRINGLIT _v ->
              _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | STRING ->
              _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NOT ->
              _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | MINUS ->
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LPAREN ->
              _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LITERAL _v ->
              _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | INT ->
              _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | ID _v ->
              _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | FLOAT ->
              _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | FLIT _v ->
              _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | CHARLIT _v ->
              _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | CHAR ->
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BOOL ->
              _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BLIT _v ->
              _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | RPAREN ->
          let _1 = _v in
          let _v = _menhir_action_04 _1 in
          _menhir_goto_args_opt _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_068 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_ID as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIVIDE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer
      | COMMA | RPAREN ->
          let _1 = _v in
          let _v = _menhir_action_01 _1 in
          _menhir_goto_args_list _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_066 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_ID as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIVIDE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer
      | COMMA | RPAREN | SEMI ->
          let MenhirCell1_ID (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_32 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_063 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_ID as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIVIDE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer
      | COMMA | RPAREN | SEMI ->
          let MenhirCell1_ID (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_31 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_060 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_ID as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIVIDE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer
      | COMMA | RPAREN | SEMI ->
          let MenhirCell1_ID (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_33 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_059 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIVIDE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | COMMA | OR | RPAREN | SEMI ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_23 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_057 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIVIDE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | COMMA | EQ | NEQ | OR | RPAREN | SEMI ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_17 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_055 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIVIDE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | COMMA | EQ | GEQ | GT | LEQ | LT | NEQ | OR | RPAREN | SEMI ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_22 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_053 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIVIDE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | COMMA | EQ | GEQ | GT | LEQ | LT | NEQ | OR | RPAREN | SEMI ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_21 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_051 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIVIDE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | COMMA | EQ | GEQ | GT | LEQ | LT | NEQ | OR | RPAREN | SEMI ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_20 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_049 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIVIDE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | COMMA | EQ | GEQ | GT | LEQ | LT | NEQ | OR | RPAREN | SEMI ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_19 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_047 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIVIDE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | COMMA | EQ | GEQ | GT | LEQ | LT | MINUS | NEQ | OR | PLUS | RPAREN | SEMI ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_14 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_045 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIVIDE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | COMMA | EQ | NEQ | OR | RPAREN | SEMI ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_18 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_043 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIVIDE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer
      | COMMA | OR | RPAREN | SEMI ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_24 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_041 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
      let _3 = _v in
      let _v = _menhir_action_16 _1 _3 in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_039 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIVIDE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | COMMA | EQ | GEQ | GT | LEQ | LT | MINUS | NEQ | OR | PLUS | RPAREN | SEMI ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_13 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_037 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
      let _3 = _v in
      let _v = _menhir_action_15 _1 _3 in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_035 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_typ _menhir_cell0_ID as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIVIDE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer
      | COMMA | RPAREN | SEMI ->
          let MenhirCell0_ID (_menhir_stack, _2) = _menhir_stack in
          let MenhirCell1_typ (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _4 = _v in
          let _v = _menhir_action_30 _1 _2 _4 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_016 : type  ttv_stack. ((ttv_stack _menhir_cell0_decls, _menhir_box_program) _menhir_cell1_typ _menhir_cell0_ID as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_formals_opt (_menhir_stack, _menhir_s, _v) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LBRACE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v_0 = _menhir_action_54 () in
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState018 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_103 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | ID _v_0 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | SEMI ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_1, _2) = (_v, _v_0) in
              let _v = _menhir_action_53 _1 _2 in
              _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
          | ASSIGN ->
              let _menhir_stack = MenhirCell1_typ (_menhir_stack, _menhir_s, _v) in
              let _menhir_stack = MenhirCell0_ID (_menhir_stack, _v_0) in
              _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_034 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_typ _menhir_cell0_ID -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _menhir_s = MenhirState034 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | VOID ->
          _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | STRINGLIT _v ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | STRING ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NOT ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAREN ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LITERAL _v ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | INT ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | ID _v ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FLOAT ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | FLIT _v ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CHARLIT _v ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CHAR ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BOOL ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BLIT _v ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_032 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_typ (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | ID _v_0 ->
          let _menhir_stack = MenhirCell0_ID (_menhir_stack, _v_0) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | ASSIGN ->
              _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_014 : type  ttv_stack. (ttv_stack _menhir_cell0_ID as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | ID _v_0 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_1, _2) = (_v, _v_0) in
          let _v = _menhir_action_41 _1 _2 in
          _menhir_goto_formal_list _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_010 : type  ttv_stack. (ttv_stack _menhir_cell0_decls as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_typ (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | UNIV ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | ID _v_0 ->
              let _menhir_stack = MenhirCell0_ID (_menhir_stack, _v_0) in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | LPAREN ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | VOID ->
                      _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState013
                  | STRING ->
                      _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState013
                  | INT ->
                      _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState013
                  | FLOAT ->
                      _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState013
                  | CHAR ->
                      _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState013
                  | BOOL ->
                      _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState013
                  | RPAREN ->
                      let _v_1 = _menhir_action_43 () in
                      _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState013
                  | _ ->
                      _eRR ())
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | ID _v_2 ->
          let _menhir_stack = MenhirCell0_ID (_menhir_stack, _v_2) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LPAREN ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | VOID ->
                  _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState120
              | STRING ->
                  _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState120
              | INT ->
                  _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState120
              | FLOAT ->
                  _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState120
              | CHAR ->
                  _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState120
              | BOOL ->
                  _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState120
              | RPAREN ->
                  let _v_3 = _menhir_action_43 () in
                  _menhir_run_121 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3 MenhirState120
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  let _menhir_run_000 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_05 () in
      _menhir_goto_decls _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
end

let program =
  fun _menhir_lexer _menhir_lexbuf ->
    let _menhir_stack = () in
    let MenhirBox_program v = _menhir_run_000 _menhir_stack _menhir_lexbuf _menhir_lexer in
    v

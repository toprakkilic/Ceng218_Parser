/* A Bison parser, made by GNU Bison 3.8.2.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015, 2018-2021 Free Software Foundation,
   Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <https://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* DO NOT RELY ON FEATURES THAT ARE NOT DOCUMENTED in the manual,
   especially those whose name start with YY_ or yy_.  They are
   private implementation details that can be changed or removed.  */

#ifndef YY_YY_CIZIM_TAB_H_INCLUDED
# define YY_YY_CIZIM_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token kinds.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    YYEMPTY = -2,
    YYEOF = 0,                     /* "end of file"  */
    YYerror = 256,                 /* error  */
    YYUNDEF = 257,                 /* "invalid token"  */
    ATAMA = 258,                   /* ATAMA  */
    TOPLA = 259,                   /* TOPLA  */
    CIKAR = 260,                   /* CIKAR  */
    CARP = 261,                    /* CARP  */
    BOL = 262,                     /* BOL  */
    MOD = 263,                     /* MOD  */
    US = 264,                      /* US  */
    KUCUK = 265,                   /* KUCUK  */
    BUYUK = 266,                   /* BUYUK  */
    KUCUK_ESIT = 267,              /* KUCUK_ESIT  */
    BUYUK_ESIT = 268,              /* BUYUK_ESIT  */
    ESIT = 269,                    /* ESIT  */
    FARKLI = 270,                  /* FARKLI  */
    VE = 271,                      /* VE  */
    VEYA = 272,                    /* VEYA  */
    DEGIL = 273,                   /* DEGIL  */
    SAYI = 274,                    /* SAYI  */
    METIN = 275,                   /* METIN  */
    ID = 276,                      /* ID  */
    BLOK_BAS = 277,                /* BLOK_BAS  */
    BLOK_BIT = 278,                /* BLOK_BIT  */
    EGER = 279,                    /* EGER  */
    ISE = 280,                     /* ISE  */
    AKSI_HALDE = 281,              /* AKSI_HALDE  */
    DONGU = 282,                   /* DONGU  */
    IKEN = 283,                    /* IKEN  */
    NEKI = 284,                    /* NEKI  */
    FONK = 285,                    /* FONK  */
    KNOF = 286,                    /* KNOF  */
    IKI_NOKTA = 287,               /* IKI_NOKTA  */
    DONDUR = 288,                  /* DONDUR  */
    TUS_YUKARI = 289,              /* TUS_YUKARI  */
    TUS_ASAGI = 290,               /* TUS_ASAGI  */
    TUS_SOLA = 291,                /* TUS_SOLA  */
    TUS_SAGA = 292,                /* TUS_SAGA  */
    PARANTEZ_AC = 293,             /* PARANTEZ_AC  */
    PARANTEZ_KAPA = 294,           /* PARANTEZ_KAPA  */
    SATIRSONU = 295                /* SATIRSONU  */
  };
  typedef enum yytokentype yytoken_kind_t;
#endif

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;


int yyparse (void);


#endif /* !YY_YY_CIZIM_TAB_H_INCLUDED  */

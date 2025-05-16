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
    ID = 259,                      /* ID  */
    SAYI = 260,                    /* SAYI  */
    TOPLA = 261,                   /* TOPLA  */
    CIKAR = 262,                   /* CIKAR  */
    CARP = 263,                    /* CARP  */
    BOL = 264,                     /* BOL  */
    MOD = 265,                     /* MOD  */
    US = 266,                      /* US  */
    ESIT = 267,                    /* ESIT  */
    KUCUK = 268,                   /* KUCUK  */
    KUCUK_ESIT = 269,              /* KUCUK_ESIT  */
    BUYUK = 270,                   /* BUYUK  */
    BUYUK_ESIT = 271,              /* BUYUK_ESIT  */
    FARKLI = 272,                  /* FARKLI  */
    VE = 273,                      /* VE  */
    VEYA = 274,                    /* VEYA  */
    DEGIL = 275,                   /* DEGIL  */
    BLOK_AC = 276,                 /* BLOK_AC  */
    BLOK_KAPA = 277,               /* BLOK_KAPA  */
    EGER = 278,                    /* EGER  */
    ISE = 279,                     /* ISE  */
    AKSI_HALDE = 280,              /* AKSI_HALDE  */
    DONGU = 281,                   /* DONGU  */
    IKEN = 282,                    /* IKEN  */
    NEKI = 283,                    /* NEKI  */
    FONK = 284,                    /* FONK  */
    KNOF = 285,                    /* KNOF  */
    IKI_NOKTA = 286,               /* IKI_NOKTA  */
    DONDUR = 287,                  /* DONDUR  */
    PARANTEZ_AC = 288,             /* PARANTEZ_AC  */
    PARANTEZ_KAPA = 289,           /* PARANTEZ_KAPA  */
    DOGRU = 290,                   /* DOGRU  */
    YANLIS = 291,                  /* YANLIS  */
    DAIRE_CIZ = 292,               /* DAIRE_CIZ  */
    DIKDORTGEN_CIZ = 293,          /* DIKDORTGEN_CIZ  */
    UCGEN_CIZ = 294,               /* UCGEN_CIZ  */
    CIZGI_CIZ = 295,               /* CIZGI_CIZ  */
    TUS_YUKARI = 296,              /* TUS_YUKARI  */
    TUS_ASAGI = 297,               /* TUS_ASAGI  */
    TUS_SOLA = 298,                /* TUS_SOLA  */
    TUS_SAGA = 299,                /* TUS_SAGA  */
    INT = 300,                     /* INT  */
    STRING = 301,                  /* STRING  */
    TUS_BASILDI = 302              /* TUS_BASILDI  */
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

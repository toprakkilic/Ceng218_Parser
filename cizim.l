%{
    #include "cizim.tab.h"
%}
%option noyywrap
%option yylineno
%%
"<-"    {return ATAMA; printf("atandı");}
"+"    {return TOPLA;}
"-"    {return CIKAR;}
"*"    {return CARP;}
"/"    {return BOL;}
"%"    {return MOD;}
"^"    {return US;}
"<"    {return KUCUK;}
">"    {return BUYUK;}
"<="    {return KUCUK_ESIT;}
">="    {return BUYUK_ESIT;}
"="    {return ESIT;}
"<>"    {return FARKLI;}
"eger"  {return EGER;}
"ise" {return ISE;}
"aksi halde"    {return AKSI_HALDE;}
"dongu" {return DONGU;}
"iken"  {return IKEN;}
"neki"  {return NEKI;}
"tusyukari" {return TUS_YUKARI;}
"tusasagi" {return TUS_ASAGI;}
"tussola" {return TUS_SOLA;}
"tussaga" {return TUS_SAGA;}

[a-zA-Z_][a-zA-Z0-9_]*  { return ID;}
"-"?[0-9]+(\.[0-9]+)?  { return SAYI;}
\".*\"  {return METIN;}
"ü".*  {}
\n {return SATIRSONU;}
[ \t] {}
. {return yytext[0];}
%%
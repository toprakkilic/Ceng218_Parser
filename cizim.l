%{
#include "cizim.tab.h"
%}
%option noyywrap
%%
"<-"    {return ATAMA;}
"+"  {return TOPLA;}
"-"  {return CIKAR;}
"*"  {return CARP;}
"/"  {return BOL;}
"%"  {return MOD;}
"^"  {return US;}
"<"  {return KUCUK;}
"<="  {return KUCUK_ESIT;}
">"  {return BUYUK;}
">="  {return BUYUK_ESIT;}
"="  {return ESIT;}
"<>"  {return FARKLI;}
":"  {return IKI_NOKTA;}
"eger"  {return EGER;}
"ise"  {return ISE;}
"aksi halde"  {return AKSI_HALDE;}
"dongu"  {return DONGU;}
"iken"  {return IKEN;}
"neki"  {return NEKI;}
"(" {return PARANTEZ_AC;}
")" {return PARANTEZ_KAPA;}
"dogru" {return DOGRU;}
"yanlis" {return YANLIS;}
"ve" {return VE;}
"veya" {return VEYA;}
"degil" {return DEGIL;}
"fonk" {return FONK;}
"knof" {return KNOF;}
"dondur"  { return DONDUR; }
"int"    { return INT; }
"string" { return STRING; }


"tusyukari"     { printf("yukari tusa basildi");return TUS_YUKARI; }
"tusasagi"      { printf("asagi tusa basildi");return TUS_ASAGI; }
"tussola"       { printf("sola tusa basildi");return TUS_SOLA; }
"tussaga"       { printf("sag tusa basildi");return TUS_SAGA; }

"daire_ciz"       { printf("daire cizilir"); return DAIRE_CIZ; }
"dikdortgen_ciz"  { printf("dikdortgen cizilir");return DIKDORTGEN_CIZ; }
"ucgen_ciz"       { printf("ucgen cizilir");return UCGEN_CIZ; }
"cizgi_ciz"       { printf("cizgi cizilir");return CIZGI_CIZ; }


[0-9]+(\.[0-9]+)?  { return SAYI;}
[a-zA-Z_][a-zA-Z0-9_]*    {return ID;}
[ \t] {}
"--".* {}
.   {return yytext[0];}
%%
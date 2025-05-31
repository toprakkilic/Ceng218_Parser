%{
#include "cizim.tab.h"
%}
%option noyywrap
%%
\n           { yylineno++; }
"<<"    {return ATAMA;}
"-<<"   { return EKSILT_ATAMA; }
"+<<"   { return ARTTIR_ATAMA; }
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
"olmazsa"  {return AKSI_HALDE;}
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
"fonksiyon" {return FONK;}
"bitir" {return KNOF;}
"dondur"  { return DONDUR; }
"int"    { return INT; }
"string" { return STRING; }
"{"   { return BLOK_AC; }
"}"   { return BLOK_KAPA; }


"tus_basildi" { return TUS_BASILDI; }
"tusyukari"     { printf("yukari tusa basildi \n");return TUS_YUKARI; }
"tusasagi"      { printf("asagi tusa basildi \n");return TUS_ASAGI; }
"tussola"       { printf("sola tusa basildi \n");return TUS_SOLA; }
"tussaga"       { printf("sag tusa basildi\n");return TUS_SAGA; }

"daire_ciz"       { printf("Daire Cizilir \n"); return DAIRE_CIZ; }
"dikdortgen_ciz"  { printf("Dikdortgen Cizilir \n");return DIKDORTGEN_CIZ; }
"ucgen_ciz"       { printf("Ucgen Cizilir \n");return UCGEN_CIZ; }
"cizgi_ciz"       { printf("Cizgi Cizilir \n");return CIZGI_CIZ; }


[0-9]+(\.[0-9]+)?  { return SAYI;}
\"([^\\\"]|\\.)*\"  { return METIN; }
[a-zA-Z_][a-zA-Z0-9_]*    {return ID;}
[ \t] {}
"#".* { }
"--".* { }
.   {return yytext[0];}
%%
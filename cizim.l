%{
    #include "cizim.tab.h"
    #undef yywrap
%}

%option noyywrap
%option yylineno

%%

"<-"            { return ATAMA; }
"+"             { return TOPLA; }
"-"             { return CIKAR; }
"*"             { return CARP; }
"/"             { return BOL; }
"%"             { return MOD; }
"^"             { return US; }

"<="            { return KUCUK_ESIT; }
">="            { return BUYUK_ESIT; }
"<>"            { return FARKLI; }
"<"             { return KUCUK; }
">"             { return BUYUK; }
"="             { return ESIT; }

"eger"          { return EGER; }
"ise"           { return ISE; }
"aksi halde"    { return AKSI_HALDE; }
"dongu"         { return DONGU; }
"iken"          { return IKEN; }
"neki"          { return NEKI; }

"tusyukari"     { return TUS_YUKARI; }
"tusasagi"      { return TUS_ASAGI; }
"tussola"       { return TUS_SOLA; }
"tussaga"       { return TUS_SAGA; }

"daire_ciz"       { return DAIRE_CIZ; }
"dikdortgen_ciz"  { return DIKDORTGEN_CIZ; }
"ucgen_ciz"       { return UCGEN_CIZ; }
"cizgi_ciz"       { return CIZGI_CIZ; }

","              { return ','; }
"("              { return PARANTEZ_AC; }
")"              { return PARANTEZ_KAPA; }
"{"              { return BLOK_BAS; }
"}"              { return BLOK_BIT; }

[0-9]+(\.[0-9]+)?  { 
                    // Sayı ise ondalıklı mı kontrol et
                    if (strchr(yytext, '.') != NULL) {
                        yylval.dval = atof(yytext);
                        return ONDALIK;
                    } else {
                        yylval.ival = atoi(yytext);
                        return TAMSAYI;
                    }
                  }

\"([^\\\"]|\\.)*\"  { 
                    // Metin türü için tırnak içindeki metin
                    yylval.sval = strdup(yytext);
                    return METIN;
                  }

[a-zA-Z_][a-zA-Z0-9_]*  { 
                    // ID token'ı için
                    yylval.sval = strdup(yytext);
                    return ID; 
                  }

\n              { return SATIRSONU; }
[ \t\r]+        { /* boşlukları yut */ }

.               { return yytext[0]; } // Diğer tek karakterleri döndür

%%

int yywrap(void) {
    return 1;
}

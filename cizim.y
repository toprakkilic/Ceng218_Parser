%{
#include <stdio.h>

void yyerror(const char *s);
int yylex(void);
extern int yylineno;

%}
%token ATAMA
%token ID SAYI
%token TOPLA CIKAR CARP BOL MOD US
%token ESIT KUCUK KUCUK_ESIT BUYUK BUYUK_ESIT FARKLI
%token VE VEYA DEGIL
%token BLOK_AC BLOK_KAPA
%token EGER ISE AKSI_HALDE
%token DONGU IKEN NEKI
%token FONK KNOF IKI_NOKTA DONDUR
%token PARANTEZ_AC PARANTEZ_KAPA
%token DOGRU YANLIS
%token DAIRE_CIZ DIKDORTGEN_CIZ UCGEN_CIZ CIZGI_CIZ
%token TUS_YUKARI TUS_ASAGI TUS_SOLA TUS_SAGA
%token INT STRING


%%
program:
    komut
    | program komut
;

komut:
    atama
    | eger
    | fonksiyon_cagrisi
    | fonksiyon_tanim
    | dondur
    | cizim_komut
    | tuslar
    | tipli_degisken_bildirimi
;
atama: ID ATAMA ifade;

fonksiyon_cagrisi: ID ifade_listesi;

ifade_listesi: 
    | ifade
    | ifade_listesi ifade
;

fonksiyon_tanim: FONK ID parametre_listesi IKI_NOKTA komut_listesi KNOF;

komut_listesi:
    komut
    | komut_listesi komut;

parametre_listesi:
    ID
    | parametre_listesi ID
;
eger: EGER kosul ISE komut AKSI_HALDE komut;

kosul:
    DOGRU
    | YANLIS
    | kosul VE kosul
    | kosul VEYA kosul
    | ifade ESIT ifade
    | ifade FARKLI ifade
    | ifade KUCUK ifade
    | ifade KUCUK_ESIT ifade
    | ifade BUYUK ifade
    | ifade BUYUK_ESIT ifade
;

ifade:
    terim
    | ifade TOPLA terim
    | ifade CIKAR terim
;
terim:
    faktor
    | terim CARP faktor
    | terim BOL faktor
    | terim MOD faktor
;
faktor:
    SAYI
    | ID
    | PARANTEZ_AC ifade PARANTEZ_KAPA
;
dondur: 
    DONDUR ifade
;

cizim_komut:
      DAIRE_CIZ ifade ifade ifade
    | DIKDORTGEN_CIZ ifade ifade ifade ifade
    | UCGEN_CIZ ifade ifade ifade ifade ifade ifade
    | CIZGI_CIZ ifade ifade ifade ifade
;

tuslar:
      TUS_YUKARI
    | TUS_ASAGI
    | TUS_SOLA
    | TUS_SAGA
;

tip:
    INT
    | STRING
;

tipli_degisken_bildirimi:
    tip ID
    | tip ID ATAMA ifade
;

%%

int hata = 0;

int main() {
    yyparse();
    if(hata == 0){
        printf("Doğru kanka\n");
    }
    return 0;
}

void yyerror(const char *s) {
    fprintf(stderr, "%d. satırda hata: %s\n", yylineno, s);
    hata = 1;
}
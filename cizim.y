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
%token TUS_BASILDI


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
    | tipli_degisken_bildirimi
    | blok_komutlar
    | tus_basildi_kontrol
    | dongu
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
eger: EGER kosul ISE blok_komutlar AKSI_HALDE blok_komutlar;

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
    | terim US faktor
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

tus_basildi_kontrol:
      TUS_BASILDI TUS_YUKARI
    | TUS_BASILDI TUS_ASAGI
    | TUS_BASILDI TUS_SOLA
    | TUS_BASILDI TUS_SAGA
;

tip:
    INT
    | STRING
;

tipli_degisken_bildirimi:
    tip ID
    | tip ID ATAMA ifade
;

blok_komutlar:
    BLOK_AC komut_listesi BLOK_KAPA
;

dongu: DONGU kosul IKEN blok_komutlar NEKI;


%%

int hata = 0;

int main() {
    yyparse();
    if(hata == 0){
        printf("[DOĞRU] Kod gramer kurallarına uygundur.\n");
    }
    return 0;
}

void yyerror(const char *s) {
    fprintf(stderr, "%d NUMARALI SATIRDA HATA: %s\n", yylineno, s);
    hata = 1;
}
%{
#include <stdio.h>
void yyerror(const char *s);
int yylex(void);
extern int yylineno;

%}

%union {
    int ival;
    double dval;
    char* sval;
}


%token ATAMA
%token TOPLA CIKAR CARP BOL MOD US
%token KUCUK BUYUK KUCUK_ESIT BUYUK_ESIT ESIT FARKLI
%token VE VEYA DEGIL
%token <ival> TAMSAYI
%token <dval> ONDALIK
%token <sval> METIN
%token <sval> ID
%token BLOK_BAS BLOK_BIT
%token EGER ISE AKSI_HALDE 
%token DONGU IKEN NEKI
%token FONK KNOF IKI_NOKTA DONDUR
%token TUS_YUKARI TUS_ASAGI TUS_SOLA TUS_SAGA
%token PARANTEZ_AC PARANTEZ_KAPA
%token SATIRSONU
%token DAIRE_CIZ DIKDORTGEN_CIZ UCGEN_CIZ CIZGI_CIZ


%left VEYA
%left VE
%right DEGIL
%left TOPLA CIKAR
%left CARP BOL MOD
%right US


%%
program:
     /* boş */
    |program SATIRSONU
    | program komut SATIRSONU
;

komut:
    atama
    | eger
    | dongu
    | fonksiyon
    | tuslar
    | fonksiyon_cagirma
    | blok
    | cizim_komut
    | dondur
    | degisken_bildirimi
;

dongu: DONGU kosul IKEN komut_listesi NEKI;

komut_listesi:
    komut
    | komut_listesi komut;

eger: EGER kosul ISE komut AKSI_HALDE komut;

kosul:
    kosul VE kosul
    | kosul VEYA kosul
    | DEGIL kosul
    | ifade ESIT ifade
    | ifade FARKLI ifade
    | ifade KUCUK ifade
    | ifade KUCUK_ESIT ifade
    | ifade BUYUK ifade
    | ifade BUYUK_ESIT ifade
;

atama: ID ATAMA ifade;

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
    TAMSAYI
  | ONDALIK
  | ID
  | PARANTEZ_AC ifade PARANTEZ_KAPA
;

fonksiyon:
    FONK ID PARANTEZ_AC parametreler PARANTEZ_KAPA BLOK_BAS komut_listesi BLOK_BIT
;

parametreler:
    /* boş */
    | ID
    | parametreler ',' ID
;

fonksiyon_cagirma:
    ID PARANTEZ_AC argumanlar PARANTEZ_KAPA
;

argumanlar:
    /* boş */
    | ifade
    | argumanlar ',' ifade
;

tuslar:
    TUS_YUKARI
    | TUS_ASAGI
    | TUS_SOLA
    | TUS_SAGA
;

blok:
    BLOK_BAS komut_listesi BLOK_BIT
;

cizim_komut:
    DAIRE_CIZ ifade ifade ifade
  | DIKDORTGEN_CIZ ifade ifade ifade ifade
  | UCGEN_CIZ ifade ifade ifade ifade ifade ifade
  | CIZGI_CIZ ifade ifade ifade ifade
;

dondur:
    DONDUR ifade
;

tur:
    TAMSAYI
  | ONDALIK
  | METIN
;

degisken_bildirimi:
    tur ID SATIRSONU
  | tur ID ATAMA ifade SATIRSONU
;

%%

int hata = 0;


int main() {
    yyparse(); 
    if(hata == 0){
        printf("dogru kanka");
    }

}

void yyerror(const char *s)
{
  fprintf(stderr, "%d. satırda hata: %s\n", yylineno, s);
  hata = 1;
}
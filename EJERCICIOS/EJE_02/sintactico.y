%{
    #include <stdio.h>
    int yylex();
    void yyerror(char *s);
%}
%token VAR_NOM
%token IGUAL
%token VAR_TPO_INT
%token VAR_TPO_DOUBLE
%token VAR_TPO_CHAR
%token VAR_TPO_SPRING
%token PC
%token SL
%token NEA
%%
s: VAR_NOM IGUAL VAR_TPO_INT PC SL {printf("Se reconoce variable tipo INT\n");}
    |VAR_NOM IGUAL VAR_TPO_CHAR PC SL {printf("Se reconoce variable tipo CHAR\n");}
    |VAR_NOM IGUAL VAR_TPO_DOUBLE PC SL {printf("Se reconoce variable tipo DOUBLE\n");}
    |VAR_NOM IGUAL VAR_TPO_SPRING PC SL {printf("Se reconoce variable tipo SPRING\n");}
    | NEA {yyerror("No se reconoce\n");}
;
%%
void yyerror(char *s){
    printf("%s \n", s);
}
int main(){
    printf("Asignacion de una variable\n");
    yyparse();
    yylex();
}
%{
    #include <stdio.h>
    int yylex();
    void yyerror(char *s);
%}
%token B
%token SL
%token NEA
%%
s: B B SL {printf("Se reconoce\n");}
    | B NEA {yyerror("No se reconoce");}
    | NEA {yyerror("No se reconoce");}
;
%%
void yyerror(char *s){
    printf("%s \n",s);
}
int main(){
    printf("Ingrese una cadena\n");
    yyparse();
    yylex();
}
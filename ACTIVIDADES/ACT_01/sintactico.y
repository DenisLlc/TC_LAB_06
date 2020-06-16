%{
    #include <stdio.h>
    int yylex();
    int yyerror(char *s);
%}
%token ARTICULO
%token EOL
%%
cadena: ARTICULO EOL {printf("Se imprimio una cadena\n");}
        |ARTICULO ARTICULO {yyerror("Articulo duplicado\n");}
;
%%
int yyerror(char *s){
    printf("%s \n",s);
    return 0;
}
void main(){
    printf("Reconocer el articulo la\n");
    yyparse();
    yylex();
}
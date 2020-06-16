
%{
    #include <stdio.h>
    int yylex();
    int yyerror(char *s);
%}
%token A
%token EOL
%token NEA
%%
s: A s
    |A EOL {printf("Se reconcio una cadena\n");}
    |s NEA {yyerror("Diferente de A");}
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
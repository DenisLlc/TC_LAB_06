%{
    #include <stdio.h>
    int yylex();
    int yyerror(char *s);
%}
%token A
%token B
%token EOL
%token NEA
%%
s: A B s
    |A B EOL {printf("Reconocido\n");}
;
p: B A p
    |B A EOL {printf("Reconocido\n");}
;
%%
int yyerror(char *s){
    printf("%s \n",s);
    return 0;
}
void main(){
    yyparse();
    yylex();
}
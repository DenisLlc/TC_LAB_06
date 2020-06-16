%{
    #include "sintactico.tab.h"
%}
A [a|A]
B [b|B]
%%
{A} {return(A);}
{B} {return(B);}
\n {return(EOL);}
. {return yyerror[0];}
%%
int yywrap(){return 0;};
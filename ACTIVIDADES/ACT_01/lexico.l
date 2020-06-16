%{
    #include "sintactico.tab.h"
    int yyparse();
%}

%%
la {return(ARTICULO);}
\n {return(EOL);}
.  {return yytext[0];}
%%
int yywrap(){return 0;};
%{
    #include "sintactico.tab.h"
%}
%%
a {return(A);}
\n {return(EOL);}
. {return(NEA);}
%%
int yywrap(){return 0;};
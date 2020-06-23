%{
    #include "sintactico.tab.h"

%}
%%
b {return(B);}
\n {return(SL);}
. {return(NEA);}
%%
int yywrap(){return 0;};
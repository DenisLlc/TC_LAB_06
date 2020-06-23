%{
    #include "sintactico.tab.h"
%}
nombre [a-zA-Z_][a-zA-Z0-9_]*
DIGITO [0-9]
int [\+\-]?{DIGITO}+
char (\')[a-zA-Z0-9](\')
double [\+\-]?[0-9]{DIGITO}*([\.\,]{DIGITO}+)*
spring (\")[a-zA-Z_ ][a-zA-Z0-9_ ]*(\")
%%
{nombre}    {return(VAR_NOM);}
\=    {return(IGUAL);}
{int}    {return(VAR_TPO_INT);}
{char}  {return(VAR_TPO_CHAR);}
{double}    {return(VAR_TPO_DOUBLE);}
{spring}    {return(VAR_TPO_SPRING);}
\;    {return(PC);}
\n {return(SL);}
" " {}
. {return(NEA);}
%%
int yywrap(){
    return 0;
};
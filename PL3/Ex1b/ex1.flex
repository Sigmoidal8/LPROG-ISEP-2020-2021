%{
	#include "ex1.tab.h" /* header gerado pelo bison */
%}

%%
[Hh][Ee][Ll][Ll][Oo]    return TK_HELLO;
[Ww][Oo][Rr][Ll][Dd]    return TK_WORLD;
[A-Za-z]+               return TK_WORD;
[ \t\r\n]*
.                       printf("Erro Lexico: carácter inválido (%d)",yytext[0]);
<<EOF>>                 return 0;

%%


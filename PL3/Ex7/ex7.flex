
%{
	#include <stdio.h>
%}

ALGARISMO [0-9]+
NUMERO (-{ALGARISMO}|{ALGARISMO})
NUMEROREAL (-{ALGARISMO}.{ALGARISMO}|-{ALGARISMO},{ALGARISMO}|{ALGARISMO}.{ALGARISMO}|{ALGARISMO},{ALGARISMO})

%%
   /* Se a ação for descrita numa só linha as chavetas podem ser omitidas */
{NUMERO}	printf("%s ", yytext);
{NUMEROREAL}  printf("%s ", yytext);
.

%%
int main ()
{
	yylex();
    printf("\n");
    return 0;
}
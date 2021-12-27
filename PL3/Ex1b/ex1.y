
%{
    #include <stdio.h>
    int numErrors = 0;

    int yyerror (char *); 
%}

%token TK_HELLO TK_WORLD TK_WORD
%start phrase

%%
phrase:	
	| phrase TK_HELLO TK_WORLD {printf("Hello World!!!\n");}
    | phrase TK_HELLO
    | phrase TK_WORLD
    | phrase TK_WORD
	;
%%

int main () {
	yyparse () ;
}

int yyerror (char *s) {
	numErros++;
	printf("erro sintactico/semantico: %s\n",s) ;
}
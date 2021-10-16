%{
#include<stdio.h>
#include "y.tab.h"
#include<stdlib.h>
void yyerror(char *s);
%}

%%
[0-9]+ {yylval=atoi(yytext); return num;}
"+"|"*" {return yytext[0];}
[\n] {return yytext[0];} 
. {yyerror("Wrong input");}
%%

void yyerror(char s[100])
{
	printf("\n%s",s);
	exit(0);
}

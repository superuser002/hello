%{
#include<stdio.h>
%}

%%
abc|dfe|sgs { printf("\nNoun is %s",yytext); }
Dancing|Eating|Singing { printf("\nVerb is %s",yytext); }
.|\n {;}
%%

void main()
{
	yylex();
}
int yywrap()
{
	return 1;
}

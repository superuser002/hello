%{
#include<stdio.h>
%}

%%
("//")(.*) {
printf("%s <-------is Single line comment \n",yytext);
}

(("/*")[^("*/")]*("*/")) {
printf("\n%s <-------is Multi line comment \n",yytext);
}
. {fprintf(yyout,"%s",yytext);}
%%

void main()
{

	extern FILE *yyin, *yyout;  	
	yyin = fopen("in.c","r");	
	yyout = fopen("out.c","w");	

	yylex();
}

int yywrap()
{
	return 1;
}


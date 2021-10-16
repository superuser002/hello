%{
#include<stdio.h>
#include<stdlib.h>
#include"y.tab.h"
void yyerror(char *s);
%}

%%
[0-9]+ {yylval.f=atoi(yytext);
	return NUM;}
"sin" {return SIN;}
"cos" {return COS;}
"tan" {return TAN;}
"log" {return LOG;}
"+"|"*"|"-"|"/"|"^"|"("|")" {return yytext[0];}
[\n] {return yytext[0];}
. {yyerror("invalid ip");}
%%

void yyerror(char s[100]){
printf("%s",s);
exit(0);
}


%{
#include<stdio.h>
%}
%%
((.*)(("or"|"and"|"either"|"neigther"|"but"|"nor"|"but"|"also"|"yet"|"still")+)(.*)) {
printf("\n%s is Compound Satatement",yytext);
} 
.* { printf("\n%s is Simple Satatement",yytext); }

%%
void main()
{
yylex();
}
int yywrap()
{
return 1;
}

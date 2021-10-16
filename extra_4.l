%{
#include<stdio.h>
int v=0,c=0;
%}

%%

[aeiouAEIOU] {v++;}
[a-zA-Z] {c++;}
.|\n {;}
%%
void main()
{
yyin=fopen("6.c","r");
yylex();
printf("No. of vowel = %d\n",v);
printf("o. of Consomnents = %d\n",c);
}
int yywrap()
{
return 1;
}

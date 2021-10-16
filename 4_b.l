%{
#include<stdio.h>
%}
%%
((("<")|("</"))[a-zA-z0-9\=\" ]+((">")|("/>"))) { printf("%s is html tag\n",yytext); }
.|\n {;}
%%
void main(){
yyin=fopen("4.html","r");
yylex();
}
int yywrap(){
return 1;
}


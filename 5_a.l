%{
#include<stdio.h>
int w=0,l=0,c=0;
%}

%%

[ ]+ {w++;c++;}
\n {w++;l++;}
. {c++;}

%%
void main()
{
yyin=fopen("5.txt","r");
yylex();
printf("No. of lines = %d\n",l);
printf("No. of Words = %d\n",w);
printf("No. of Charecter = %d\n",c);
}
int yywrap()
{
return 1;
}

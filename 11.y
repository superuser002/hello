%{
#include<stdio.h>
%}

%token num
%%
S:E'\n'{printf("\n = %d",$1);}
 |'\n'
 ;
E:E'+'T{$$=$1+$3;}
 |T{$$=$1;}
 ;
T:T'*'F{$$=$1*$3;}
 |F{$$=$1;}
 ;
F:num{$$=$1;}
 ;
%%

void main()
{
	yyparse();
}
int yywrap()
{
	return 1;
}

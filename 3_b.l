%{
#include<stdio.h>
char c;
%}

%%
[A-Z] { c = yytext[0];
	if(c >= 'A' && c <= 'W')
	{
		c = c+3;
	}
	else
	{
		c = c+3-26;
	}
	printf("%c",c);
}
[a-z] { c = yytext[0];
	if(c >= 'a' && c <= 'w')
	{
		c = c+3;
	}
	else
	{
		c = c+3-26;
	}
	printf("%c",c);
}
%%

void main()
{
	yylex();
}

int yywrap()
{
	return 1;
}


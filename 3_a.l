%{
	#include<stdio.h>
	#include<string.h>
	int count;
	FILE *fp;
	char s[100];
%}

%%

[a-zA-Z0-9]+ {
	count = 0;
	fp = fopen("in2.txt","r");
	while((fscanf(fp, "%s", s) == 1))
	{
		if((strcmp(yytext,s)) == 0)
		{
			count++;
		}
	}

	printf("%s having occurances %d\n",yytext,count);
}

. {;}
%%

void main()
{
	extern FILE *yyin;
	yyin = fopen("in1.txt","r");
	yylex();
}

int yywrap()
{
	return 1;
}


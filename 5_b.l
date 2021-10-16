%{
	#include<stdio.h>
	int c=0,v=0;
%}

%%
[aeiouAEIOU] {++v;}
[a-zA-Z] {++c;}
.|\n {;}
%%

void main(){
	yyin=fopen("5b.txt","r");
	yylex();
	printf("\nVowel: %d",v);
	printf("\nConsonent: %d\n",c);
}
int yywrap(){
	return 1;
}


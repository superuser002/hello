%{
	#include<stdio.h>
%}

%%
"int"|"float"|"double"|"char"|"void"|"bool"|"long"|"short"|"signed"|"unsigned"|"struct"|"union"|"typedef"|"enum"|"if"|"else"|"goto"|"switch"|"for"|"while"|"break"|"continue"|"case"|"do"|"default"|"auto"|"static"|"volatile"|"register"|"extern"|"const"|"sizeof"|"return" {
printf("%s is keyword\n",yytext);
}
"#".+ {printf("%s is prepocessor/macro.\n",yytext);}
"++"|"--" {printf("%s is uniary operator.\n",yytext);}
"+="|"-="|"*="|"/="|"%=" {printf("%s is shorthand assignment operator.\n",yytext);}
"+"|"-"|"*"|"/"|"%" {printf("%s is arithmetic operator.\n",yytext);}
"<="|"<"|">"|">=" {printf("%s is Relational operator.\n",yytext);}
"=="|"!=" {printf("%s is equality operator.\n",yytext);}
"=" {printf("%s is assignment operator\n",yytext);}
"&&"|"||"|"!" {printf("%s is logical operator.\n",yytext);}
"&"|"|"|"^" {printf("%s is bitwise operator.\n",yytext);}
\".*\" {printf("%s is string constant.\n",yytext);}
[0-9]+((".")[0-9]+)? {printf("%s is numeric constant.\n",yytext);}
";"|","|"("|")"|"{"|"}" {printf("%s is delimeter.\n",yytext);}
[a-zA-Z_]+[a-zA-Z0-9_]* {printf("%s identifier\n",yytext);}
"//".* {printf("%s comments.\n",yytext);}
.|\n {;}
%%
void main()
{
	yyin=fopen("6.c","r");
	yylex();
}
int yywrap()
{
	return 1;
}

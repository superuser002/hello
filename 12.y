%{
#include<stdio.h>
#include<math.h>
%}
%union {
float f;
}
%token<f> NUM SIN COS TAN LOG
%left '+' '-'
%left '*' '/'
%right '^'
%type<f>E
%%
S:E'\n'{printf("\n=%f",$1);}
 |'\n'
 ;
E:E'+'E{$$=$1+$3;}
 |E'*'E{$$=$1*$3;}
 |E'-'E{$$=$1-$3;}
 |E'/'E{$$=$1/$3;}
 |E'^'E{$$=pow($1,$3);}
 |SIN'('E')'{$$=sin($3);}
 |COS'('E')'{$$=cos($3);}
 |TAN'('E')'{$$=tan($3);}
 |LOG'('E')'{$$=log($3);}
 |NUM{$$=$1;}
 ;
%%



void main(){

 yyparse();

}



int yywrap(){

 return 1;

}



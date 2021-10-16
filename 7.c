#include<stdio.h>
#include<stdlib.h>
#include<ctype.h>

char s[100];
int i=0;
void T();
void EP();
void TP();
void F();

void error(){
	printf("Parsing Error...\n");
	exit(0);
}

void E(){
	T();
	EP();
}

void EP(){
	if(s[i]=='+'){
		i++;
		T();
		EP();
	}
	else{
		return;
	}
}

void T(){
	F();
	TP();
}

void TP(){
	if(s[i]=='*'){
		i++;
		F();
		TP();
	}
	else{
		return;
	}
}

void F(){
	if(isalnum(s[i])){
		i++;
	}
	else if(s[i]=='('){
		i++;
		E();
		if(s[i]==')'){
			i++;
		}
		else{
			error();
		}
	}
	else{
		error();
	}
}

void main(){
	printf("Enter the string that ends with $ = ");
	gets(s);
	E();
	if(s[i]=='$'){
		printf("String Accepted\n");
	}
	else{
		error();
	}
}


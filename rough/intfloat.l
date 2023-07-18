%{
#include<stdio.h>
int i=0,f=0;
%}

%%
^[+-]?[0-9]* {i++;}
^[+-]?[0-9]*[.][0-9]+ {f++;}
%%

int yywrap() {}
void main(){
	yylex();
	printf("integer vals :%d\n float vals :%d",i,f);
}
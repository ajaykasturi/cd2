%{
#include<stdio.h>
int w=0;
%}
%%
^[6-9][0-9]{9} {printf("valid phone number");}
.* {printf("not valid");}
%%
yywrap() {}
void main(){
	yylex();
}

/*valid digit or not*/
%{
#include<stdio.h>
%}

%%
^[0-9]* {printf("digit");}
^[0-9]*[a-zA-Z] {printf("not digit");}
. ;
%%

int yywrap(){}
int main()
{
	yylex();
	return 0;
}
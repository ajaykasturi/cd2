%{
#include<stdio.h>
int flag=0;
%}
%token NUMBER;
%left '+' '-'
%left '*' '/' '%'
%left '(' ')' 
%%
ArithmeticExpression :E{printf("Result :%d\n",$$); return 0;};
E:E'+'E {$$=$1'+'$3;}
|E'-'E {$$=$1'-'$3;}
|E'*'E {$$=$1'*'$3;}
|E'/'E {$$=$1'/'$3;}
|E'%'E {$$=$1'%'$3;}
|'('E')' {$$=$2;}
|NUMBER {$$=$1;}
;
%%

void main(){
	printf("enter AE :");
	yyparse();
	if(flag==0){
		printf("entered valid");
	}
}
void yyerror(){
	printf("entered invalid");
	flag=1;
}
%{
#include<stdio.h>
int flag=0;
%}

%token NUMBER
%left '+' '-'
%left '*' '/' '%'
%left '(' ')'

%%
ArithmeticExpression: E{
	printf("\nResult=%d\n", $$);
	return 0;
	};
E:E'+'E {$$=$1+$3;}
|E'-'E {$$=$1-$3;}
|E'*'E {$$=$1*$3;}
|E'/'E {$$=$1/$3;}
|E'%'E {$$=$1%$3;}
|'('E')' {$$=$2;}
|NUMBER {$$=$1;}
;
%%

void main(){
	printf("\nenter any arthmetic expression which can have operations add,sub,mul,div,modulo and round brackets");
	yyparse();
	if(flag==0){
		printf("Entered arthmetic Expression is valid\n");
	}
}
void yyerror(){
	printf("\nEntered arthmetic Expression is Invalid\n\n");
	flag=1;
}

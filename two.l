%{
#include<stdio.h>
%}

%%
">"|"<"|">="|"<="|"=="|"!=" {printf("RELATIONAL OPERATOR %s",yytext);}
.* {printf("wrong");}
%%

int yywrap(){}
int main(){
printf("enter input");
yylex();
}

%{
#include<stdio.h>
%}

%%
"hi" {printf("BYE");}
.* {printf("wrong");}
%%

int yywrap(){}
int main(){
printf("enter input");
yylex();
}

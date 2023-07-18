%{
#include<stdio.h>
#include<string.h>
int len;
%}

%%
[a-zA-Z0-9]+ {len=yyleng;}
%%
int yywrap(){}
int main()
{
yylex();
printf("length of str= %d",len);
return 0;
}
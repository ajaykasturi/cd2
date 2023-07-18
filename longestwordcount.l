/*finding length of longest word*/
%{
#include<string.h>
int count=0;
%}

%%
[a-zA-Z]+ {if(yyleng>count) count=yyleng;}
%%

int yywrap(){}
int main()
{
yylex();
printf("longest word count :%d",count);
return 0;
}
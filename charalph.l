/*characters otherthan alphabets occur in a string*/
%{
#include<stdio.h>
%}

%%
[a-zA-Z]+ {printf("only characters r in string");}
.* {printf("characters with alphabets");}
%%

int yywrap(){}
int main()
{
yylex();
return 0;
}
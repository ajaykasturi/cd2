/*lex code to valid the domain mail of rgukt*/
%{
int e=0;
%}
%%
[a-zA-Z0-9_]+"@gmail.com"$ {e++;}
%%
int yywrap(){}
int main()
{
yylex();
if(e!=0)
	printf("valid domain email id\n");
else
	printf("not valid domain email id\n");
return 0;
}
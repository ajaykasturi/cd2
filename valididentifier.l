/*checking valid identifier or not*/
%{
int e=0;
%}
%%
^[a-zA-Z_][a-zA-Z0-9_]*$ {e++;}
%%
int yywrap(){}
int main()
{
yylex();
if(e!=0)
	printf("valid identifier\n");
else
	printf("invalid identifier \n");
return 0;
}
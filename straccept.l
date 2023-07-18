/*string is accepted if it starts with vowel*/
%{
int e=0;
%}
%%
^[aeiouAEIOU][a-zA-Z0-9._]+$ {e++;}
%%
int yywrap(){}
int main()
{
yylex();
if(e!=0)
	printf("String accepted \n");
else
	printf("String not accepted \n");
return 0;
}
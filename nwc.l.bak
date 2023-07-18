/* count no of whitespaces,tabs,characters */
%{
int n,w,c;
%}

%%
[\n] {n++;}
[^ \n\t]+ {w++; c=c+yyleng;}
. c++;
%%

int yywrap(){}
int main()
{
	extern FILE* yyin;
	yyin=fopen("input.txt", "r");
	yylex();
	printf("line=%d word=%d character=%d ",n,w,c);
}
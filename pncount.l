%{
int pcount=0,ncount=0;
%}

%%
^[-][0-9]+ {ncount++;}
[0-9]+ {pcount++;}
%%
int yywrap(){}
int main()
{
yylex();
printf("pcount=%d ncount=%d",pcount,ncount);
return 0;
}
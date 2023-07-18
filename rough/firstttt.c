#include<stdio.h>
#include<ctype.h>
void first(char[],char);
void addToResult(char[],char);
int n;
char pset[20][20],result[20];

void main(){
	char c,choice;
	int i;
	printf("enter value :");
	scanf("%d",&n);
	for(i=0;i<n;i++){
		printf("enter p%d :",i+1);
		scanf("%s",pset[i]);
	}
	do{
		printf("find first of :");
		scanf(" %c",&c);
		first(result,c);
		printf("\nFIRST(%c)={",c);
		for(i=0;result[i]!='\0';i++)
			printf(" %c ",result[i]);
			printf("}\n");
			printf("enter y to continue :");
			scanf(" %c",&choice);
	}
	while(choice=='y' || choice=='Y');
}
void first(char* Result,char c){
	int i,j,k,foundEpsilon;
	char subResult[20];
	subResult[0]='\0';
	Result[0]='\0';
	if(!(isupper(c))){
		addToResult(Result,c);
		return;
	}
	for(i=0;i<n;i++){
		if(pset[i][0]==c){
			if(pset[i][2]=='$')
				addToResult(Result,'$');
			else{
				j=2;
				while(pset[i][j]!='\0'){
					foundEpsilon=0;
					first(subResult,pset[i][j]);
					for(k=0;subResult[k]!='\0';k++)
						addToResult(Result,subResult[k]);
					for(k=0;subResult[k]!='\0';k++)
						if(subResult[k]=='$')
							foundEpsilon=1;
							break;
						if(!foundEpsilon)
							break;
						j++;
				}
			}
		}
	}
	return;
}
void addToResult(char Result[],char val){
	int i;
	for(i=0;Result[i]!='\0';i++){
		if(Result[i]==val)
			return;
	}
	Result[i]=val;
	Result[i+1]='\0';
}

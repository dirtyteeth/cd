%{
	#include<stdio.h>
	#include<stdlib.h>	
%}

%token a b 
%glr-parser
%%  

stmt: S '\n'  { printf("\n string belongs to grammar..\n"); exit(0); }
		|error '\n' { printf ("\n string doesn't belongs to grammar..\n"); exit(0); }

	;


S: a S a 
 | b S b 
 | a 
 | b 
 | 
 ;

%%	

int main(){
	printf("enter string for grammar a+b+c+d+:\n");
	yyparse();
}	

yylex(){

	char ch;
	while( ( ch=getchar() ) == ' ' );
	if(ch=='a')
	    return a;
	if(ch=='b')
	    return b;
	

}

yyerror(char *s){
	printf("%s",s);
}
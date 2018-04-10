%{
	#include<stdio.h>
	#include<stdlib.h>	
%}

%token a b c d

%%  

stmt: S '\n'  { printf("\n string belongs to grammar..\n"); exit(0); }
		|error '\n' { printf ("\n string doesn't belongs to grammar..\n"); exit(0); }

	;
S: A B C D ;
S: a A ;
S: b B ;
S: c C ;
D: d D ;
A: a ;
B: b ;
C: c ;
D: d ;

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
	if(ch=='c')
	    return c;
	if(ch=='d')
	    return d;

}

yyerror(char *s){
	printf("%s",s);
}
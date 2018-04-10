%{
#include<stdio.h>
%}
%token LETTER DIGIT
%glr-parser
%%
stmt: S {printf("valid keyword");}
S: LETTER A 
 ;
A: LETTER A
 | DIGIT A
 | LETTER
 | DIGIT
 |  
 ;
%%
main()
{
printf("Enter the string\n");
if(yyparse()==0)
printf("Success\n");
}
yywrap(){}
yyerror()
{
printf("Error\n");
} 
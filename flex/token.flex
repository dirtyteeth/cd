%{

  #include<stdio.h>
  #include<math.h>

%}

DIGIT [0-9]
ID [a-zA-Z_][a-zA-z_0-9]*

%%

{DIGIT}+ 	{
				printf( "An Integer:%s(%d)\n",yytext,atof( yytext ) );
         	}

{DIGIT}+"."{DIGIT}*		{
							printf( "A Float:%s(%g)\n",yytext,atof( yytext ) );
         			
						}

if|then|begin|end|procedure|function	{
											printf( "Keyword:%s\n",yytext );
         	
										}

{ID}	{
			printf( "An Identifier:%s\n",yytext );
         	
        }

"+"|"-"|"*"|"/" {
					printf( "An Operator:%s\n",yytext );
         	
				}

"{"[^}\n]*"}"

[ \t\n]+

.            printf( "An un recognised charcte:%s\n",yytext );

%%

main()
{
	yylex();
	return 0;
}

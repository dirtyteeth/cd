%{

  #include<stdio.h>
  #include<math.h>

%}

DEL [ \n]

%%

(("a"|"b")*("c"|"d")*)+|("a")("b")*("c")*("d")    {
													 printf( "An Type1:%s\n",yytext );
				  								   }
("0")|("1")*|("0")*("1")* {
						 printf( "An Type2:%s\n",yytext );
				  }
(("0")("1")*("2")|("0")*("2")|"1")+ {
						 printf( "An Type3:%s\n",yytext );
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

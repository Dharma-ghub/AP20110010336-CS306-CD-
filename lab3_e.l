%{
#include<stdio.h>
%}
%%
bool|int|float printf("Keyword");
[-,+]?[0-9]+ printf("digit");
[a-zA-Z]+ printf("Identifiers");
[>,<,=,>=,<=,==,!=,+]+ printf("Relational operators");
%%
int yywrap()
{
return 1;
}
main()
{
printf("Enter String\n");
yylex();
}	

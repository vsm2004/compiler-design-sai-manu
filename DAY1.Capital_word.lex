%%
[A-Z]+[\t\n ] { printf("%s is a capital word\n",yytext); }
[a-z]+[\t\n ] { printf("%s is not a capital word\n",yytext);}
. ;
%%

int main()
{
printf("Enter string:\n");
yylex();
}
int yywrap()
{
return 1;
}

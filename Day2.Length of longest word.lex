%{
int counter=0;
%}
%%
[a-zA-Z]+ {if(yyleng>counter) counter = yyleng;}
%%
int yywrap(void)
{}
int main()
{
printf("Enter Input:");
yylex();
printf("Largest string length: %d",counter);
printf("\n");
}

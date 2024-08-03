%{
%}

%%

[6-9][0-9]{9} {printf("\nMobile Number valid\n");}

.+{printf("\nMobile Number invalid\n);}

%%
int yywrap(void) {}

int main()
{
 printf("\nEnter Mobile Number: ");
 yylex();
 printf("\n");
 return 0;
}

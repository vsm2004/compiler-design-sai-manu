%{
%}

%%

[a-z.0-9_]+@[a-z]+".com"|".in" {printf("it is valid");}
.+ {printf("it is not valid");}
%%
int yywrap(){}

int main()
{
printf("enter the mail");
yylex();
}

%{
int macros=0;
int header=0;
%}
%%
^#define  {macros++;}
^#include  {header++;}
.|\n;
%%
int yywrap(){}
int main(){
yylex();
printf("\nNumber of macros:%d\n",macros);
printf("\nNumber of headers:%d\n",header);
}

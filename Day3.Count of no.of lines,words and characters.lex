%{
#include<stdio.h>

int char_count=0;
int line_count=0;
int word_count=0;
%}

%%

\n    { line_count++;char_count++;}
[\t]+  {char_count+=yyleng;}
[a-zA-Z0-9]+ {word_count++;char_count+=yyleng;}
.     {char_count++;}

%%

int yywrap(){return 1;}

int main(){
yylex();
printf("characters:%d\n",char_count);
printf("Lines:%d\n",line_count);
printf("Words:%d\n",word_count);
return 0;
}

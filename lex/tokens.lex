%{
#include<stdio.h>  
%}


%%
"//". ;        //ignore comments
[0-9]+ printf("number: %s\n",yytext);
[a-z]+ printf("word: %s\n",yytext);
%%

int main(){
    // compile to c via flex file.lex
    // compile to binary gcc file.yy.c -lfl
    // -lfl - link with libfl 
    yylex();
}
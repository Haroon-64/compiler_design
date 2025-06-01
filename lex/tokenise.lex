%{
#include <stdio.h>

%}

KEYWORD     ("int"|"return"|"if"|"else"|"while")
IDENTIFIER  [a-zA-Z_][a-zA-Z0-9_]*
NUMBER      [0-9]+
OPERATOR    [+\-*/=<>!&|]

%%
{KEYWORD}    { printf("Keyword: %s\n", yytext); }
{NUMBER}     { printf("Constant: %s\n", yytext); }
{IDENTIFIER} { printf("Identifier: %s\n", yytext); }
{OPERATOR}   { printf("Operator: %s\n", yytext); }
.            { /* Ignore other characters */ }
%%

int main() {
    yylex();
}


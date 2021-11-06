/*Definitions*/

%{
    #include <stdio.h>
    #include <string.h>
    #include <gosh.h>
    int yylex(void);
    void yyerror(char *);
%}

%union {
    char* str;
    int intConst;
    float floatConst;
    char* name;
};

/* Tokens (terminals) */
%token <int> INTEGER
%token <float> FLOAT
%token <str> STRING
%token <str> NAME

/* Types (non-terminals) */
%type <int> start
%type <int> expression
%type <goshobject> object

%start start

%% 
/*Rules*/
start : start expression '\n'
    |   expression '\n'
    ;

expression : object expression
    |   object
    |   {};
    ;

object : INTEGER {}
    |   FLOAT {}
    |   STRING {}
    ;

%% /*User routines*/
int main(void) {
    yyparse();
    return 0;
}
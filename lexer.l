/*Definitions*/

%{
    #include <stdio.h>
    #include <string.h>
    #include "y.tab.h"
    void yyerror(char *);
%}

%%
    /* Integers */
([1-9][0-9]*)|0 {
    tokenAnnounce("INTEGER", yytext);
    yylval.intConst = atoi(yytext);
    return INTEGER;
}

[a-z]|[A-Z]([a-z]|[A-Z]|[1-9])* {
    tokenAnnounce("NAME")
    yylval.name = yytext;
    return NAME;
}

\n {
    tokenAnnounce("NEWLINE", "\\n");
    return *yytext;
}

. {
    yyerror("Invalid character.");
}

%% /*User routines*/
void yyerror(char *s) {
      fprintf(stderr, "Error on line %d: '%s'\n%s.\n", yylineno, yytext, s);
}

void tokenAnnounce(char *t, char *text){
    printf("TOKEN: %s, LEXEME: %s", t, text);
}

int yywrap(void) {
   return 1;
}
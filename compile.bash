#/bin/bash
echo "Compiling lex and yacc..."
yacc -d parser.y
echo "Yacc - completed!"
flex lexer.l
echo "Flex - completed!"
cc lex.yy.c y.tab.c -lm -o gosh
echo "Compilation - completed!"
echo "Done!"
./gosh


echo off
echo "Compiling lex and yacc..."
yacc -d parser.y
echo "Yacc - completed!"
flex lexer.l
echo "Flex - completed!"
gcc lex.yy.c y.tab.c -lm -o gosh.exe
echo "Compilation - completed!"
echo "Done!"
gosh.exe
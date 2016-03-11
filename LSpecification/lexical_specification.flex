
%%
/*-*
 * LEXICAL FUNCTIONS:
 */

%line
%column
%standalone
%class AnalizadorLexico


//Regular Expressions to identify numeric values
Integer = [+-]?[0-9]+
HexaInteger = [$]?[A-F0-9]+
Real = [+-]?[0-9]+.[0-9]+
HexaReal = [+-]?[A-F0-9]+.[A-F0-9]+

//Regular expression to identify "identifier"
Ident = [A-Za-z_][A-Za-z_0-9]+

//Regular expression to identify "string_const"

Str = '[\w\s\W]+'

//Regular expressions to identify comments

/* This regular expresions are used to 
start a new state where the lexical analyzer 
can't identify any patron */

StartComm = ((\(\*)|(\{))
FinishCom = ((\*\))|(\}))


//Regular expression to identify the end of line
EndLine = \r | \n | \r\n
Space = " "
Tab = \t

%state comment

%% 
/*-*
 * PATTERN DEFINITIONS:
 */
 
	<YYINITIAL>{
		/* Reserved words */
		"program" {System.out.println("Token: " + yytext());}
		"begin" {System.out.println("Token: " + yytext());}
		"end" {System.out.println("Token: " + yytext());}
		"const" {System.out.println("Token: " + yytext());}
		"var" {System.out.println("Token: " + yytext());}
		"procedure" {System.out.println("Token: " + yytext());}
		"function" {System.out.println("Token: " + yytext());}
		"type" {System.out.println("Token: " + yytext());}
		"array" {System.out.println("Token: " + yytext());}
		"of" {System.out.println("Token: " + yytext());}
		"record" {System.out.println("Token: " + yytext());}
		"if" {System.out.println("Token: " + yytext());}
		"then" {System.out.println("Token: " + yytext());}
		"while" {System.out.println("Token: " + yytext());}
		"do" {System.out.println("Token: " + yytext());}
		"for" {System.out.println("Token: " + yytext());}
		"to" {System.out.println("Token: " + yytext());}
		"case" {System.out.println("Token: " + yytext());}
		"of" {System.out.println("Token: " + yytext());}
		"INTEGER" {System.out.println("Token: " + yytext());}
		"REAL" {System.out.println("Token: " + yytext());}
		"CHARACTER" {System.out.println("Token: " + yytext());}
		/* Other symbols */
		":" {System.out.println("Token: " + yytext());}
		";" {System.out.println("Token: " + yytext());}
		"." {System.out.println("Token: " + yytext());}
		"," {System.out.println("Token: " + yytext());}
		"=" {System.out.println("Token: " + yytext());}
		"(" {System.out.println("Token: " + yytext());}
		")" {System.out.println("Token: " + yytext());}
		":=" {System.out.println("Token: " + yytext());}
		"<" {System.out.println("Token: " + yytext());}
		">" {System.out.println("Token: " + yytext());}
		"<=" {System.out.println("Token: " + yytext());}
		">=" {System.out.println("Token: " + yytext());}
		"<>" {System.out.println("Token: " + yytext());}
		"+" {System.out.println("Token: " + yytext());}
		"-" {System.out.println("Token: " + yytext());}
		"*" {System.out.println("Token: " + yytext());}
		"div" {System.out.println("Token: " + yytext());}
		"mod" {System.out.println("Token: " + yytext());}
		"or" {System.out.println("Token: " + yytext());}
		"and" {System.out.println("Token: " + yytext());}
		"not" {System.out.println("Token: " + yytext());}
		
		{Ident} {System.out.println("Identificador: " + yytext());}
		{Integer} {System.out.println("Constante entera: " + yytext());}
		{Real} {System.out.println("Constante Real: " + yytext());}
		{HexaInteger} {System.out.println("Constante Entera Hexa: " + yytext());}
		{HexaReal} {System.out.println("Constante Real Hexa: " + yytext());}
		{Str} 	{System.out.println("Cadena de caracteres" + yytext());}
		{EndLine} {}
		{Space} {}
		{Tab} {}
		{StartComm} {
			System.out.println("Inicio de comentario");
			yybegin(comment);}
		
		
	}
	
	<comment>{
		{FinishCom} {
			System.out.println("Fin de comentario");
			yybegin(YYINITIAL);}
	}
	
	

	






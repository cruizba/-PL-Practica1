
/********************************************************************/
/********************************************************************/
/***** 		Autores: Carlos Ruiz Ballesteros (GII + MAT)		*****/
/*****			 Hector Ruiz Poveda	(GII + GIS)      			*****/
/********************************************************************/
/********************************************************************/

import java_cup.runtime.*;
%%
/*-*
 * LEXICAL FUNCTIONS:
 */

%line
%column
%cup
%class AnalizadorLexico


//Regular Expressions to identify numeric values
Integer = [+-]?[0-9]+
HexaInteger = [$]?[A-F0-9]+
Real = [+-]?[0-9]+.[0-9]+
HexaReal = [$]?[+-]?[A-F0-9]+.[A-F0-9]+

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
		"program" 	{return new Symbol(sym.program, yyline, yycolumn, yytext());}
		"begin" 	{return new Symbol(sym.begin, yyline, yycolumn, yytext());}
		"end" 		{return new Symbol(sym.end, yyline, yycolumn, yytext());}
		"const" 	{return new Symbol(sym.const_tok, yyline, yycolumn, yytext());}
		"var" 		{return new Symbol(sym.var, yyline, yycolumn, yytext());}
		"procedure" {return new Symbol(sym.procedure, yyline, yycolumn, yytext());}
		"function" 	{return new Symbol(sym.function, yyline, yycolumn, yytext());}
		//"type" 		{return new Symbol(sym.type, yyline, yycolumn, yytext());}
		//"array" 	{return new Symbol(sym.array, yyline, yycolumn, yytext());}
		//"of" 		{return new Symbol(sym.of, yyline, yycolumn, yytext());}
		//"record"	{return new Symbol(sym.record, yyline, yycolumn, yytext());}
		//"if" 		{return new Symbol(sym.if_tok, yyline, yycolumn, yytext());}
		//"then" 		{return new Symbol(sym.then, yyline, yycolumn, yytext());}
		//"while" 	{return new Symbol(sym.while_tok, yyline, yycolumn, yytext());}
		//"do" 		{return new Symbol(sym.do_tok, yyline, yycolumn, yytext());}
		//"for" 		{return new Symbol(sym.for_tok, yyline, yycolumn, yytext());}
		//"to" 		{return new Symbol(sym.to, yyline, yycolumn, yytext());}
		//"case" 		{return new Symbol(sym.case_tok, yyline, yycolumn, yytext());}
		"INTEGER" 	{return new Symbol(sym.integer, yyline, yycolumn, yytext());}
		"REAL" 		{return new Symbol(sym.real, yyline, yycolumn, yytext());}
		"CHARACTER" {return new Symbol(sym.character, yyline, yycolumn, yytext());}

		/* Other symbols */
		":" 		{return new Symbol(sym.two_points, yyline, yycolumn, yytext());}
		";" 		{return new Symbol(sym.semicolon, yyline, yycolumn, yytext());}
		"." 		{return new Symbol(sym.dot, yyline, yycolumn, yytext());}
		"," 		{return new Symbol(sym.coma, yyline, yycolumn, yytext());}
		"=" 		{return new Symbol(sym.equal, yyline, yycolumn, yytext());}
		"(" 		{return new Symbol(sym.open_parenthesis, yyline, yycolumn, yytext());}
		")" 		{return new Symbol(sym.closed_parenthesis, yyline, yycolumn, yytext());}
		":=" 		{return new Symbol(sym.assignment, yyline, yycolumn, yytext());}
		"<" 		{return new Symbol(sym.lt, yyline, yycolumn, yytext());}
		">" 		{return new Symbol(sym.gt, yyline, yycolumn, yytext());}
		"<=" 		{return new Symbol(sym.le, yyline, yycolumn, yytext());}
		">=" 		{return new Symbol(sym.ge, yyline, yycolumn, yytext());}
		"<>" 		{return new Symbol(sym.not_equal, yyline, yycolumn, yytext());}
		"+" 		{return new Symbol(sym.plus, yyline, yycolumn, yytext());}
		"-" 		{return new Symbol(sym.minus, yyline, yycolumn, yytext());}
		"*" 		{return new Symbol(sym.multip, yyline, yycolumn, yytext());}
		"div" 		{return new Symbol(sym.div, yyline, yycolumn, yytext());}
		"mod" 		{return new Symbol(sym.mod, yyline, yycolumn, yytext());}
		"or" 		{return new Symbol(sym.or, yyline, yycolumn, yytext());}
		"and" 		{return new Symbol(sym.and, yyline, yycolumn, yytext());}
		"not" 		{return new Symbol(sym.not, yyline, yycolumn, yytext());}
		
		{Ident} 	{return new Symbol(sym.identifier, yyline, yycolumn, yytext());}
		{Integer} 	{return new Symbol(sym.numeric_integer_const, yyline, yycolumn, yytext());}
		{Real}		{return new Symbol(sym.numeric_real_const, yyline, yycolumn, yytext());}
		{HexaInteger} 
					{return new Symbol(sym.numeric_integer_const, yyline, yycolumn, yytext());}
		{HexaReal} 	{return new Symbol(sym.numeric_real_const, yyline, yycolumn, yytext());}
		{Str} 		{return new Symbol(sym.string_const, yyline, yycolumn, yytext());}
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
	
	

	






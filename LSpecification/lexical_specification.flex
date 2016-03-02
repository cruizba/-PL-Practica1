import java_cup.runtime.*;

%%

%line
%column
%cup
%class AnalizadorLexico
%{ 

%}

%%

Integer = [+-]?[0-9]+
HexaInteger = [$]?[A-F0-9]+
Real = [+-]?[0-9]+.[0-9]+
HexaReal = [+-]?[A-F0-9]+.[A-F0-9]+





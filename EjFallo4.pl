program EjemploFallo4;
var
s : string
longitud : integer;
i : integer
begin
s := 'ABCDEF';
longitud := s[0];
writeln('La longitud original es : ',longitud);
for i:=1 to longitud do
writeln('Componente ',i:2,' : ',s[i]);
s[0] := Char(3);
s[2] := 'b';
end.
program EjemploFallo2;
const
N = 7;
type
arr = array [1..10] of string;
var
lista: arr;
i: integer;
j: integer;
aux: integer;
aux1,aux2: string; {Usamos dos variables auxiliares para "copiar y pegar" los datos del array}
begin
	for i := 1 to 10 do
	begin
		write ('Introduzca el dato ',i,' de ',10,':');
		readln (lista[i]);
	end {Una vez tenemos nuestro array lleno de datos, ordenamos}

	for i:=1 to 10 do {Repetimos el procedimiento tantas veces como elementos haya en el array}
	for j:=1 to 10 do
	begin
		aux:=j + 1;
		if (lista[j] > lista[aux]) then
		begin
			aux1:=lista[j];
			aux2:=lista[aux];
			lista[j]:=aux2;
			lista[aux:=aux1;
		end
	end
	for i:=1 to 10 do
	writeln (lista[i]); {Mostramos el array ordenado}
end.
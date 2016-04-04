program EjemploFallo1; 
function areaCuadrado ( lado: REAL ) : REAL ;
var
	resultado: REAL;
begin
	resultado := +0.0;
	resultado := lado * lado;
	areaCuadrado := resultado; 
end; 
procedure intercambio ( v1, v2: INTEGER )  ;
var
	aux: INTEGER;
begin
	aux := 0;
	aux := v1;
	v1 := v2;
	v2 := aux;
end;
procedure pruebasif ();
const
	vConst1 = 10;
	vConst2 = 20;
var
	valor1: INTEGER
	valor2: INTEGER;
begin
	valor1 := vConst;
	valor2 := vCosnt;
	if(valor1 < valor2) then
		intercambio(valor1, valor2);
	else
		intercambio(valor2, valor1);
		
	case valor2 of
		10: intercambio(valor1, valor2);
		20: intercambio(valor2, valor1);
	end
end;

procedure pruebasBucles();
const
	vConst1 = 10;
	vConst2 = 20;
var
	valor1: INTEGER;
	valor2: INTEGER;
	inc: INTEGER;
	inc2: INTERGER;
	inc3: INTEGER;
begin
	valor1 := vConst1;
	inc := 0;
	inc3 := 0;
	while(inc < valor1) do
		inc := inc + 1;
	for inc2 := 0 to vConst2 do
	begin	
		inc := inc + 1;
		inc3 := inc3 + 1;
	end
end;
type 
	vector = array [1..3]of REAL;
	matriz = array [1..3] of vector;
	TRegistro = record
		 campo1 : matriz;
		 campo2 : INTEGER
	end;
var
	medida: REAL;
	valor1, valor2: INTEGER;
begin
	medida := $4.A;
	valor1 := -3;
	valor2 := $F6;
	medida := areaCuadrado( medida );
	intercambio(valor1, valor2);
end.
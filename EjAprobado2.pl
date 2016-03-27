program EJER21; 

        var T1,T2:REAL;
        var T1C,T2F:REAL;
begin
        T1:=32;
        T2:=10;

        T1C:=T1 - 32;
        T2F:=T2 + 32;

        WRITE ('TEMPERATURA EQUIVALENTE: ');
        WRITE (T1:3:0);  WRITE ('º Fahrenheit - ');
        WRITE (T1C:3:0); WRITELN ('º Celsius');

        WRITE ('TEMPERATURA EQUIVALENTE: ');
        WRITE (T2:3:0);  WRITE ('º Celsius - ');
        WRITE (T2F:3:0); WRITE ('º Fahrenheit');
end
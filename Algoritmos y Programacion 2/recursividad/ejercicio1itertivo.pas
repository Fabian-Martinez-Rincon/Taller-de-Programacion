program SumatoriaIterativa;

function sumatoria_iter(N: integer): integer;
var
    i, suma: integer;
begin
    suma := 0;

    for i := 1 to N do
        suma := suma + i;

    sumatoria_iter := suma;
end;

var
    num: integer;

begin
    writeln('Ingrese un numero natural mayor a 0: ');
    readln(num);

    writeln('La sumatoria es: ', sumatoria_iter(num));
end.
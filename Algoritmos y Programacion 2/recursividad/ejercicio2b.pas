const
    DIMF = 100;

type
    vector = array[1..DIMF] of real;

function sumaTotal_iter(v: vector): real;
var
    i: integer;
    suma: real;
begin
    suma := 0;

    for i := 1 to DIMF do
        suma := suma + v[i];

    sumaTotal_iter := suma;
end;

var
    v: vector;
    i: integer;

begin
    { Carga del vector }
    for i := 1 to DIMF do
    begin
        writeln('Ingrese un valor: ');
        readln(v[i]);
    end;

    writeln('Suma total (iterativa): ', sumaTotal_iter(v):0:2);
end.
const
    DIMF = 100;

type
    vector = array[1..DIMF] of real;

function sumaTotal_rec(v: vector; i: integer): real;
begin
    if i = 1 then
        sumaTotal_rec := v[1]
    else
        sumaTotal_rec := sumaTotal_rec(v, i - 1) + v[i];
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

    writeln('Suma total (recursiva): ', sumaTotal_rec(v, DIMF):0:2);
end.
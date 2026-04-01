program Actividad3;

const
    DIMF = 5;

type
    vector = array[1..DIMF] of real;

procedure imprimirVector(v: vector; i: integer);
begin
    if i <= DIMF then
    begin
        writeln(v[i]:0:2);
        imprimirVector(v, i + 1);
    end;
end;

procedure imprimirVectorInverso(v: vector; i: integer);
begin
    if i <= DIMF then
    begin
        imprimirVectorInverso(v, i + 1);
        writeln(v[i]:0:2);
    end;
end;

var
    v: vector;
    i: integer;

begin
    { Cargar vector }
    for i := 1 to DIMF do
    begin
        writeln('Ingrese valor: ');
        readln(v[i]);
    end;

    writeln('--- Orden normal ---');
    imprimirVector(v, 1);

    writeln('--- Orden inverso ---');
    imprimirVectorInverso(v, 1);
end.
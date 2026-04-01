program Actividad2BusquedaDicotomica;

const
    DIMF = 10;
    MAX_RANDOM = 20; { rango para generar valores al azar }

type
    vector = array[1..DIMF] of integer;

procedure intercambiar(var a, b: integer);
var
    aux: integer;
begin
    aux := a;
    a := b;
    b := aux;
end;

procedure ordenarPorSeleccion(var v: vector);
var
    i, j, posMin: integer;
begin
    for i := 1 to DIMF - 1 do
    begin
        posMin := i;
        for j := i + 1 to DIMF do
            if v[j] < v[posMin] then
                posMin := j;
        intercambiar(v[i], v[posMin]);
    end;
end;

function busquedaDicotomica(v: vector; buscar, min, max: integer): integer;
var
    medio: integer;
begin
    if min > max then
        busquedaDicotomica := -1
    else
    begin
        medio := (min + max) div 2;
        if v[medio] = buscar then
            busquedaDicotomica := medio
        else if buscar < v[medio] then
            busquedaDicotomica := busquedaDicotomica(v, buscar, min, medio - 1)
        else
            busquedaDicotomica := busquedaDicotomica(v, buscar, medio + 1, max);
    end;
end;

procedure cargarVectorRandom(var v: vector);
var
    i: integer;
begin
    randomize;
    for i := 1 to DIMF do
        v[i] := random(MAX_RANDOM) + 1;
end;

procedure imprimirVector(v: vector);
var
    i: integer;
begin
    for i := 1 to DIMF do
        write(v[i], ' ');
    writeln;
end;

var
    v: vector;
    i, num, pos: integer;
    encontrados, noEncontrados: integer;
begin
    cargarVectorRandom(v);
    ordenarPorSeleccion(v);

    writeln('Vector ordenado:');
    imprimirVector(v);
    writeln;

    encontrados := 0;
    noEncontrados := 0;

    for i := 1 to 10 do
    begin
        num := random(MAX_RANDOM) + 1;
        write('Numero generado: ', num, ' -> ');

        pos := busquedaDicotomica(v, num, 1, DIMF);

        if pos <> -1 then
        begin
            writeln('Encontrado en posicion ', pos);
            encontrados := encontrados + 1;
        end
        else
        begin
            writeln('No encontrado');
            noEncontrados := noEncontrados + 1;
        end;
    end;

    writeln;
    writeln('Cantidad de veces encontrado: ', encontrados);
    writeln('Cantidad de veces no encontrado: ', noEncontrados);
end.
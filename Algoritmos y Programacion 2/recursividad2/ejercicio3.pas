program Actividad3Busqueda;

const
    DIMF = 10;
    MAX_RANDOM = 20;

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

{---------------------------------------------------}
{ Búsqueda secuencial con corte porque el vector    }
{ está ordenado                                     }
{---------------------------------------------------}
function buscarConOrden(v: vector; dato: integer; var comparaciones: integer): integer;
var
    i: integer;
begin
    i := 1;
    comparaciones := 0;

    while (i <= DIMF) and (v[i] < dato) do
    begin
        comparaciones := comparaciones + 1;
        i := i + 1;
    end;

    if i <= DIMF then
        comparaciones := comparaciones + 1;

    if (i <= DIMF) and (v[i] = dato) then
        buscarConOrden := i
    else
        buscarConOrden := -1;
end;

{---------------------------------------------------}
{ Búsqueda dicotómica recursiva con comparaciones   }
{---------------------------------------------------}
function busquedaDicotomica(v: vector; buscar, min, max: integer; var comparaciones: integer): integer;
var
    medio: integer;
begin
    if min > max then
        busquedaDicotomica := -1
    else
    begin
        medio := (min + max) div 2;
        comparaciones := comparaciones + 1;

        if v[medio] = buscar then
            busquedaDicotomica := medio
        else if buscar < v[medio] then
            busquedaDicotomica := busquedaDicotomica(v, buscar, min, medio - 1, comparaciones)
        else
            busquedaDicotomica := busquedaDicotomica(v, buscar, medio + 1, max, comparaciones);
    end;
end;

var
    v: vector;
    i, num: integer;
    posOrden, posDic: integer;
    compOrden, compDic: integer;

begin
    cargarVectorRandom(v);
    ordenarPorSeleccion(v);

    writeln('Vector ordenado: ');
    imprimirVector(v);
    writeln;

    for i := 1 to 10 do
    begin
        num := random(MAX_RANDOM) + 1;

        compOrden := 0;
        compDic := 0;

        posOrden := buscarConOrden(v, num, compOrden);
        posDic := busquedaDicotomica(v, num, 1, DIMF, compDic);

        writeln('Numero buscado: ', num);

        if posOrden <> -1 then
            writeln('  BuscarConOrden: encontrado en pos ', posOrden, ' | comparaciones: ', compOrden)
        else
            writeln('  BuscarConOrden: no encontrado | comparaciones: ', compOrden);

        if posDic <> -1 then
            writeln('  BusquedaDicotomica: encontrado en pos ', posDic, ' | comparaciones: ', compDic)
        else
            writeln('  BusquedaDicotomica: no encontrado | comparaciones: ', compDic);

        writeln;
    end;
end.
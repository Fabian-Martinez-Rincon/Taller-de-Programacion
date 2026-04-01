program act4;
uses math;

const
    DIMF = 500;
    CANT_BUSQUEDAS = 100;
    MAX_RANDOM = 500;

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
    totalCompOrden, totalCompDic: longint;
    cantEncontradosOrden, cantEncontradosDic: integer;
    promOrden, promDic: real;

begin
    cargarVectorRandom(v);
    ordenarPorSeleccion(v);

    totalCompOrden := 0;
    totalCompDic := 0;
    cantEncontradosOrden := 0;
    cantEncontradosDic := 0;

    for i := 1 to CANT_BUSQUEDAS do
    begin
        num := random(MAX_RANDOM) + 1;

        compOrden := 0;
        compDic := 0;

        posOrden := buscarConOrden(v, num, compOrden);
        posDic := busquedaDicotomica(v, num, 1, DIMF, compDic);

        if posOrden <> -1 then
        begin
            totalCompOrden := totalCompOrden + compOrden;
            cantEncontradosOrden := cantEncontradosOrden + 1;
        end;

        if posDic <> -1 then
        begin
            totalCompDic := totalCompDic + compDic;
            cantEncontradosDic := cantEncontradosDic + 1;
        end;
    end;

    if cantEncontradosOrden <> 0 then
        promOrden := totalCompOrden / cantEncontradosOrden
    else
        promOrden := 0;

    if cantEncontradosDic <> 0 then
        promDic := totalCompDic / cantEncontradosDic
    else
        promDic := 0;

    writeln('--- RESULTADOS ---');
    writeln('Cantidad de encontrados con busqueda ordenada: ', cantEncontradosOrden);
    writeln('Cantidad de encontrados con busqueda dicotomica: ', cantEncontradosDic);
    writeln;

    writeln('Promedio de comparaciones (busqueda ordenada): ', promOrden:0:2);
    writeln('Promedio de comparaciones (busqueda dicotomica): ', promDic:0:2);
    writeln;

    writeln('Valor esperado para busqueda secuencial: ', DIMF / 2:0:2);
    writeln('Valor esperado para busqueda dicotomica (log2(N)): ', log2(DIMF):0:4);
end.
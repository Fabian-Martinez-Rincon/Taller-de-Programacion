program Actividad6;

const
    dimF = 3;
    valorAlto = 9999;

type
    rango = 1..dimF;

    lista = ^nodo;
    nodo = record
        dato: integer;
        sig: lista;
    end;

    vectorListas = array[rango] of lista;

procedure agregarAtras(var l, ult: lista; valor: integer);
var
    nue: lista;
begin
    new(nue);
    nue^.dato := valor;
    nue^.sig := nil;

    if l = nil then
        l := nue
    else
        ult^.sig := nue;

    ult := nue;
end;

procedure cargarLista(var l: lista; a, b, c: integer);
var
    ult: lista;
begin
    l := nil;
    ult := nil;
    agregarAtras(l, ult, a);
    agregarAtras(l, ult, b);
    agregarAtras(l, ult, c);
end;

procedure cargarVector(var v: vectorListas);
begin
    cargarLista(v[1], 1, 4, 7);
    cargarLista(v[2], 2, 5, 8);
    cargarLista(v[3], 3, 6, 9);
end;

procedure buscarPosMinRec(v: vectorListas; i: integer; var posMin: integer; var min: integer);
begin
    if i <= dimF then
    begin
        if (v[i] <> nil) and (v[i]^.dato < min) then
        begin
            min := v[i]^.dato;
            posMin := i;
        end;
        buscarPosMinRec(v, i + 1, posMin, min);
    end;
end;

procedure buscarMinimoRec(var v: vectorListas; var min: integer);
var
    posMin: integer;
begin
    min := valorAlto;
    posMin := -1;

    buscarPosMinRec(v, 1, posMin, min);

    if posMin <> -1 then
        v[posMin] := v[posMin]^.sig;
end;

var
    v: vectorListas;
    min: integer;
begin
    cargarVector(v);

    buscarMinimoRec(v, min);
    while min <> valorAlto do
    begin
        writeln(min);
        buscarMinimoRec(v, min);
    end;
end.
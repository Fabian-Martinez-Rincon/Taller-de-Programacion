program Actividad5;

type
    lista = ^nodo;
    nodo = record
        dato: real;
        sig: lista;
    end;

procedure agregarAtras(var l, ult: lista; valor: real);
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

procedure imprimirLista(l: lista);
begin
    if l <> nil then
    begin
        writeln(l^.dato:0:2);
        imprimirLista(l^.sig);
    end;
end;

procedure imprimirListaInversa(l: lista);
begin
    if l <> nil then
    begin
        imprimirListaInversa(l^.sig);
        writeln(l^.dato:0:2);
    end;
end;

var
    l, ult: lista;
    i: integer;
    valor: real;

begin
    l := nil;
    ult := nil;

    for i := 1 to 10 do
    begin
        writeln('Ingrese valor: ');
        readln(valor);
        agregarAtras(l, ult, valor);
    end;

    writeln('--- Orden de carga ---');
    imprimirLista(l);

    writeln('--- Orden inverso ---');
    imprimirListaInversa(l);
end.
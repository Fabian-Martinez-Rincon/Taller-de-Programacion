program Actividad5;

type
    lista = ^nodo;

    nodo = record
        dato: real;
        sig: lista;
    end;

procedure agregarAdelante(var l: lista; valor: real);
var
    nue: lista;
begin
    new(nue);
    nue^.dato := valor;
    nue^.sig := l;
    l := nue;
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
    l: lista;
    i: integer;
    valor: real;

begin
    l := nil;

    { Cargar lista }
    for i := 1 to 10 do
    begin
        writeln('Ingrese valor: ');
        readln(valor);
        agregarAdelante(l, valor);
    end;

    writeln('--- Orden normal ---');
    imprimirLista(l);

    writeln('--- Orden inverso ---');
    imprimirListaInversa(l);
end.
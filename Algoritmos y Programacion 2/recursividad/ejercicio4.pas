program Actividad4;

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

function sumaTotal_rec(l: lista): real;
begin
    if l = nil then
        sumaTotal_rec := 0
    else
        sumaTotal_rec := l^.dato + sumaTotal_rec(l^.sig);
end;

var
    l: lista;
    i: integer;
    valor: real;

begin
    l := nil;

    { Cargar lista }
    for i := 1 to 100 do
    begin
        writeln('Ingrese valor: ');
        readln(valor);
        agregarAdelante(l, valor);
    end;

    writeln('Suma total: ', sumaTotal_rec(l):0:2);
end.
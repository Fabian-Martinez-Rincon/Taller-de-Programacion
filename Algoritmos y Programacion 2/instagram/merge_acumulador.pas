program Fabian_Doce;
const
    cantidad = 4;
    valorAlto = 9999;
type
    sucursales = 0..cantidad; { 0 es corte }
    fechas = record
        dia: 1..31;
        mes: 1..12;
        anio: 2000..2030;
    end;

    venta = record
        fecha: fechas;
        codigo: Integer;
        sucursal: sucursales;
        cantidad_vendida: integer;
    end;

    lista = ^nodo;
    nodo = record
        dato: venta;
        sig: lista;
    end;

    venta_nueva = record
        codigo: integer;
        cant: integer;
    end;

    lista_nueva = ^nodo2;
    nodo2 = record
        dato: venta_nueva;
        sig: lista_nueva;
    end;

    vector = array [1..cantidad] of lista;

procedure Inicializar_Vector(var v: vector);
var
    i: Integer;
begin
    for i := 1 to cantidad do
        v[i] := Nil;
end;

procedure leerVenta(var vent: venta);
begin
    vent.sucursal := random(5);   { 0..4 }
    writeln('Venta: ', vent.sucursal);

    if (vent.sucursal <> 0) then
    begin
        vent.fecha.dia := 1 + random(31);
        vent.fecha.mes := 1 + random(12);
        vent.fecha.anio := 2000 + random(31);
        writeln('Fecha: ', vent.fecha.dia, '/', vent.fecha.mes, '/', vent.fecha.anio);

        vent.codigo := random(100);
        writeln('Codigo: ', vent.codigo);

        vent.cantidad_vendida := random(100);
        writeln('Cantidad Vendida: ', vent.cantidad_vendida);
    end;

    writeln('______________________________');
end;

procedure InsertarElemento(var pri: lista; vent: venta);
var
    ant, nue, act: lista;
begin
    new(nue);
    nue^.dato := vent;

    act := pri;
    ant := pri;

    while (act <> NIL) and (act^.dato.codigo < vent.codigo) do
    begin
        ant := act;
        act := act^.sig;
    end;

    if (ant = act) then
        pri := nue
    else
        ant^.sig := nue;

    nue^.sig := act;
end;

procedure Cargar_Vector(var v: vector);
var
    vent: venta;
begin
    writeln('______________________________');
    leerVenta(vent);
    while (vent.sucursal <> 0) do
    begin
        InsertarElemento(v[vent.sucursal], vent);
        leerVenta(vent);
    end;
end;

procedure minimo(var v: vector; var x: venta_nueva);
var
    i, posMin: integer;
begin
    x.codigo := valorAlto;
    posMin := -1;

    for i := 1 to cantidad do
    begin
        if (v[i] <> NIL) and (v[i]^.dato.codigo < x.codigo) then
        begin
            posMin := i;
            x.codigo := v[i]^.dato.codigo;
        end;
    end;

    if (posMin <> -1) then
    begin
        x.cant := v[posMin]^.dato.cantidad_vendida;
        v[posMin] := v[posMin]^.sig;
    end;
end;

procedure AgregarAlFinal2(var pri, ult: lista_nueva; elemento: venta_nueva);
var
    nue: lista_nueva;
begin
    new(nue);
    nue^.dato := elemento;
    nue^.sig := NIL;

    if pri <> Nil then
        ult^.sig := nue
    else
        pri := nue;

    ult := nue;
end;

procedure merge(var l: lista_nueva; var v: vector);
var
    ult: lista_nueva;
    min, actual: venta_nueva;
begin
    l := nil;
    ult := nil;

    minimo(v, min);
    while (min.codigo <> valorAlto) do
    begin
        actual.codigo := min.codigo;
        actual.cant := 0;

        while (min.codigo <> valorAlto) and (min.codigo = actual.codigo) do
        begin
            actual.cant := actual.cant + min.cant;
            minimo(v, min);
        end;

        AgregarAlFinal2(l, ult, actual);
    end;
end;

procedure ImprimirLista(l: lista_nueva);
begin
    writeln('______________________________');
    while l <> nil do
    begin
        writeln('Codigo: ', l^.dato.codigo);
        writeln('Cantidad total vendida: ', l^.dato.cant);
        writeln('______________________________');
        l := l^.sig;
    end;
end;

var
    v: vector;
    l: lista_nueva;
begin
    randomize;
    Inicializar_Vector(v);

    writeln('A)');
    Cargar_Vector(v);

    merge(l, v);

    writeln;
    writeln('B)');
    ImprimirLista(l);
end.
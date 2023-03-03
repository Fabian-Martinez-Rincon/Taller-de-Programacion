{12. Implementar un programa que procese la información de las ventas de productos de una
librería que tiene 4 sucursales. De cada venta se lee fecha de venta, código del producto
vendido, código de sucursal y cantidad vendida. El ingreso de las ventas finaliza cuando se
lee el código de sucursal 0.
Implementar un programa que:
a. Almacene las ventas ordenadas por código de producto y agrupados por sucursal,
en una estructura de datos adecuada.
b. Contenga un módulo que reciba la estructura generada en el punto a y retorne
una estructura donde esté acumulada la cantidad total vendida para cada código de
producto.}
program Fabian_Doce;
const
    cantidad = 4;
type
    sucursales = 0..cantidad; //Pongo el 0 por el corte
    fechas = record     
        dia:1..31;
        mes:1..12;
        anio:2000..2030;
    end;
    venta = record
        fecha:fechas;
        codigo:Integer;
        sucursal:sucursales;
        cantidad_vendida:integer;
    end;
    lista = ^nodo;
    nodo = record
        dato:venta;
        sig:lista;
    end;
    venta_nueva = record
        codigo:integer;
        cant:integer;
    end;

    lista_nueva =^nodo2;
    nodo2= record
        dato:venta_nueva;
        sig:lista_nueva;
    end;

    vector = array [1..cantidad] of lista;
//____________________________________________________________________________
procedure Inicializar_Vector(var v:vector);
var
    i:Integer;
begin
    for i:=1 to cantidad do
    begin
        v[i]:=Nil;
    end;
end;
//____________________________________________________________________________
procedure leerVenta(var vent:venta);
begin
    vent.sucursal:=random(4);   
    writeln('Venta: ',vent.sucursal);
    if (vent.sucursal <> 0) then
    begin
        vent.fecha.dia:=1+random(31); 
        vent.fecha.mes:=1+random(12);
        vent.fecha.anio:=2000+random(31);
        writeln('Fecha: ',vent.fecha.dia,'/',vent.fecha.mes,'/',vent.fecha.anio);
        vent.codigo:=random(100);
        WriteLn('Codigo: ', vent.codigo);
        vent.cantidad_vendida:=random(100);
        WriteLn('Cantidad Vendida: ', vent.cantidad_vendida);
    end;
    WriteLn('______________________________');
end;
//____________________________________________________________________________
Procedure InsertarElemento ( var pri: lista; vent: venta);
var 
    ant, nue, act: lista;
begin
    new (nue);
    nue^.dato := vent;
    act := pri;
    ant := pri;
    while (act<>NIL) and (act^.dato.codigo < vent.codigo) do 
    begin
        ant := act;
        act := act^.sig ;
    end;
    if (ant = act)  then 
        pri := nue   
    else  
        ant^.sig  := nue; 
    nue^.sig := act ;
end;
//____________________________________________________________________________
procedure Cargar_Vector(var v:vector);
var
    vent:venta;
begin
    WriteLn('______________________________');
    leerVenta(vent);
    while (vent.sucursal <> 0) do
    begin
        InsertarElemento(v[vent.sucursal],vent);
        leerVenta(vent);
    end;
end;
//____________________________________________________________________________
procedure minimo(var v : vector; var x : venta_nueva);
var 
  i, Pos_Min : integer;
begin
	x.codigo := 9999;
	Pos_Min := -1;
	for i := 1 to cantidad do 
		if (v[i] <> NIL) and (v[i]^.dato.codigo <= x.codigo) then 
		begin
			Pos_Min := i;	
			x.codigo := v[i]^.dato.codigo;
		end;

	if (Pos_Min <> -1) then
	begin
        x.cant := v[Pos_Min]^.dato.cantidad_vendida;
		v[Pos_Min] := v[Pos_Min]^.sig; 
	end;

end;
//____________________________________________________________________________
procedure AgregarAlFinal2(var pri,ult:lista_nueva;elemento:venta_nueva); 
var  
    nue : lista_nueva;
begin 
    new (nue);
    nue^.dato:= elemento;
    nue^.sig := NIL;
    if pri <> Nil then 
        ult^.sig := nue
    else 
        pri := nue;
    ult := nue;
end;

//____________________________________________________________________________
procedure merge(var l :lista_nueva;v:vector) ;
var
	ult : lista_nueva;
	min, actual : venta_nueva;
begin
	minimo(v,min);	
	while (min.codigo <> 9999) do	
	begin
		actual.cant := 0;	
		actual.codigo := min.codigo;	
		while (min.codigo <> 9999) and (min.codigo = actual.codigo) do begin
			actual.cant:= actual.cant + min.cant;	
			minimo(v,min);	
		end;
		AgregarAlFinal2(l,ult,actual);	
	end;
end;
//____________________________________________________________________________
procedure ImprimirLista(l:lista_nueva);
begin
    WriteLn('______________________________');
    while l <> nil do
    begin
        WriteLn('Codigo: ',l^.dato.codigo);
        WriteLn('Cantidad: ',l^.dato.cant);
        WriteLn('______________________________');
        l:=l^.sig;
    end;
end;
//____________________________________________________________________________
var
    v:vector; //Podria tener otro nombre pero no me pagan lo suficiente :D
    l:lista_nueva;
begin
    randomize;
    Inicializar_Vector(v); //A
    WriteLn('A)');
    Cargar_Vector(v); //A
    l:=nil; 
    merge(l,v); //B
    WriteLn();
    writeln('B) ');
    ImprimirLista(l);
end.
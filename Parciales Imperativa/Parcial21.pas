{21) Se lee información acerca de las ventas de productos realizadas en las 5 sucursales 
de una empresa. Cada sucursal realizó a lo sumo 200 ventas. De cada venta se conoce el
código de producto, cantidad vendida y monto total de la venta. Las ventas de cada 
sucursal se leen de manera consecutiva y ordenadas por código de producto. La lectura 
por cada sucursal finaliza al completar las 200 ventas o cuando se lee el código de 
producto -1, el cual no se procesa. Implementar un programa para que a partir de la 
información leída, resuelva los siguientes ítems: 
a)Utilizando la técnica de merge o merge acumulador según corresponda, generar una 
lista que contenga la cantidad total vendida para cada código de producto, ordenada por 
código de producto. }
program Parcial21;
const
    dimF = 200;
    cant = 5;
type
    venta = record
        codigo:integer;
        cantidad:integer;
        monto:real;
    end;
    vector = array [1..dimF] of venta;
    vectorSucursal = array [1..cant] of vector;
//___________________________________________________
procedure CargarVector(var v:vector);
var
    i:integer;
begin
    for i:=1 to dimF do
    begin
        v[i].codigo:=i;
        WriteLn('codigo: ',v[i].codigo);
        v[i].cantidad:=random(100);
        WriteLn('Cantidad: ',v[i].cantidad);
        v[i].monto:=random(100);
        WriteLn('monto: ',v[i].monto);
    end;
end;
//___________________________________________________
procedure Cargar_Vector_Sucursal(var vs:vectorSucursal);
var
    i:Integer;
begin
    for i:=1 to cant do
    begin
        CargarVector(vs[i]);
    end;
end;    
//___________________________________________________
var
    vs:vectorSucursal;
begin
    randomize;
    Cargar_Vector_Sucursal(vs)
end.
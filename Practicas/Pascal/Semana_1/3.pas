{
3. Una librería requiere el procesamiento de la información de sus productos. De cada producto se conoce el código del producto, código de rubro (del 1 al 8) y precio.
Implementar un programa modularizado que:
a. Lea los datos de los productos y los almacene ordenados por código de producto y agrupados por rubro, en una estructura de datos adecuada. El ingreso de los productos finaliza cuando se lee el precio 0. Una vez almacenados, muestre los códigos de los productos pertenecientes a cada rubro.
b. Genere un vector (de a lo sumo 30 elementos) con los productos del rubro 3. Considerar que puede haber más o menos de 30 productos del rubro 3. Si la cantidad de productos del rubro 3 es mayor a 30, almacenar los primeros 30 que están en la lista e ignore el resto.
c. Ordene, por precio, los elementos del vector generado en b) utilizando alguno de los dos métodos vistos en la teoría.
d. Muestre los precios del vector ordenado.
}
program tres;
const
    dimF = 8;
    dimF2 = 30;
type
    rango = 1..8;
    producto = record
        codigo:integer;
        rubro:rango;
        precio:real;
    end;
    lista = ^nodo;
    nodo = record
        dato:producto;
        sig:lista;
    end;
    vector = array [rango] of lista;
    vector_rub3 = array [1..dimF2] of producto;
//________________________________________________________________________________________________________
Procedure InsertarElemento ( var pri: lista; per: producto);
var 
    ant, nue, act: lista;
begin
    new (nue);
    nue^.dato := per;
    act := pri;
    ant := pri;
    {Recorro mientras no se termine la lista y no encuentro la posición correcta}
    while (act<>NIL) and (act^.dato.codigo < per.codigo) do //De menor a mayor
    begin
        ant := act;
        act := act^.sig ;
    end;
    if (ant = act)  then 
        pri := nue   {el dato va al principio}
    else  
        ant^.sig  := nue; {va entre otros dos o al final}
    nue^.sig := act ;
end;

//________________________________________________________________________________________________________
procedure leerProducto(var p:producto);
begin
    WriteLn('Precio: '); ReadLn(p.precio);
    if (p.precio <> 0) then
    begin
        WriteLn('Codigo: '); ReadLn(p.codigo);
        WriteLn('Rubro: '); ReadLn(p.rubro);
    end;
    
end;
//________________________________________________________________________________________________________
procedure CargarProductos(var v:vector);
var
    p:producto;
begin
    leerProducto(p);
    while (p.precio <> 0) do
    begin
        InsertarElemento(v[p.rubro],p);
        leerProducto(p);
    end;
end;
//________________________________________________________________________________________________________
procedure Imprimir_Productos(v:vector);
var
    i:integer;
begin
    for i:=1 to dimF do
    begin
        while v[i] <> nil do
        begin
            WriteLn('_______________');
            writeln('Codigo: ',v[i]^.dato.codigo);
            writeln('Rubro: ',v[i]^.dato.rubro);
            writeln('Precio: ',v[i]^.dato.precio:2:2);
            v[i]:=v[i]^.sig;
        end;
    end;
end;
//________________________________________________________________________________________________________
procedure CargarRubro3(Rubro3:lista;var vb:vector_rub3;var dimL:Integer);
begin
    while (Rubro3 <> nil) and (dimL < dimF2) do
    begin
        dimL:=dimL+1;
        vb[dimL]:=Rubro3^.dato;
        Rubro3:=Rubro3^.sig;
    end;
end;
//________________________________________________________________________________________________________
Procedure Ordenar ( var v: vector_rub3; dimL: Integer );
var 
    i, j, p: Integer;
    item:producto;
begin
    for i:=1 to dimL-1 do 
    begin {busca el mínimo y guarda en p la posición}
        p := i;
        for j := i+1 to dimL do
            if v[ j ].precio < v[ p ].precio then p:=j;
        {intercambia v[i] y v[p]}
        item := v[ p ];   
        v[ p ] := v[ i ];   
        v[ i ] := item;
    end;
end;

//________________________________________________________________________________________________________
procedure ImprimirRubro3(vb:vector_rub3; dimL:integer);
var
    i:Integer;
begin
    for i:=1 to dimL do
    begin
        writeln('Codigo: ',vb[i].codigo);
        writeln('Rubro: ',vb[i].rubro);
        writeln('Rubro: ',vb[i].precio:2:2);
    end;
end;
//________________________________________________________________________________________________________
var
    v:vector;
    vb:vector_rub3;
    dimL:integer;
begin
    dimL:=0;
    CargarProductos(v);//A
    Imprimir_Productos(v);
    WriteLn('_______________');
    CargarRubro3(v[3],vb,dimL);//B
    Ordenar(vb,dimL);//C
    ImprimirRubro3(vb,dimL);
    WriteLn('_______________');
end.
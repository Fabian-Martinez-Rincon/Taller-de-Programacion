{1) Una obra social dispone de un árbol binario de búsqueda con la información de sus 
afiliados. De cada afiliado se conoce: Número de afiliado, Nro de DNI, Plan (1..5) y año de
anio af la obra social. El árbol se encuentra ordenado por número de afiliado. Se 
solicita:
Implementar un módulo que reciba el árbol de afiliados, Nro de DNI Num1, Nro de DNI 
Num2 y un número de Plan, y retorne un vector ordenado por Nro de DNI del afiliado. El 
vector debe contener el número de afiliado y DNI de aquellos afiliados cuyo Nro de DNI se
encuentra comprendido entre Num1 y Num2 (siendo Num1 menor que Num2) y el Plan se
corresponda con el recibido por parámetro. Por norma de la obra social, cada Plan puede 
contar con af lo sumo 500 afiliados. }
program Parcial;
const
    P = 5;
    dimF = 500;
type
    rango = 1..5;
    afilado = record     
        nro:integer;
        dni:Integer;
        plan:rango;
        anio:2000..2030;
    end;
    Type
    arbol = ^nodo;
    nodo = record
        dato: afilado;
        HI: arbol;
        HD: arbol;
    end;
    afi = record
        dni_1:integer;
        dni_2:integer;
        plan:rango;
    end;
    afiliado2 = record
        nroAfi:integer;
        dni:integer;        
    end;
    vector = array [1..dimF] of afiliado2;

//________________________________________________________________________________
procedure Leer_Empleado(var af:afilado);
begin
    af.nro:=random(10);
    WriteLn('nro: ',af.nro);
    af.dni:=random(10);
    WriteLn('Dni: ',af.dni);
    af.plan:=1+random(5);
    WriteLn('plan: ',af.plan);
    af.anio:=2000+random(30);
    WriteLn('Ingreso: ',af.anio);
    WriteLn('______________________________');
end;
//________________________________________________________________________________
Procedure crear (var A:arbol; af:afilado);
Begin
    if (A = nil) then
    begin
        new(A);
        A^.dato:= af; 
        A^.HI:= nil; 
        A^.HD:= nil;
    end
    else
        if (af.nro < A^.dato.nro) then 
            crear(A^.HI,af)
        else 
            crear(A^.HD,af)   
End;

//________________________________________________________________________________
procedure CargarArbol(var abb:arbol);
var
    af:afilado;
begin
    WriteLn('______________________________');
    Leer_Empleado(af);
    while (af.nro<>0)do
    begin
        crear(abb,af);
        Leer_Empleado(af);
    end;
end;

//________________________________________________________________________________
Procedure enOrden ( af : arbol );
begin 
    if ( af<> nil ) then begin
        enOrden (af^.HI);
        write (af^.dato.nro,'|');
        enOrden (af^.HD);
    end;
end;
//________________________________________________________________________________
procedure Leer_Nuevo(var Datos:afi);
begin
    Datos.dni_1:=random(3);
    WriteLn('nro A: ',Datos.dni_1);
    Datos.dni_2:=Datos.dni_1+random(10);
    WriteLn('nro B: ',Datos.dni_2);
    Datos.plan:=1+random(5);
    WriteLn('plan: ',Datos.plan);
end;
//________________________________________________________________________________
Procedure Seleccion ( var v: vector; dimL: Integer );
var 
    i, j, p: Integer;
    item:afiliado2;
begin
    for i:=1 to dimL-1 do 
    begin 
        p := i;
        for j := i+1 to dimL do
            if v[ j ].dni < v[ p ].dni then p:=j;

        item := v[ p ];   
        v[ p ] := v[ i ];   
        v[ i ] := item;
    end;
end;

//________________________________________________________________________________
Procedure CargarVector ( var v:vector;var dimL:integer;af:arbol;Datos:afi ;afi2:afiliado2);
begin 
    if ( af<> nil ) and (dimL < dimF) then begin
        CargarVector (v,dimL,af^.HI,Datos,afi2);
        if (af^.dato.nro>=datos.dni_1) and (af^.dato.nro<=Datos.dni_2) then
        begin
            dimL:=dimL+1;
            afi2.nroAfi:=af^.dato.nro;
            afi2.dni:=af^.dato.dni;
            v[dimL]:=afi2;
        end;
        CargarVector (v,dimL,af^.HD,Datos,afi2);
    end
        else 
            Seleccion(v,dimL);
end;

//________________________________________________________________________________
procedure ImprimirVector(v:vector;dimL:Integer);
var
    i:integer;
begin
    for i:=1 to dimL do
    begin
        WriteLn('nro: ',v[i].nroAfi);
        WriteLn('Dni: ',v[i].dni);
        WriteLn('______________________________');
    end;
end;
//________________________________________________________________________________
var
    abb:arbol;
    Datos:afi;
    v:vector;
    dimL:integer;
    dni_promedio:integer;
    afi2:afiliado2;
begin
    randomize;
    abb :=nil;
    CargarArbol(abb);//Se dispone
    enOrden(abb); //Para Probar
    WriteLn();
    Leer_Nuevo(Datos);
    WriteLn();
    dimL:=0;
    afi2.nroAfi:=0;
    afi2.dni:=0;
    CargarVector(v,dimL,abb,Datos,afi2); //A (Todo lo otro es relleno)
    WriteLn('DimL: ',dimL);
    WriteLn('______________________________');
    ImprimirVector(v,dimL); //Solo para verificar
end.
{1. Una aerolínea dispone de un árbol binario de búsqueda con la información de sus
empleados. De cada empleado se conoce: Número de legajo, Dni, Categoría (1..20) y año de
ingreso a la empresa. El árbol se encuentra ordenado por número de legajo. Se solicita:
a. Implementar un módulo que reciba el árbol de empleados, número de legajo “A”,
número de legajo “B” y un número de categoría, y retorne un vector ordenado por
número de legajo. El vector debe contener el número de legajo y Dni de aquellos
empleados cuyo número de legajo se encuentra comprendido entre los números de
legajo recibidos (“A” y “B”, siendo “A” menor que “B”) y la categoría se corresponda con
la recibida por parámetro. Por norma de la empresa, cada categoría puede contar con
a lo sumo 250 empleados.
b. Implementar un módulo recursivo que reciba la información generada en “b” y retorne
el promedio de los números de Dni.}
program Fabian_Uno;
const
    cant = 20;
    dimF = 250;
type
    cat = 1..cant;
    Empleado = record
        legajo:integer;
        dni:integer;
        categoria:cat;
        ingreso:integer;
    end;
    Type
    arbol = ^nodo;
    nodo = record
        dato: Empleado;
        HI: arbol;
        HD: arbol;
    end;
    PuntoA = record
        Legajo_A:integer;
        Legajo_B:integer;
        categoria:cat;
    end;
    vector = array [1..dimF] of Empleado;
//________________________________________________________________________________
procedure Leer_Empleado(var e:Empleado);
begin
    e.legajo:=random(10);
    WriteLn('Legajo: ',e.legajo);
    e.dni:=random(10);
    WriteLn('Dni: ',e.dni);
    e.categoria:=1+random(20);
    WriteLn('Categoria: ',e.categoria);
    e.ingreso:=2000+random(30);
    WriteLn('Ingreso: ',e.ingreso);
    WriteLn('______________________________');
end;
//________________________________________________________________________________
Procedure crear (var A:arbol; e:Empleado);
Begin
    if (A = nil) then
    begin
        new(A);
        A^.dato:= e; 
        A^.HI:= nil; 
        A^.HD:= nil;
    end
    else
        if (e.legajo < A^.dato.legajo) then 
            crear(A^.HI,e)
        else 
            crear(A^.HD,e)   
End;

//________________________________________________________________________________
procedure CargarArbol(var abb:arbol);
var
    e:Empleado;
begin
    WriteLn('______________________________');
    Leer_Empleado(e);
    while (e.legajo<>0)do
    begin
        crear(abb,e);
        Leer_Empleado(e);
    end;
end;

//________________________________________________________________________________
Procedure enOrden ( a : arbol );
begin //Input 1,22,3,44,5,6,7,2,0
    if ( a<> nil ) then begin
        enOrden (a^.HI);
        write (a^.dato.legajo,'|');
        enOrden (a^.HD);
    end;
end;//1,2,3,5,6,7,22,44

//________________________________________________________________________________
procedure Leer_Nuevo(var Datos:PuntoA);
begin
    Datos.Legajo_A:=random(10);
    WriteLn('Legajo A: ',Datos.Legajo_A);
    Datos.Legajo_B:=Datos.Legajo_A+random(10);
    WriteLn('Legajo B: ',Datos.Legajo_B);
    Datos.categoria:=1+random(20);
    WriteLn('Categoria: ',Datos.categoria);

end;
//________________________________________________________________________________
Procedure CargarVector ( var v:vector;var dimL:integer;a:arbol;Datos:PuntoA );
begin 
    if ( a<> nil ) and (dimL < dimF) then begin
        CargarVector (v,dimL,a^.HI,Datos);
        if (a^.dato.legajo>datos.Legajo_A) and (a^.dato.legajo<Datos.Legajo_B) then
        begin
            dimL:=dimL+1;
            v[dimL]:=a^.dato;
        end;
        CargarVector (v,dimL,a^.HD,Datos);
    end;
end;
//________________________________________________________________________________
procedure ImprimirVector(v:vector;dimL:Integer);
var
    i:integer;
begin
    for i:=1 to dimL do
    begin
        WriteLn('Legajo: ',v[i].legajo);
        WriteLn('Dni: ',v[i].dni);
        WriteLn('Categoria: ',v[i].categoria);
        WriteLn('Ingreso: ',v[i].ingreso);
        WriteLn('______________________________');
    end;
end;
//________________________________________________________________________________
procedure Calcular_Promedio(var total,cantidad:Integer; v:vector;dimL:integer);
begin
    if (dimL <> 0) then
    begin
        total:=total+v[dimL].dni;
        cantidad:=cantidad+1;
        Calcular_Promedio(total,cantidad,v,dimL-1);
    end;  
end;
//________________________________________________________________________________
procedure Calcular_DNI_Promedio(var dni_promedio:integer;v:vector;dimL:integer);
var
    total:integer;
    cantidad:integer;
begin
    total:=0;
    cantidad:=0;
    Calcular_Promedio(total,cantidad,v,dimL);
    if cantidad > 0 then
        dni_promedio:=total div cantidad
    else
        dni_promedio:=0;
end;

//________________________________________________________________________________
var
    abb:arbol;
    Datos:PuntoA;
    v:vector;
    dimL:integer;
    dni_promedio:integer;
begin
    randomize;
    CargarArbol(abb);//Se dispone
    enOrden(abb); //Para Probar
    WriteLn();
    Leer_Nuevo(Datos);
    WriteLn();
    dimL:=0;
    CargarVector(v,dimL,abb,Datos); //A (Todo lo otro es relleno)
    WriteLn('DimL: ',dimL);
    WriteLn('______________________________');
    ImprimirVector(v,dimL); //Solo para verificar
    writeln();
    writeln('B): '); 
    dni_promedio:=0;
    Calcular_DNI_Promedio(dni_promedio,v,dimL); //B
    WriteLn('El dni promedio es: ',dni_promedio);
end.




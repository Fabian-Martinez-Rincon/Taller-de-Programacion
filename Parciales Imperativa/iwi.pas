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
//_____________________________________________________
procedure Leer_Empleado(var e:Empleado);
begin
    ReadLn(e.legajo);
    WriteLn('Legajo: ',e.legajo);

    e.dni:=random(10);
    WriteLn('Dni: ',e.dni);

    e.categoria:=3; {para chequear}
    WriteLn('Categoria: ',e.categoria);
    
    e.ingreso:=2000+random(30);
    WriteLn('Ingreso: ',e.ingreso);
    WriteLn('______________________________');
end;
//_____________________________________________________
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

//_____________________________________________________
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

//_____________________________________________________
Procedure enOrden ( a : arbol );
begin 
    if ( a<> nil ) then begin
        enOrden (a^.HI);
        write (a^.dato.legajo,'|');
        enOrden (a^.HD);
    end;
end;

//_____________________________________________________
procedure Leer_Nuevo(var Datos:PuntoA);
begin
    Datos.Legajo_A:=1;
    WriteLn('Legajo A: ',Datos.Legajo_A);
    Datos.Legajo_B:=9;
    WriteLn('Legajo B: ',Datos.Legajo_B);
    Datos.categoria:=3;
    WriteLn('Categoria: ',Datos.categoria);
end;
//_____________________________________________________
Procedure CargarVector ( var v:vector;var dimL:integer;a:arbol;Datos:PuntoA );
begin 
    if ( a<> nil )  then begin
        if (a^.dato.legajo <= Datos.Legajo_A) then
            CargarVector (v,dimL,a^.HD,Datos)
        else
            if(a^.dato.legajo >= Datos.Legajo_B)then
                CargarVector (v,dimL,a^.HI,Datos)
            else begin
                    if (a^.dato.legajo>datos.Legajo_A) and (a^.dato.legajo<Datos.Legajo_B) and (a^.dato.categoria = Datos.categoria) then
                    begin
                        dimL:=dimL+1;
                        v[dimL]:=a^.dato;
                    end;
                    CargarVector (v,dimL,a^.HD,Datos);
                end;
    end;
end;
//_____________________________________________________
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
//_____________________________________________________
procedure Calcular_Promedio(var total,cantidad:Integer; v:vector;dimL:integer);
begin
    if (dimL <> 0) then
    begin
        total:=total+v[dimL].dni;
        cantidad:=cantidad+1;
        Calcular_Promedio(total,cantidad,v,dimL-1);
    end;  
end;
//_____________________________________________________
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
//_____________________________________________________
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
 
    Leer_Nuevo(Datos);

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



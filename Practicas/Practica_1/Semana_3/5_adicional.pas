{5. Una cadena de gimnasios que tiene 5 sucursales necesita procesar las asistencias de los
clientes. Implementar un programa con:

a. Un módulo que lea la información de las asistencias realizadas en las sucursales y
genere una estructura con código de cliente, dni de cliente, fecha y cantidad de
minutos que asistió a la sucursal, agrupados por sucursal. Para cada sucursal, los
clientes deben estar ordenados por código de cliente. 

De cada asistencia se lee: código
de sucursal (1..5), dni del cliente, código del cliente, fecha y cantidad de minutos que
asistió. La lectura finaliza con el código de cliente -1, el cual no se procesa.

b. Un módulo que reciba la estructura generada en a) y utilizando la técnica de merge o
merge acumulador genere un árbol ordenado por dni que contenga el dni de cliente y
la cantidad total de veces que asistió a las sucursales del gimnasio.}
program Fabian_Cinco;
const
    cant = 5;
type
    rango = 1..cant;
    asistencia = record
        sucursal:rango;
        codigo:integer;
        dni:integer;
        fecha:string;
        minutos:integer;
    end;
    lista = ^nodo;
    nodo = record
        dato:asistencia;
        sig:lista;
    end;
    vector = array [rango] of lista;

    tipo = record
        dni:integer;
        fecha:string;
        asistencias:integer;
    end;
    arbol = ^nodo2;
    nodo2 = record
        dato: tipo;
        HI: arbol;
        HD: arbol;
    end;
//____________________________________________________________________________________________
procedure ImprimirRegistro(r:tipo);
begin
    WriteLn('dni: ', r.dni);
    WriteLn('Fecha: ', r.fecha);
    WriteLn('Asistencias: ', r.asistencias);
    WriteLn('___________________');
end;
//____________________________________________________________________________________________
procedure Inicialzar_Vector(var v:vector);
var
    i:Integer;
begin
    for i:=1 to cant do
    begin
        v[i]:=nil;
    end;
end;
//____________________________________________________________________________________________
procedure randomString(tamanio:integer; var palabra:string);
var  str,Result: String;
begin
    str:='123/';
    Result:='';
    repeat
        Result:=Result+str[Random(Length(str))+1];
    until(Length(Result)=tamanio);
    palabra:=Result;
end;
//____________________________________________________________________________________________
procedure Leer_Asistencia(var a:asistencia);
begin
    a.sucursal:=1+random(5);
    a.codigo:=-1+random(10);
    a.dni:=random(10);
    randomString(6,a.fecha);
    a.minutos:=random(100);
end;
//____________________________________________________________________________________________
Procedure InsertarElemento ( var pri: lista; x: asistencia);
var 
    ant, nue, act: lista;
begin
    new (nue);
    nue^.dato := x;
    act := pri;
    ant := pri;
    while (act<>NIL) and (act^.dato.codigo < x.codigo) do 
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
//____________________________________________________________________________________________
procedure Cargar_Vector(var v:vector);
var
    a:asistencia;
begin
    Leer_Asistencia(a);
    while a.codigo <> -1 do
    begin
        InsertarElemento(v[a.sucursal],a);
        Leer_Asistencia(a);
    end;
end;
//____________________________________________________________________________________________
procedure minimo(var v:vector; var x:tipo);
var 
  i, pos : integer;
begin
	x.dni := 9999;
	pos := -1;
	for i := 1 to cant do 
		if (v[i] <> NIL) and (v[i]^.dato.dni <= x.dni) then 
		begin
			pos := i;	
			x.dni := v[i]^.dato.dni;
		end;

	if (pos <> -1) then
	begin
		x.fecha := v[pos]^.dato.fecha;
        x.dni:=v[pos]^.dato.dni;
		v[pos] := v[pos]^.sig; 
	end;
end;
//____________________________________________________________________________________________
Procedure crear (var A:arbol; num:tipo);
Begin
    if (A = nil) then
    begin
        new(A);
        A^.dato:= num; 
        A^.HI:= nil; 
        A^.HD:= nil;
    end
    else
        if (num.dni < A^.dato.dni) then 
            crear(A^.HI,num)
        else 
            crear(A^.HD,num)   
End;

//____________________________________________________________________________________________
procedure merge(var abb :arbol;v:vector) ;
var
	min, actual : tipo;
begin
	minimo(v,min);	
	while (min.dni <> 9999) do	
	begin
		actual.asistencias := 1;	
		actual.fecha := min.fecha;
        actual.dni:=min.dni;	
		while (min.dni <> 9999) and (min.dni = actual.dni) do begin
            if (min.fecha <> actual.fecha) then
			    actual.asistencias:=actual.asistencias+1;
            ImprimirRegistro(actual);
			minimo(v,min);	
		end;
        
		crear(abb,actual);
	end;
end;
//____________________________________________________________________________________________
Procedure enOrden ( a : arbol );
begin //Input 1,22,3,44,5,6,7,2,0
    if ( a<> nil ) then begin
        enOrden (a^.HI);
        writeln ('Dni: ',a^.dato.dni);
        WriteLn('Fecha: ',a^.dato.fecha);
        WriteLn('Asistencias: ', a^.dato.asistencias);
        WriteLn('_______________');
        enOrden (a^.HD);
    end;
end;//1,2,3,5,6,7,22,44

//____________________________________________________________________________________________
var
    v:vector;
    abb:arbol;
begin
    randomize;
    Inicialzar_Vector(v);
    Cargar_Vector(v); //A
    abb:=Nil;
    merge(abb,v);
    WriteLn();
    WriteLn();
    WriteLn();
    enOrden(abb);
end.
{2. Un teatro tiene funciones los 7 días de la semana. Para cada día se tiene una lista con las
entradas vendidas. Se desea procesar la información de una semana. Se pide:
a. Generar 7 listas con las entradas vendidas para cada día. De cada entrada se lee día (de
1 a 7), código de la obra, asiento, monto. La lectura finaliza con el código de obra igual
a 0. Las listas deben estar ordenadas por código de obra de forma ascendente.
b. Generar una nueva lista que totalice la cantidad de entradas vendidas por obra. Esta
lista debe estar ordenada por código de obra de forma ascendente.
c. Realice un módulo recursivo que informe el contenido de la lista generada en b)}

program Fabian_Dos;
const
    cant_dias = 7;
type
    rango = 1..cant_dias;
    entrada = record
        dia:rango;
        codigo:integer;
        asiento:integer;
        monto:integer;
    end;
    lista = ^nodo;
    nodo = record
        dato:entrada;
        sig:lista;
    end;
    vector = array [rango] of lista; //Cantidad de entradas para cada dia
    
    ventas_obras = record
        codigo:integer;
        cantidad_vendida:integer;
    end;
    lista_nueva = ^nodo2; 
    nodo2 = record
        dato:ventas_obras;
        sig:lista_nueva
    end;
//_____________________________________________________________________________________________
procedure leerEntrada(var e:entrada);
begin
    e.dia:= 1 + random(7);
    e.codigo:=random(5);
    e.asiento:=random(10);
    e.monto:=random(10);
end;
//_____________________________________________________________________________________________
Procedure InsertarElemento ( var pri: lista; x: entrada);
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

//_____________________________________________________________________________________________
procedure Cargar_Vector(var v:vector);
var
    e:entrada;
begin
    leerEntrada(e);
    while (e.codigo <> 0) do
    begin
        InsertarElemento(v[e.dia],e);
        leerEntrada(e);    
    end;
end;
//_____________________________________________________________________________________________
procedure ImprimirLista(l:lista);
begin
    while l <> nil do
    begin
        WriteLn('Dia: ',l^.dato.dia);
        WriteLn('Codigo: ',l^.dato.codigo);
        WriteLn('Asiento: ',l^.dato.asiento);
        WriteLn('Monto: ',l^.dato.monto);
        WriteLn('______________________________');
        l:=l^.sig;
    end;
end;
procedure ImprimirLista(l:lista_nueva);
begin
    if l <> nil then
    begin
        WriteLn('Codigo: ',l^.dato.codigo);
        WriteLn('Cantidad: ',l^.dato.cantidad_vendida);
        WriteLn('______________________________');
        l:=l^.sig;
        ImprimirLista(l);
    end;
end;
//_____________________________________________________________________________________________
procedure ImprimirVector(v:vector);
var 
    i:integer;
begin
    for i:=1 to cant_dias do
    begin
        ImprimirLista(v[i]);
    end;
end;
//_____________________________________________________________________________________________
procedure minimo(var v:vector; var x:ventas_obras);
var 
  i, pos : integer;
begin
	x.codigo := 9999;
	pos := -1;
	for i := 1 to cant_dias do 
		if (v[i] <> NIL) and (v[i]^.dato.codigo <= x.codigo) then 
		begin
			pos := i;	
			x.codigo := v[i]^.dato.codigo;
		end;

	if (pos <> -1) then
	begin
		x.codigo := v[pos]^.dato.codigo;
		v[pos] := v[pos]^.sig; 
	end;
end;

//_____________________________________________________________________________________________
procedure AgregarAlFinal2(var pri,ult:lista_nueva;x:ventas_obras); 
var  
    nue : lista_nueva;
begin 
    new (nue);
    nue^.dato:= x;
    nue^.sig := NIL;
    if pri <> Nil then 
        ult^.sig := nue
    else 
        pri := nue;
    ult := nue;
end;

//_____________________________________________________________________________________________
procedure merge(var l :lista_nueva;v:vector) ;
var
	ult : lista_nueva;
	min, actual : ventas_obras;
begin
	minimo(v,min);	
	while (min.codigo <> 9999) do	
	begin
		actual.cantidad_vendida := 0;	
		actual.codigo := min.codigo;	
		while (min.codigo <> 9999) and (min.codigo = actual.codigo) do begin
			actual.cantidad_vendida:= actual.cantidad_vendida + 1;	
			minimo(v,min);	
		end;
		AgregarAlFinal2(l,ult,actual);	
	end;
end;
//_____________________________________________________________________________________________
var
    v:vector;
    l:lista_nueva;
begin
    randomize;
    Cargar_Vector(v); //A
    WriteLn('A): ');
    WriteLn('______________________________');
    ImprimirVector(v);
    WriteLn('B y C): ');
    WriteLn('______________________________');
    l:=Nil;
    merge(l,v);
    ImprimirLista(l); //C 
end.
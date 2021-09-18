{13. Un teatro tiene funciones los 7 días de la semana. Para cada día se tiene una lista con las
entradas vendidas. Se desea procesar la información de una semana.
Implementar un programa que:
a. Genere 7 listas con las entradas vendidas para cada día. De cada entrada se lee día (de 1
a 7), código de la obra, asiento y monto. La lectura finaliza con el código de obra igual a 0.
Las listas deben estar ordenadas por código de obra de forma ascendente.
b. Genere una nueva lista que totalice la cantidad de entradas vendidas por obra. Esta lista
debe estar ordenada por código de obra de forma ascendente.
}
program Fabian_trece;
const
    cantidad = 7;
type
    rango = 1..cantidad;
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
    vector = array [rango] of lista;

    ventas = record
        cantidad:integer;
        codigo:integer;
    end;
    lista_nueva = ^nodo2;
    nodo2 = record
        dato:ventas;
        sig:lista_nueva;
    end;
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
procedure leerEntrada(var e:entrada);
begin
    e.codigo:=random(11);
    WriteLn('Codigo: ',e.codigo);
    if (e.codigo <> 0) then
    begin
        e.dia:=1+random(7);
        WriteLn('Dia: ', e.codigo);
        e.asiento:=random(11);
        WriteLn('Asiento: ', e.asiento);
        e.monto:=random(11);
        WriteLn('Monto: ',e.monto);
    end;
end;
//____________________________________________________________________________
Procedure InsertarElemento ( var pri: lista; ent: entrada);
var 
    ant, nue, act: lista;
begin
    new (nue);
    nue^.dato := ent;
    act := pri;
    ant := pri;
    while (act<>NIL) and (act^.dato.codigo < ent.codigo) do 
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
    e:entrada;
begin
    WriteLn('______________________________');
    leerEntrada(e);
    while (e.codigo <> 0) do
    begin
        WriteLn('______________________________');
        InsertarElemento(v[e.dia],e);
        leerEntrada(e);
    end;
end;
//____________________________________________________________________________
procedure minimo(var v : vector; var x : Integer);
var //Si se te ocurre un nombre generico para x, no me enojo :D
  i, Pos_Min : integer;
begin
	x := 9999;
	Pos_Min := -1;
	for i := 1 to cantidad do 
		if (v[i] <> NIL) and (v[i]^.dato.codigo <= x) then 
		begin
			Pos_Min := i;	
			x := v[i]^.dato.codigo;
		end;

	if (Pos_Min <> -1) then
	begin
		v[Pos_Min] := v[Pos_Min]^.sig; 
	end;

end;
//____________________________________________________________________________
procedure AgregarAlFinal2(var pri,ult:lista_nueva;per:ventas); 
var  
    nue : lista_nueva;
begin 
    new (nue);
    nue^.dato:= per;
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
	actual : ventas;  
    min:integer;
begin
	minimo(v,min);	
	while (min <> 9999) do	
	begin
		actual.cantidad := 0;	
		actual.codigo := min;	
		while (min <> 9999) and (min = actual.codigo) do begin
			actual.cantidad:= actual.cantidad + 1;	
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
        WriteLn('Cantidad: ',l^.dato.cantidad);
        WriteLn('______________________________');
        l:=l^.sig;
    end;
end;
//____________________________________________________________________________
var
    v:vector;
    l:lista_nueva;
begin
    randomize;
    Inicializar_Vector(v); //A
    Cargar_Vector(v); //A
    l:=nil; 
    merge(l,v); //B
    writeln('B) ');
    ImprimirLista(l);
end.
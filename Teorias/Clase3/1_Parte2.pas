{Suponiendo que 4 integrantes de una familia, llevan sus gastos de manera similar a Juan y Paula. Se pide:

a ) Generar la estructura para almacenar los gastos de cada uno de los integrantes. Cada estructura debe generarse de manera ordenada por nombre de gasto. Cada estructura se carga hasta leer el nombre ‘ZZ’.

b) Imprimir las estructuras generadas en a.

c) Realizar el merge de manera de generar una única estructura que contenga los montos totales por nombre con la estructura generada en a.

d) A partir de la estructura generada en c. arme un ABB ordenado por monto total y luego imprima el nombre del gasto que menos costo.}
program parte2;
const
	cant=4; 
Type 
    gastos = record
        nombre : string;
        monto : real;
    end;
    lista =^nodo;
    nodo = record
        dato :gastos;
        sig:lista;
    end; 

    integrantes = array[1..cant] of lista;

    arbol = ^nodoArbol;
    nodoArbol = record
        dato : gastos;
        hd,hi : arbol;
    end;
//_______________________________________________________
procedure randomString(tamanio:integer; var palabra:string);
var  str,Result: String;
begin
    str:='YZ';
    Result:='';
    repeat
        Result:=Result+str[Random(Length(str))+1];
    until(Length(Result)=tamanio);
    palabra:=Result;
end;
//_______________________________________________________
procedure Leer_Gastos(var g:gastos);
begin
    randomString(2,g.nombre);
    g.monto := 1+random(10);
end;
//_______________________________________________________
Procedure InsertarElemento ( var pri: lista; per: gastos);
var 
    ant, nue, act: lista;
begin
    new (nue);
    nue^.dato := per;
    act := pri;
    ant := pri;
    while (act<>NIL) and (act^.dato.nombre < per.nombre) do
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
//_______________________________________________________
procedure Cargar_Integrante(var l:lista);
var
    g:gastos;
begin
    l:=Nil;
    Leer_Gastos(g);
    while g.nombre <> 'ZZ' do
    begin
        InsertarElemento(l,g);
        Leer_Gastos(g);
    end;
end;

//_______________________________________________________
procedure Imprimir_Integrante(l:lista);
begin
    while l <> nil do
    begin
        WriteLn('Nombre: ',l^.dato.nombre);
        WriteLn('Monto: ',l^.dato.monto:2:2);
        l:=l^.sig;
    end;
end;
//_______________________________________________________
procedure Cargar_Integrantes(var inte:integrantes);
var
    i:integer;
begin
    for i:=1 to cant do
    begin
        WriteLn();
        inte[i]:=nil; 
        WriteLn('Integrante: ', i);
        Cargar_Integrante(inte[i]);
        Imprimir_Integrante(inte[i]); //B
    end;
end;
//_______________________________________________________
procedure minimo(var todos : integrantes; var nombreMin : gastos);
var
  i, posMin : integer;
begin
	nombreMin.nombre := 'ZZ';
	posMin := -1;
	
	for i := 1 to cant do 
		if (todos[i] <> NIL) and (todos[i]^.dato.nombre <= nombreMin.nombre) then 
		begin
			posMin := i;	
			nombreMin.nombre := todos[i]^.dato.nombre;	
		end;

	if (posMin <> -1) then
	begin
		nombreMin := todos[posMin]^.dato; 
		todos[posMin] := todos[posMin]^.sig; 
	end;

end;
//_______________________________________________________
procedure AgregarAlFinal2(var pri,ult:lista;per:gastos); 
var  
    nue : lista;
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


//_______________________________________________________
procedure merge(todos : integrantes;var nombres_C:lista) ;
var
	ult : lista;
	impMin, impActual : gastos;
begin
	
	minimo(todos,impMin);	
	
	while (impMin.nombre <> 'ZZ') do	
	begin
		impActual.monto := 0;	
		impActual.nombre := impMin.nombre;	
		
		while (impMin.nombre <> 'ZZ') and (impMin.nombre = impActual.nombre) do begin
			impActual.monto := impActual.monto + impMin.monto;	
			minimo(todos,impMin);	
		end;
		
		AgregarAlFinal2(nombres_C,ult,impActual);	
		
	end;

end;

//_______________________________________________________
procedure agregarAlArbol(var a : arbol; dato : gastos);
begin
	if (a=nil) then
	begin
		new(A); 
		a^.dato := dato;
		a^.hd := nil;
		a^.hi := nil;
	end
	else
		if (a^.dato.monto < dato.monto) then
			agregarAlArbol(a^.hd,dato)
		else	
			agregarAlArbol(a^.hi,dato);
end;
//_______________________________________________________
function armarArbol(L: lista) : arbol;
var
	a : arbol;
begin
	a := NIL;
	while (L <> NIL) do 
	begin
		AgregarAlArbol(A,L^.dato);
		L := L^.sig;
	end;
	armarArbol := A;
end;
//_______________________________________________________
procedure ImpuestoMinimo(A : arbol; var imp : gastos);
begin
	if (a <> nil) then
		if (a^.hi = nil) then
			imp := A^.dato
		else
			ImpuestoMinimo(A^.hi,imp)
	else  
	begin
		imp.nombre := 'ZZ';
		imp.monto := 0;
	end;		

end;
//_______________________________________________________
var
    inte:integrantes;
    nombres_C:lista;
    abb:arbol;
    impuestoMin:gastos;
begin
    randomize;
    abb:=nil;
    nombres_C:= nil;
    Cargar_Integrantes(inte);//A y B
    merge(inte,nombres_C);
    WriteLn();
    WriteLn('C: ');
    Imprimir_Integrante(nombres_C);
    abb := armarArbol(nombres_C);
    ImpuestoMinimo(abb,impuestoMin);
    WriteLn();
    writeln('El impuesto por el que menos se gasta es ');
    WriteLn('nombre:',impuestoMin.nombre);
    WriteLn('monto:',impuestoMin.monto:2:2);
end.
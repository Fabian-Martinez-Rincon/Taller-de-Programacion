program MergeAcumulador;
const
	CantE=4; 
	marca_fin = 'ZZ';
Type 
  Timpuesto = record
		impuesto : string;
		monto : real;
  end;
  lista =^nodo;
  nodo = record
    dato : Timpuesto;
    sig:lista;
  end; 
  
  estantes = array[1..cantE] of lista;

  arbol = ^nodoArbol;
  nodoArbol = record
	dato : Timpuesto;
	hd,hi : arbol;
	end;

procedure leerImpuesto(var imp : Timpuesto);
begin

	writeln('Ingrese el nombre del impuesto, o ingrese ',marca_fin,' para finalizar');
	readln(imp.impuesto);
	if (imp.impuesto <>  marca_fin) then begin
		writeln('Ingrese el monto del impuesto ',imp.impuesto);
		readln(imp.monto);
	end;
end;

procedure agregarAtras(var L,ult : lista; imp : Timpuesto);
var
  aux : lista;
begin
	new(aux); aux^.dato := imp;
	if (L=nil) then
		L := aux
	else
		ult^.sig := aux;
	ult := aux;
end;

procedure insertarOrdenado(var L : lista; imp : Timpuesto);
var
	aux,ant,act : lista;
	
begin
	act := L;
	ant := act;
	while (act<>nil) and (act^.dato.impuesto < imp.impuesto) do begin
		ant := act;
		act := act^.sig;
	end;
	
	new(aux); aux^.dato := imp;
	
	if (ant=act) then begin //primero de la lista, o lista vacía
		aux^.sig := L;
		L := aux;
	end 
	else begin
		ant^.sig := aux;
		aux^.sig := act;
	end;
end;

procedure cargarEstante(var estante : lista);
var
  imp : TImpuesto;
begin
	estante := nil;
	leerImpuesto(imp);
	while (imp.impuesto <> marca_fin) do begin
		insertarOrdenado(estante,imp);
		leerImpuesto(imp);
	end;
end;

procedure cargarTodosLosEstantes(var todos : estantes);
var
   i : integer;
begin
	for i:= 1 to cantE do 
	begin
		writeln('Comienza la carga de un nuevo estante');
		cargarEstante(todos[i]);
	end;	
end;


procedure imprimirImpuesto(imp : TImpuesto);
begin
	writeln('**************');
	writeln('Impuesto: ',imp.impuesto);
	writeln('Monto: ',imp.monto:2:2); 
end;
procedure imprimirEstante(estante : lista); //usamos un imprimir recursivo... por qué? porque podemos ;-)
begin 
	if (estante <> nil) then begin
		imprimirImpuesto(estante^.dato);
		imprimirEstante(estante^.sig);
	end;
end;

procedure imprimirTodosLosEstantes(todos : estantes);
var
  i : integer;
begin
	for i:=1 to cantE do begin
		writeln('================Inicia el estante ',i,'=============');
		imprimirEstante(todos[i]);
		writeln('================Fin del estante ',i,'=============');
	end;
end;  
						//vector				//min	
procedure minimo(var todos : estantes; var impuestoMin : TImpuesto);
var
  i, posMin : integer;
begin
	impuestoMin.impuesto := marca_fin;
	posMin := -1;
	
	for i := 1 to cantE do // ITERO ENTRE TODAS LAS LISTAS
		if (todos[i] <> NIL) and (todos[i]^.dato.impuesto <= impuestoMin.impuesto) then // CALCULO EL MINIMO
		begin
			posMin := i;	// ME GUARDO LA LISTA QUE TIENE EL MINIMO ELEMENTO
			impuestoMin.impuesto := todos[i]^.dato.impuesto;	// ACTUALIZO EL MINIMO
		end;

	if (posMin <> -1) then
	begin
		impuestoMin := todos[posMin]^.dato; //GUARDA TODO EL DATO
		todos[posMin] := todos[posMin]^.sig; // AVANZA EN LA LISTA PARA LA SIGUIENTE VEZ QUE CALCULE EL MINIMO
		//borrarElemento(vs[posMin])
	end;

end;

//usamos una funcion para mostrar un ejemplo de funcion que retorna un puntero. Podría haber sido un procedure? Pues claro!
function merge(todos : estantes) : lista;
var
	L,ult : lista;
	impMin, impActual : Timpuesto;
begin
	L := nil;	//NUEVA LISTA
	
	minimo(todos,impMin);	// BUSCO EL MINIMO ENTRE TODAS LAS LISTAS
	
	while (impMin.impuesto <> marca_fin) do	// SI ENCONTRE UN MINIMO
	begin
		impActual.monto := 0;	// VARIABLE CONTADORA EN CERO
		impActual.impuesto := impMin.impuesto;	// ME GUARDO EL TIPO DEL QUE VOY A CONTAR
		
		while (impMin.impuesto <> marca_fin) and (impMin.impuesto = impActual.impuesto) do begin	// MIENTRAS QUE SEA EL MISMO
			impActual.monto := impActual.monto + impMin.monto;	// SUMO LOS MONTOS
			minimo(todos,impMin);	// CALCULO OTRO MINIMO
		end;
		
		agregarAtras(L,ult,impActual);	// AGREGO ATRAS EN LA NUEVA LISTA, MANTENIENDO EL PUNTERO AL ULTIMO, Y AGREGO EL DATO ACTUAL
		
	end;
	merge := L; // ME DEVUELVE LA NUEVA LISTA PORQUE SE USO UNA FUNCION

end;

procedure agregarAlArbol(var a : arbol; dato : Timpuesto);
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

procedure ImpuestoMinimo(A : arbol; var imp : Timpuesto);
begin
	if (a <> nil) then
		if (a^.hi = nil) then
			imp := A^.dato
		else
			ImpuestoMinimo(A^.hi,imp)
	else  //arbol vacio, no hay minumo
	begin
		imp.impuesto := marca_fin;
		imp.monto := 0;
	end;		

end;

var
	todos : estantes;
	totalMontos : lista;
	A : arbol;
	impuestoMin : timpuesto;
begin
	cargarTodosLosEstantes(todos);
	imprimirTodosLosEstantes(todos);
	totalMontos := merge(todos); 
	
	writeln;	writeln('============================================='); writeln;
	writeln('Resultados acumulados entre todos los estantes');
	writeln;
	imprimirEstante(totalMontos);
	
	A := armarArbol(totalMontos);
	ImpuestoMinimo(A,impuestoMin);
	writeln('El impuesto por el que menos se gasta es ');
	ImprimirImpuesto(impuestoMin);
	
end.
program punto12;

	const

		dimF = 4;
		

	type

		cadena = string[10];
		sucursales = 1..dimF;

		venta = record
			fechaVenta: cadena;
			codProducto: integer;
			codSucursal: sucursales;
			cantProdVendidos: integer;
		end;

		lista = ^nodo;
		nodo = record
			dato: venta;
			sig: lista;
		end;

		regLNueva = record
			codProducto: integer;
			cantProdVendidos: integer;
		end;

		listaNueva = ^nodoLN;
		nodoLN = record
			dato: regLNueva;
			sig: listaNueva;
		end;

		vSucursales = array [sucursales] of lista;

//------------------------------QUÉ APRENDIMOS EN LAS CLASES? ASÍ ES, COPYPASTE------------------------------//
procedure randomString(tamanio:integer; var palabra:string);
var  str,Result: String;
begin
    str:='abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
    Result:='';
    repeat
        Result:=Result+str[Random(Length(str))+1];
    until(Length(Result)=tamanio);
    palabra:=Result;
end;

//------------------------------------------------------------//
procedure inicializarVectorListas(var v: vSucursales);
var
	i: integer;
begin
	for i:= 1 to dimf do
		v[i]:= nil;
end;

//------------------------------PUNTO A------------------------------//
procedure cargarVectorListas(var v: vSucursales);

	procedure leerVenta(var ve: venta);
	begin
		with ve do begin

			codSucursal:= random(5); //El rango va de 0 a 4, en total 5 números
			writeln('SUCURSAL EN EL QUE SE HIZO LA VENTA: ', codSucursal);
			if(codSucursal <> 0) then begin

				randomString(10,fechaVenta);
				writeln('FECHA EN EL QUE SE HIZO LA VENTA: ', fechaVenta); //Hagamos de cuenta que se lee una fecha (?

				codProducto:= random(6);
				writeln('CODIGO DEL PRODUCTO DE LA VENTA: ', codProducto);

				cantProdVendidos:= random(51);
				writeln('CANTIDAD DE PRODUCTOS VENDIDOS: ', cantProdVendidos);

				writeln();
			end;
		end;
	end;

	procedure insertarOrdenado(var l:lista; ve: venta);
	var
		nue, ant, act: lista;
	begin
		new(nue);
		nue^.dato:= ve;
		ant:= l;
		act:= l;
		while((act <> nil) and (ve.codProducto > l^.dato.codProducto)) do begin  //corregir
			ant:= act;
			act:= act^.sig;
		end;
		if(ant = act) then
			l:= nue
		else
			ant^.sig:=nue;
		nue^.sig:= act;
	end;

var
	ve: venta;
begin
	writeln('SE INGRESAN LOS DATOS DE CADA VENTA');
	writeln();
	leerVenta(ve);
	while(ve.codSucursal <> 0) do begin
		insertarOrdenado(v[ve.codSucursal], ve);
		leerVenta(ve);
	end;
end;

//------------------------------PUNTO B------------------------------//
procedure merge(v: vSucursales; var lN: listaNueva);

	procedure minimo(var v: vSucursales; var vM: venta);
	var
		posMin, i: integer;
	begin
		vM.codProducto:= 99999;
		posMin:= -1;
		for i:= 1 to dimf do begin
			if(v[i] <> nil) then begin
				if(v[i]^.dato.codProducto <= vM.codProducto) then begin
					vM.codProducto:= v[i]^.dato.codProducto;
					posMin:= i;
				end;
			end;
		end;
		if(posMin <> -1) then begin
			vM:= v[posMin]^.dato;
			v[posMin]:= v[posMin]^.sig;
		end;
	end;

	procedure agregarAdelante(var l: listaNueva; veA: regLNueva);
	var
		nue: listaNueva;
	begin
		new(nue);
		nue^.dato:= veA;
		nue^.sig:= l;
		l:= nue;
	end;

var
	ventaMin: venta;
	ventaActual: regLNueva;
begin
	lN:= nil;
	minimo(v, ventaMin);
	while(ventaMin.codProducto <> 99999) do begin
		ventaActual.codProducto:= ventaMin.codProducto;
		ventaActual.cantProdVendidos:= 0;
		while((ventaMin.codProducto <> 99999) and (ventaActual.codProducto = ventaMin.codProducto)) do begin
			ventaActual.cantProdVendidos:= ventaActual.cantProdVendidos + ventaMin.cantProdVendidos;
			minimo(v, ventaMin);
		end;
		agregarAdelante(lN, ventaActual); //Como el ejercicio no me pide que esté ordenado por un criterio, pues agregarAdelante :v
	end;
end;

procedure imprimir(l: listaNueva);
begin
	while(l <> nil) do begin
		writeln('CODIGO DEL PRODCUTO: ', l^.dato.codProducto);
		writeln('CANTIDAD DE PRODUCTOS VENDIDOS: ', l^.dato.cantProdVendidos);
		writeln();
		l:= l^.sig;
	end;
end;

//------------------------------PROGRAMA PRINCIPAL------------------------------//
var
	vector: vSucursales;
	lNueva: listaNueva;
begin
	randomize;

	inicializarVectorListas(vector);

//------------------------------PUNTO A------------------------------//
	cargarVectorListas(vector);

	writeln();

//------------------------------PUNTO B------------------------------//
	merge(vector, lNueva);

	imprimir(lNueva);

	writeln();

	write('PRESIONE ENTER PARA CERRAR EL PROGRAMA');
	readln();
end.
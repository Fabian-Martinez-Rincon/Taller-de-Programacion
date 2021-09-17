{4. Una agencia dedicada a la venta de autos ha organizado su stock y, dispone en papel de la
información de los autos en venta.
Implementar un programa que:
a. Genere un árbol binario de búsqueda ordenado por patente identificatoria del auto en
venta. Cada nodo del árbol debe contener patente, año de fabricación (2010..2018), la
marca y el modelo.
b. Contenga un módulo que recibe el árbol generado en a) y una marca y devuelva la
cantidad de autos de dicha marca que posee la agencia. Mostrar el resultado.
c. Contenga un módulo que reciba el árbol generado en a) y retorne una estructura con la
información de los autos agrupados por año de fabricación.
d. Contenga un módulo que reciba el árbol generado en a) y una patente y devuelva el
año de fabricación del auto con dicha patente. Mostrar el resultado.}
program Fabian_Cuatro;
type
    anios = 2010..2018;
    cadena10 = string [10];
    auto = record
        patente:integer;
        anio:anios;
        marca:cadena10;
        modelo:cadena10;
    end;
    arbol = ^nodo; //A
    nodo = record
        dato: auto;
        HI: arbol;
        HD: arbol;
    end;
    lista = ^nodo2; //Se dispone 
    nodo2 = record
        dato:auto;
        sig:nodo2;
    end;
    vector = array [anios] of lista; //C Estructura de autos agrupada por anio de fabricacion
//____________________________________________________________________
Procedure crear (var A:arbol; a:auto);
Begin
    if (A = nil) then
    begin
        new(A);
        A^.dato:= a; 
        A^.HI:= nil; 
        A^.HD:= nil;
    end
    else
        if (a < A^.dato.patente) then 
            crear(A^.HI,a)
        else 
            crear(A^.HD,a)   
End;
//____________________________________________________________________
procedure CargarArbol(var abb:arbol;l:lista);
var
    a:auto;
begin
    while (l^.dato<>nil)do
    begin
        crear(abb,l^.dato);
        l:=l^.sig;
    end;
end;
//____________________________________________________________________
procedure Cantidad_Marca(abb:arbol;marca:cadena10;var cantidad:integer);
begin
    if ( abb <> nil ) then begin
        if (abb^.dato.marca = marca) then
            cantidad:=cantidad+1;
        cantidad_elementos (a^.HI,cant);
        cantidad_elementos (a^.HD,cant);
    end;
end;
//____________________________________________________________________
procedure minimo(var v : arbol; var min : auto);
var
   pos, i : integer;
begin
	min.marca := 2019;
	pos := -1;
	for i:= 1 to dimF do					
		if (v[i] <> nil) and (v[i]^.dato.anio <= min) then begin
			min := v[i]^.dato; 
			pos := i;	
		end;
	if (pos <> -1) then  
		v[pos] := v[pos]^.sig;
end;
//____________________________________________________________________
procedure merge(abb : arbol; var  v : vector);
var
   min : auto;
   ult : lista;
begin
	minimo(abb,min);
	while (min <> 2019) do //El 2019, porque no me voy a pasar
		begin
			AgregarAlFinal2(v[min.anio],ult,min);
			minimo(abb,min);
		end;
end;

//____________________________________________________________________
procedure Cantidad_Marca(abb:arbol;patente:integer;var anio:anios);
begin
    if ( abb <> nil ) then begin
        if (abb^.dato.patente = patente) then
            anio:=abb^.dato.anio;
        cantidad_elementos (a^.HI,cant);
        cantidad_elementos (a^.HD,cant);
    end;
end;
//____________________________________________________________________
var
    abb:arbol;
    l:lista;
    Cantidad:integer;
    marca:cadena10;
    v:vector;
    patente:integer;
    anio_fabricacion:anios;
begin
    l:=nil;
    //Como la informacion importante se dispone, que funcione o no, lo dejo a criterio del lector
    //CargarLista(l); //Se dispone
    abb:=nil;
    CargarArbol(abb,l); //A
    marca:='Fitito';
    Cantidad_Marca(abb,marca,Cantidad); //B
    merge(abb,v);
    Encontrar_Anio(abb,patente,anio_fabricacion);
end.
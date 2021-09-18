{11. Un cine posee la lista de películas que proyectará durante el mes de octubre. De cada
película se conoce: código de película, código de género (1: acción, 2: aventura, 3: drama,
4: suspenso, 5: comedia, 6: bélica, 7: documental y 8: terror) y puntaje promedio otorgado
por las críticas.
Implementar un programa que contenga:
a. Un módulo que lea los datos de películas y los almacene ordenados por código de
película y agrupados por código de género, en una estructura de datos adecuada. La
lectura finaliza cuando se lee el código de película -1.
b. Un módulo que reciba la estructura generada en el punto a y retorne una
estructura de datos donde estén todas las películas almacenadas ordenadas por código de
película.
}
program Fabian_once;   
const
    dimF = 8;
type
    rango = 1..dimF;
    peliculas = record
        codigo:integer;
        genero:rango;
        puntaje_Promedio:real;
    end;
    lista = ^nodo;
    nodo = record
        dato:peliculas;
        sig:lista;
    end;
    vector = array [rango] of lista;
//___________________________________________________________________________
procedure leerPelicula(var p:peliculas);
begin
    p.codigo:=-1+random(20);  //el if que chequea corte de control
    p.genero:=random(10);
    p.puntaje_Promedio:=random(10);
end;
//___________________________________________________________________________
Procedure InsertarElemento ( var pri: lista; peli: peliculas);
var 
    ant, nue, act: lista;
begin
    new (nue);
    nue^.dato := peli;
    act := pri;
    ant := pri;
    while (act<>NIL) and (act^.dato.codigo < peli.codigo) do 
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

//___________________________________________________________________________
procedure Cargar_Peliculas(var v:vector);
var
    p:peliculas;
begin
    leerPelicula(p);
    while (p.codigo <> -1) do
    begin
        InsertarElemento(v[p.genero],p);
        leerPelicula(p);
    end;
end;
//___________________________________________________________________________
procedure AgregarAlFinal2(var pri,ult:lista;per:peliculas); 
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
//___________________________________________________________________________
procedure minimo(var v : vector; var min : peliculas);
var
  i, posMin : integer;
begin
	min.codigo := 9999;
	posMin := -1;
	
	for i := 1 to dimF do 
		if (v[i] <> NIL) and (v[i]^.dato.codigo <= min.codigo)  then 
		begin
			min.codigo := v[i]^.dato.codigo; 
            posMin := i;		
		end;
	if (posMin <> -1) then
	begin                
        min.genero:=v[posMin]^.dato.genero;
        min.puntaje_Promedio:=v[posMin]^.dato.puntaje_Promedio;
		v[posMin] := v[posMin]^.sig; 
	end
end;
//___________________________________________________________________________
procedure merge(v : vector; var l_nueva:lista);
var
	ult : lista;
	min : peliculas;
begin
	minimo(v,min);	
	while (min.codigo <> 9999) do 
	begin
        AgregarAlFinal2(ult,l_nueva,min);
        minimo(v,min);
	end;
end;
//___________________________________________________________________________
procedure Inicializar_Peliculas(var v:vector);
var 
    i:Integer;
begin
    for i:=1 to dimF do
    begin
        v[i]:=Nil;
    end;
end;
//___________________________________________________________________________
var
    v:vector;
    l_nueva:lista;
begin
    l_nueva:=Nil;
    Inicializar_Peliculas(v);
    Cargar_Peliculas(v); //A
    merge(v,l_nueva); //B
end.
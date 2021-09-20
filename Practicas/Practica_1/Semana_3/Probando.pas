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
    cantidad_pelis = 20;
type
    rango = 1..dimF;
    peliculas = record
        codigo:integer;
        genero:rango;
        puntaje_Promedio:real;
    end;
    vector_pelis = array [1..cantidad_pelis] of peliculas;

    vector_dimL = array [rango] of integer; //Para el vector, por unidad

    vector = array [rango] of vector_pelis;
//___________________________________________________________________________
procedure leerPelicula(var p:peliculas);
begin
    p.codigo:=-1+random(20);  //el if que chequea corte de control
    p.genero:=random(10);
    p.puntaje_Promedio:=random(10);
end;
//___________________________________________________________________________
Procedure Insertar (var v:vector_pelis; var dimL:integer; pos: integer; elem:peliculas);
var 
    i: integer;
begin
    for i:= dimL downto pos do 
        v [i + 1] := v [i] ;
    v[pos]:= elem; 
    dimL := dimL + 1;
End;
//__________________________________________________________________________________
Function BuscarPosicion (x:integer;v:vector_pelis;dimL:integer):integer;
var
    pos:Integer;
begin
    pos:=1; 
    while (pos <= dimL) and (x > v[pos].codigo) do
        pos:=pos + 1;
    BuscarPosicion:=pos;
end;
//___________________________________________________________________________
procedure Manteniendo_un_Orden(var v:vector_pelis; var dimL:integer;elemento:peliculas);
var
    pos:integer;
begin
    if (dimL < cantidad_pelis) then
    begin
        pos:=BuscarPosicion(elemento.codigo,v,dimL);
        Insertar(v,dimL,pos,elemento);
    end;
end;
//__________________________________________________________________________________
procedure Cargar_Peliculas(var v:vector;var v_dimL:vector_dimL);
var
    p:peliculas;
begin
    leerPelicula(p);
    while (p.codigo <> -1) and (v_dimL[p.genero] < cantidad_pelis) do //Como mucho 20
    begin
        Manteniendo_un_Orden(v[p.genero],v_dimL[p.genero],p);
        leerPelicula(p);
    end;
end;
//___________________________________________________________________________
{procedure minimo(var v : vector; var min : peliculas);
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
end;}
//___________________________________________________________________________
procedure Inicializar_Peliculas(var v:vector_dimL);
var 
    i:Integer;
begin
    for i:=1 to dimF do
    begin
        v[i]:=0;
    end;
end;
//___________________________________________________________________________
procedure Imprimir_DimF(v_dimL:vector_dimL);
var
    i:integer;
begin
    for i:=1 to dimF do
    begin
        WriteLn('Cosa: ',v_dimL[i]);
    end; 
end;
//___________________________________________________________________________
var
    v:vector;
    v_dimL:vector_dimL;
begin
    randomize;
    WriteLn('Hola');
    Inicializar_Peliculas(v_dimL);
    Cargar_Peliculas(v,v_dimL); //A
    WriteLn('Dimensiones Logicas');
    Imprimir_DimF(v_dimL);
    //merge(v,l_nueva); //B
end.
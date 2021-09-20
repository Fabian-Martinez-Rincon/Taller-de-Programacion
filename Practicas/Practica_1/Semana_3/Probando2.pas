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

    vector_dimL = array [rango] of integer; //Contador para las dimensiones Logicas

    vector = array [rango] of vector_pelis; //Para el vector que guarda todo
//____________________________________________________________________________________
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
    while (pos <= cantidad_pelis) and (x > v[pos].codigo) do
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
//____________________________________________________________________________________
procedure leerPelicula(var p:peliculas);
begin
    p.codigo:=-1+random(20);  //el if que chequea corte de control
    WriteLn('Codigo: ', p.codigo);
    p.genero:=1+random(7);
    WriteLn('Genero: ', p.genero);
    p.puntaje_Promedio:=random(10);
    WriteLn('Puntaje: ', p.puntaje_Promedio);
    Writeln('_____________________');
end;
//____________________________________________________________________________________
procedure Cargar_Peliculas(var v:vector;var v_dimL:vector_dimL);
var
    p:peliculas;
begin
    leerPelicula(p);
    while (p.codigo <> -1) and (v_dimL[p.genero] < cantidad_pelis) do //Como mucho 20 y miro la dimension logica del vector con ese genero
    begin
        Manteniendo_un_Orden(v[p.genero],v_dimL[p.genero],p); //Paso datos individuales como si fuera normal
        leerPelicula(p);
    end;
end;
//____________________________________________________________________________________
procedure ImprimirVector(v:vector;dimL:vector_dimL);
var
    i:integer;
    j:integer;
begin
    for j:=1 to dimF do
    begin
        WriteLn('Genero: ',i);
        WriteLn('Dimension Logica: ', dimL[j]);
        for i:=1 to dimL[j] do
        begin
            writeln('Codigo: ', (v[j])[i].codigo);
            writeln('Genero: ', (v[j])[i].genero);
            writeln('Puntaje: ', (v[j])[i].puntaje_Promedio:2:2);
        end;
        WriteLn('____________________________________');
    end;
end;
//____________________________________________________________________________________
procedure Inicializar_Peliculas(var v:vector_dimL);
var 
    i:Integer;
begin
    for i:=1 to dimF do
    begin
        v[i]:=0;
    end;
end;
//____________________________________________________________________________________
procedure Imprimir_DimF(dimL:vector_dimL);
var
    i:integer;
    j:integer;
begin
    for i:=1 to dimF do
    begin
        WriteLn('Genero: ',i);
        WriteLn('DimL: ', (dimL[i]));
    end;
end;
//____________________________________________________________________________________
var
    v:vector;
    v_dimL:vector_dimL;
begin
    randomize;
    WriteLn('Hola');
    Inicializar_Peliculas(v_dimL);
    Cargar_Peliculas(v,v_dimL); //A
    ImprimirVector(v,v_dimL);
    //WriteLn('Dimensiones Logicas');
    //Imprimir_DimF(v_dimL);
end.
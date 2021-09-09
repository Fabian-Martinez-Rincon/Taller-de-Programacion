{
2. Netflix ha publicado la lista de películas que estarán disponibles durante el mes de diciembre de 2021. De cada película se conoce: código de película, código de género (1: acción, 2: aventura, 3: drama, 4: suspenso, 5: comedia, 6: bélica, 7: documental y 8: terror)
y puntaje promedio otorgado por las críticas.
Implementar un programa modularizado que:
a. Lea los datos de películas y los almacene por orden de llegada y agrupados por código de género, en una estructura de datos adecuada. La lectura finaliza cuando se lee el código de la película -1.
b. Una vez almacenada la información, genere un vector que guarde, para cada género, el código de película con mayor puntaje obtenido entre todas las críticas.
c. Ordene los elementos del vector generado en b) por puntaje utilizando alguno de los dos métodos vistos en la teoría.
d. Luego de ordenar el vector, muestre el código de película con mayor puntaje y el código de película con menor puntaje
}
program dos;
const
    dimF = 8;
type
    rango = 1..dimF;
    pelicula = record
        cod_Peli:integer;
        cod_genero:rango;
        punt_prom:real;
    end;

    lista = ^nodo;
    nodo = record
        dato:pelicula;
        sig:lista;
    end;
    vector = array [rango] of lista;
    
    peli_puntaje = record
        puntaje:real;
        codigo:Integer;
    end;
    vector_puntaje = array [rango] of peli_puntaje;
//_________________________________________________________________
procedure inicializar_vector_listas(var v:vector);
var
    i:integer;
begin
    for i:= 1 to dimf do begin
        v[i]:=nil;
    end;  
end;  
//_________________________________________________________________
procedure AgregarAlFinal1(var pri:lista;per:pelicula); 
var  
   act, nue : lista;
begin 
   new (nue);
   nue^.dato:= per;
   nue^.sig := NIL;
   if pri <> Nil then 
   begin
       act := pri ;
       while  (act^.sig <> NIL ) do 
           act := act^.sig ;
       act^.sig := nue ;
   end
   else
       pri:= nue;
end;
//_________________________________________________________________
procedure leerPeli(var p:pelicula);
begin
    writeln('Codigo de Pelicula: '); ReadLn(p.cod_Peli);
    if (p.cod_Peli <> -1) then
    begin
        writeln('Codigo de Genero: '); ReadLn(p.cod_genero);
        writeln('Puntaje Promedio: '); ReadLn(p.punt_prom);
    end;
end;
//_________________________________________________________________
procedure CargarPelis(var v:vector);
var
    p:pelicula;
begin
    leerPeli(p);
    while (p.cod_Peli <> -1) do
    begin
        AgregarAlFinal1(v[p.cod_genero],p);
        leerPeli(p);
    end;
end;
//_________________________________________________________________
procedure MayorPuntaje(v:vector; var vp:vector_puntaje);
var
    i:integer;
begin
    for i:=1 to dimF do
    begin
    while v[i] <> nil do
        begin
            if (v[i]^.dato.punt_prom>vp[i].puntaje) then
            begin
                vp[i].puntaje:=v[i]^.dato.punt_prom;
                vp[i].codigo:=i;
            end;
            v[i]:=v[i]^.sig;
        end;
    end;
    
end;
//_________________________________________________________________

Procedure OrdenarVector ( var v: vector_puntaje );
var 
    i, j, p: Integer;
    item:peli_puntaje;
begin
    for i:=1 to dimF-1 do 
    begin {busca el mínimo y guarda en p la posición}
        p := i;
        for j := i+1 to dimF do
            if v[ j ].puntaje < v[ p ].puntaje then p:=j;
        {intercambia v[i] y v[p]}
        item := v[ p ];   
        v[ p ] := v[ i ];   
        v[ i ] := item;
    end;
end;
//_________________________________________________________________
procedure imprimirVector2(v:vector_puntaje);
var
    i:integer;
begin
    for i:=1 to dimF do
    begin
        writeln('Puntaje: ',(v[i].puntaje):2:2);
        writeln('Codigo: ',v[i].codigo);
    end;
end;
//_________________________________________________________________
var
    v:vector;
    vp:vector_puntaje;
begin
    inicializar_vector_listas(v);
    CargarPelis(v);//A
    WriteLn('____________');
    MayorPuntaje(v,vp);//B
    OrdenarVector(vp);
    WriteLn('____________');
    WriteLn('El codigo de la pelicula con menor puntaje es: ', vp[1].codigo);
    WriteLn('El codigo de la pelicula con menor puntaje es: ', vp[8].codigo);
end.
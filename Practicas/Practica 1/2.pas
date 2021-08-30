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
type
    rango = 1..8;
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
    vector = array [rango] of real;
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
procedure CargarPelis(var l:lista);
var
    p:pelicula;
    genero_actual:rango;
begin
    leerPeli(p);
    genero_actual:=1;
    while (p.cod_Peli <> -1) do
    begin
        genero_actual:=p.cod_genero;
        while (genero_actual = p.cod_genero) and (p.cod_Peli <> -1) do
        begin
            AgregarAlFinal1(l,p);
            leerPeli(p);
        end;
        
    end;
        
end;
//_________________________________________________________________
procedure imprimirPelis(l:lista);
begin
    while (l <> nil) do
    begin
        WriteLn('Codigo: ',l^.dato.cod_Peli);
        WriteLn('Genero: ',l^.dato.cod_genero);
        WriteLn('Promedio: ',l^.dato.punt_prom:2:2);
        l:=l^.sig;
    end;
end;
//_________________________________________________________________
var
    l:lista;
begin
    CargarPelis(l);//A
    imprimirPelis(l);
end.
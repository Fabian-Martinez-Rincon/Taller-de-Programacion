<h1 align="center"> 💻Practica 1 </h1>
<div align="center">
<img src="https://media.giphy.com/media/ukMiDlCmdv2og/giphy.gif?cid=ecf05e4724nglpc52qob2wzy61tla3htfbbmbdoos07dfsni&rid=giphy.gif&ct=g"/>
 </div>
<br>

### Problema 1.
El administrador de un edificio de oficinas cuenta, en papel, con la información del pago de las expensas de dichas oficinas. Implementar un programa modularizado que:
a. Genere un vector, sin orden, con a lo sumo las 300 oficinas que administra. De cada oficina se ingresa el código de identificación, DNI del propietario y valor de la expensa. La lectura finaliza cuando se ingresa el código de identificación -1, el cual no se procesa.
b. Ordene el vector, aplicando el método de inserción, por código de identificación de la oficina.
c. Ordene el vector aplicando el método de selección, por código de identificación de la oficina.

```pascal
program uno;
const
    dimF = 300;
type
    rango = 1..dimF;
    oficina = record
        codigo:integer;
        dni:LongInt;
        valor:integer;
    end;
    vector = array [rango] of oficina;
//_______________________________________________________________
procedure LeerOficina(var off:oficina);
begin
    WriteLn('Codigo: '); ReadLn(off.codigo);
    if (off.codigo <> -1) then
    begin
        WriteLn('Dni: '); ReadLn(off.dni);
        WriteLn('Valor: '); ReadLn(off.valor);
    end;
end;
//_______________________________________________________________
procedure CargarOficinas(var v:vector;var dimL:integer);
var
    off:oficina;
begin
    LeerOficina(off);
    while (off.codigo <> -1) and (dimL<dimF) do
    begin
        dimL:=dimL+1;
        v[dimL]:=off;
        LeerOficina(off);
    end;
end;
//_______________________________________________________________
Procedure Ordenar ( var v: vector; dimL: Integer );
var 
    i, j: Integer; 
    actual:oficina;
begin
    actual.codigo:=0;
    actual.dni:=0;
    actual.valor:=0;
    for i:=2 to dimL do 
    begin 
        actual:= v[i];
        j:= i-1; 
        while (j > 0) and (v[j].codigo > actual.codigo) do
        begin
            v[j+1]:= v[j];
            j:=j-1;
        end;  
        v[j+1]:= actual; 
    end;
end;

//_______________________________________________________________
procedure ImprimirVector(v:vector;dimL:integer);
var
    i:integer;
begin
    for i:=1 to dimL do
    begin
        WriteLn('Codigo: ',v[i].codigo);
        WriteLn('Dni: ',v[i].dni);
        WriteLn('Valor: ',v[i].valor);
    end;
end;
//_______________________________________________________________

Procedure Ordenar2 ( var v: vector; dimL: Integer );
var 
    i, j, p: Integer; 
    item : Integer;	
    actual:oficina;
begin
    actual.codigo:=0;
    actual.dni:=0;
    actual.valor:=0;
    for i:=2 to dimL do 
    begin 
        actual:= v[i];
        j:= i-1; 
        while (j > 0) and (v[j].codigo > actual.codigo) do
        begin
            v[j+1]:= v[j];
            j:=j-1;
        end;  
        v[j+1]:= actual; 
    end;
end;
//_______________________________________________________________
var
    v:vector;
    dimL:integer;
begin
    dimL:=0;
    CargarOficinas(v,dimL);//A
    ImprimirVector(v,dimL);
    WriteLn('_____________________________');
    //Ordenar(v,dimL);//B
    Ordenar2(v,dimL);//C
    ImprimirVector(v,dimL);
end.
```

### Problema 2.
Netflix ha publicado la lista de películas que estarán disponibles durante el mes de diciembre de 2021. De cada película se conoce: código de película, código de género (1: acción, 2: aventura, 3: drama, 4: suspenso, 5: comedia, 6: bélica, 7: documental y 8: terror)
y puntaje promedio otorgado por las críticas.
Implementar un programa modularizado que:
a. Lea los datos de películas y los almacene por orden de llegada y agrupados por código de género, en una estructura de datos adecuada. La lectura finaliza cuando se lee el código de la película -1.
b. Una vez almacenada la información, genere un vector que guarde, para cada género, el código de película con mayor puntaje obtenido entre todas las críticas.
c. Ordene los elementos del vector generado en b) por puntaje utilizando alguno de los dos métodos vistos en la teoría.
d. Luego de ordenar el vector, muestre el código de película con mayor puntaje y el código de película con menor puntaje
```pascal
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
procedure imprimirVector(v:vector);
var
    i:integer;
begin
    for i:=1 to dimF do
    begin
        while v[i] <> nil do
        begin
            writeln('Codigo Peli: ',v[i]^.dato.cod_Peli);
            writeln('Codigo Genero: ',v[i]^.dato.cod_genero);
            writeln('Puntaje Promedio: ',v[i]^.dato.punt_prom:2:2);
            v[i]:=v[i]^.sig;
        end;
    end;
end;
//_________________________________________________________________
procedure inicializarPuntajes(var vp:vector_puntaje);
var
    i:integer;
begin
    for i:=1 to dimF do
    begin
        vp[i].puntaje:=-1;
        vp[i].codigo:=-1;
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
    inicializarPuntajes(vp);
    CargarPelis(v);//A
    WriteLn('____________');
    imprimirVector(v);
    MayorPuntaje(v,vp);//B
    OrdenarVector(vp);
    WriteLn('____________');
    imprimirVector2(vp);
    WriteLn('____________');
    WriteLn('El codigo de la pelicula con menor puntaje es: ', vp[1].codigo);
    WriteLn('El codigo de la pelicula con menor puntaje es: ', vp[8].codigo);
end.
```


### Problema 3.
Una librería requiere el procesamiento de la información de sus productos. De cada producto se conoce el código del producto, código de rubro (del 1 al 8) y precio.
Implementar un programa modularizado que:
a. Lea los datos de los productos y los almacene ordenados por código de producto y agrupados por rubro, en una estructura de datos adecuada. El ingreso de los productos finaliza cuando se lee el precio 0. Una vez almacenados, muestre los códigos de los productos pertenecientes a cada rubro.
b. Genere un vector (de a lo sumo 30 elementos) con los productos del rubro 3. Considerar que puede haber más o menos de 30 productos del rubro 3. Si la cantidad de productos del rubro 3 es mayor a 30, almacenar los primeros 30 que están en la lista e ignore el resto.
c. Ordene, por precio, los elementos del vector generado en b) utilizando alguno de los dos métodos vistos en la teoría.
d. Muestre los precios del vector ordenado.
```pascal
program tres;
const
    dimF = 8;
    dimF2 = 30;
type
    rango = 1..8;
    producto = record
        codigo:integer;
        rubro:rango;
        precio:real;
    end;
    lista = ^nodo;
    nodo = record
        dato:producto;
        sig:lista;
    end;
    vector = array [rango] of lista;
    vector_rub3 = array [1..dimF2] of producto;
//________________________________________________________________________________________________________
Procedure InsertarElemento ( var pri: lista; per: producto);
var 
    ant, nue, act: lista;
begin
    new (nue);
    nue^.dato := per;
    act := pri;
    ant := pri;
    {Recorro mientras no se termine la lista y no encuentro la posición correcta}
    while (act<>NIL) and (act^.dato.codigo < per.codigo) do //De menor a mayor
    begin
        ant := act;
        act := act^.sig ;
    end;
    if (ant = act)  then 
        pri := nue   {el dato va al principio}
    else  
        ant^.sig  := nue; {va entre otros dos o al final}
    nue^.sig := act ;
end;

//________________________________________________________________________________________________________
procedure leerProducto(var p:producto);
begin
    WriteLn('Precio: '); ReadLn(p.precio);
    if (p.precio <> 0) then
    begin
        WriteLn('Codigo: '); ReadLn(p.codigo);
        WriteLn('Rubro: '); ReadLn(p.rubro);
    end;
    
end;
//________________________________________________________________________________________________________
procedure CargarProductos(var v:vector);
var
    p:producto;
begin
    leerProducto(p);
    while (p.precio <> 0) do
    begin
        InsertarElemento(v[p.rubro],p);
        leerProducto(p);
    end;
end;
//________________________________________________________________________________________________________
procedure Imprimir_Productos(v:vector);
var
    i:integer;
begin
    for i:=1 to dimF do
    begin
        while v[i] <> nil do
        begin
            WriteLn('_______________');
            writeln('Codigo: ',v[i]^.dato.codigo);
            writeln('Rubro: ',v[i]^.dato.rubro);
            writeln('Precio: ',v[i]^.dato.precio:2:2);
            v[i]:=v[i]^.sig;
        end;
    end;
end;
//________________________________________________________________________________________________________
procedure CargarRubro3(Rubro3:lista;var vb:vector_rub3;var dimL:Integer);
begin
    while (Rubro3 <> nil) and (dimL < dimF2) do
    begin
        dimL:=dimL+1;
        vb[dimL]:=Rubro3^.dato;
        Rubro3:=Rubro3^.sig;
    end;
end;
//________________________________________________________________________________________________________
Procedure Ordenar ( var v: vector_rub3; dimL: Integer );
var 
    i, j, p: Integer;
    item:producto;
begin
    for i:=1 to dimL-1 do 
    begin {busca el mínimo y guarda en p la posición}
        p := i;
        for j := i+1 to dimL do
            if v[ j ].precio < v[ p ].precio then p:=j;
        {intercambia v[i] y v[p]}
        item := v[ p ];   
        v[ p ] := v[ i ];   
        v[ i ] := item;
    end;
end;

//________________________________________________________________________________________________________
procedure ImprimirRubro3(vb:vector_rub3; dimL:integer);
var
    i:Integer;
begin
    for i:=1 to dimL do
    begin
        writeln('Codigo: ',vb[i].codigo);
        writeln('Rubro: ',vb[i].rubro);
        writeln('Rubro: ',vb[i].precio:2:2);
    end;
end;
//________________________________________________________________________________________________________
var
    v:vector;
    vb:vector_rub3;
    dimL:integer;
begin
    dimL:=0;
    CargarProductos(v);//A
    Imprimir_Productos(v);
    WriteLn('_______________');
    CargarRubro3(v[3],vb,dimL);//B
    Ordenar(vb,dimL);//C
    ImprimirRubro3(vb,dimL);
    WriteLn('_______________');
end.
```

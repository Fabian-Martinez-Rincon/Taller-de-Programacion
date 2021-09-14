{Suponiendo que 4 integrantes de una familia, llevan sus gastos de manera similar a Juan y Paula. Se pide:

a ) Generar la estructura para almacenar los gastos de cada uno de los integrantes. Cada estructura debe generarse de manera ordenada por nombre de gasto. Cada estructura se carga hasta leer el nombre ‘ZZ’.

b) Imprimir las estructuras generadas en a.

c) Realizar el merge de manera de generar una única estructura que contenga los montos totales por impuesto con la estructura generada en a.

d) A partir de la estructura generada en c. arme un ABB ordenado por monto total y luego imprima el nombre del gasto que menos costo.}
program parte2;
const
	cant=4; 
	marca_fin = 'ZZ';
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

    {arbol = ^nodoArbol;
    nodoArbol = record
        dato : gastos;
        hd,hi : arbol;
    end;}
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
        WriteLn('Integrante: ', i);
        Cargar_Integrante(inte[i]);
        Imprimir_Integrante(inte[i]); //B
    end;
end;
//_______________________________________________________

var
    inte:integrantes;
begin
    randomize;
    Cargar_Integrantes(inte);//A y B
end.
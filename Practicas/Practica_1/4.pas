{
4. Escribir un programa que:
a. Implemente un módulo que genere una lista a partir de la lectura de números enteros. La lectura finaliza con el número -1.
b. Implemente un módulo recursivo que devuelva el mínimo valor de la lista.
c. Implemente un módulo recursivo que devuelva el máximo valor de la lista.
d. Implemente un módulo recursivo que devuelva verdadero si un valor determinado
se encuentra en la lista o falso en caso contrario.}
Program cuatro;
Type
    lista = ^nodo;
    nodo = record
        dato: Integer;
        sig: lista;
    end;

//__________________________________
Procedure AgregarAdelante (var L:lista; per:Integer);
Var 
    nue:Lista;
Begin  
    New(nue);  
    nue^.dato:=per;  
    nue^.sig:=L;  
    L:=nue;
End;

//__________________________________
procedure CargarLista(var l:lista);
var
    num:integer;
begin
    ReadLn(num);
    while (num <> -1) do
    begin
        AgregarAdelante(l,num);
        ReadLn(num);
    end;
end;
//__________________________________

Procedure imprimir (L:lista);
Begin
    if (L <> nil) then
    begin
        write (L^.dato);
        L:= L^.sig;
        imprimir (L);
    end;
End;
//__________________________________
procedure MinimoValor(l:lista;var min:integer);
Begin
    if (L <> nil) then
    begin
        if (L^.dato < min) then
        begin
            min:=L^.dato;
        end;
        L:= L^.sig;
        MinimoValor(l,min);
    end;
End;
//__________________________________
procedure MaximoValor(l:lista;var max:integer);
Begin
    if (L <> nil) then
    begin
        if (L^.dato > max) then
        begin
            max:=L^.dato;
        end;
        L:= L^.sig;
        MaximoValor(l,max);
    end;
End;
//__________________________________
function Encontrar(l:lista;valor:integer;buscar:Boolean):Boolean;
Begin
    buscar:=false;
    if (L <> nil) then
    begin
        if (L^.dato = valor) then
        begin
            buscar:=true;
        end;
        L:= L^.sig;
        if (not buscar) then 
            buscar:=Encontrar(l,valor,buscar);
    end;
    Encontrar:=buscar;
End;
//__________________________________
Var
    l:lista;
    min,max:integer;
    encontro:Boolean;
    valor:integer;
    buscar:Boolean;
Begin
    valor:=3;
    encontro:=False;
    buscar:=False;
    max:=-1;
    min:=9999;
    l:=Nil;
    CargarLista(l); //A
    WriteLn('_________');
    WriteLn();
    Imprimir(l);
    WriteLn();
    WriteLn('_________');
    MinimoValor(l,min); //B
    WriteLn('El valor minimo es: ', min);
    MaximoValor(l,max); //C
    WriteLn('El valor Maximo es: ', max);
    encontro:=Encontrar(l,valor,buscar);
    WriteLn('Encontro: ', encontro);
End.

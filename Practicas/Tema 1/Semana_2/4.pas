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
procedure CargarListaRandom(var l:lista);
var
    num:integer;
begin
    num:=Random(9)*-1;
    while (num <> -1) do
    begin
        AgregarAdelante(l,num);
        num:=Random(9)*-1;
    end;
end;

//__________________________________
function MinimoValor(l:lista;min:integer):Integer;
Begin
    if (l = nil) then begin
        MinimoValor:=min;
    end
    else begin
        if (l^.dato < min) then
            min:=l^.dato;
        l:=l^.sig;
        MinimoValor:=MinimoValor(l,min);
    end;
End;
//__________________________________
function MaximoValor(l:lista;max:integer):Integer;
Begin
    if (l = nil) then begin
        MaximoValor:=max;
    end
    else begin
        if (l^.dato > max) then
            max:=l^.dato;
        l:=l^.sig;
        MaximoValor:=MaximoValor(l,max);
    end;
End;
//__________________________________

function buscar(l:lista; x:integer):boolean;
begin
  if(l=nil)then
    buscar:=false
  else
    if(l^.dato=x)then
      buscar:=true
    else
      buscar:=buscar(l^.sig,x);
end;
//__________________________________
Var
    l:lista;
    min,max:integer;
    valor:integer;
Begin
    Randomize;
    valor:=3;
    max:=-1;
    min:=9999;
    l:=Nil;
    CargarListaRandom(l); //A
    WriteLn();
    WriteLn('_________');
    
    WriteLn('El valor minimo es: ', MinimoValor(l,min));//B
    
    WriteLn('El valor Maximo es: ', MaximoValor(l,max));//C
     
    WriteLn('Encontro: ', buscar(l,valor));//D
End.

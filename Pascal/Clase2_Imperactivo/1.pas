program uno;
type
    lista = ^nodo;
    nodo = record
        num:integer;
        sig:lista;
    end;
//__________________________________________________________________
Procedure AgregarAdelante (var L:lista; per:Integer);
Var 
    nue:Lista;
Begin  
    New(nue);  
    nue^.num:=per;  
    nue^.sig:=L;  
    L:=nue;
End;
//__________________________________________________________________
procedure CargarLista(var l:lista);
var
    contador:integer;
    num:Integer;
begin
    contador:=0;
    num:=0;
    while (contador < 3) do //Es 7, si no lo cambio, me colgue, perdon :C
    begin
        ReadLn(num);
        AgregarAdelante(l,num);
        contador:=contador+1;
    end;
end;
//__________________________________________________________________
Procedure imprimir (L:lista);
Begin
    if (L <> nil) then
    begin
        writeln ('Num: ',L^.num);
        L:= L^.sig;
        imprimir (L);
    end;
End;

//__________________________________________________________________
var
    l:lista;
begin
    l:=nil;
    CargarLista(l);
    WriteLn('________________');
    imprimir(l);
end.
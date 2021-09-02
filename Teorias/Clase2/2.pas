program dos;
type
    lista = ^nodo;
    lista2 = ^nodo;
    nodo = record
        num:integer;
        sig:lista;
    end;
    
    
//_________________________________________
procedure AgregarAlFinal2(var pri,ult:lista;per:Integer); 
var  
    nue : lista;
begin 
    new (nue);
    nue^.num:= per;
    nue^.sig := NIL;
    if (pri <> Nil) then 
    begin
        ult^.sig := nue;
    end
    else 
        pri := nue;
    ult := nue;
end;
//_________________________________________
Procedure AgregarAdelante (var L:lista2; per:Integer);
Var 
    nue:Lista2;
Begin  
    New(nue);  
    nue^.num:=per;  
    nue^.sig:=L;  
    L:=nue;
End;

//_________________________________________
procedure CargarLista(var l,ult:lista);
var
    n:Integer;
begin
    ReadLn(n);
    while n <> 0 do
    begin
        AgregarAlFinal2(l,ult,n);
        ReadLn(n);
    end;
end;
//_________________________________________
procedure imprimir2(L:lista2);
begin
    Write('|');
    while l <> nil do
    begin
        write (L^.num,'|');
        
        L:= L^.sig;
    end;
end;
//_________________________________________
Procedure imprimir (L:lista);
var
    dig:integer;
    l2:lista2;
Begin
    l2:=Nil;
    if (L <> nil) then
    begin
        writeln ('Num: ',L^.num);
        while l^.num <> 0 do //Como imprimia los valores al revez, se me ocurrio crear una lista con los digitos
        begin //De forma que se imprima como el original (Espero que se pueda hacer de otra forma)
            dig:=l^.num mod 10;
            AgregarAdelante(l2,dig);
            l^.num := l^.num div 10;
        end;
        imprimir2(l2);
        WriteLn();
        WriteLn('___________');
        L:= L^.sig;
        imprimir (L);
    end;
End;
//_________________________________________
var
    l,ult:lista;
begin
    l:=Nil;
    ult:=Nil;
    CargarLista(l,ult);
    WriteLn('__________');
    imprimir(l);
end.
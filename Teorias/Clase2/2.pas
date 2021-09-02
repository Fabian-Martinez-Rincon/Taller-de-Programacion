program dos;
type
    lista = ^nodo;
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
Procedure imprimir (L:lista);
var
    dig:integer;
Begin
    if (L <> nil) then
    begin
        writeln ('Num: ',L^.num);
        Write('|');
        while l^.num <> 0 do
        begin
            dig:=l^.num mod 10;
            Write( dig,'|');
            l^.num := l^.num div 10;
        end;
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
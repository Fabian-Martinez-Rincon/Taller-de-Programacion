Program arboles;
Type
    arbol = ^nodo;
    nodo = record
        dato: tipo;
        HI: arbol;
        HD: arbol;
    end;
Var
    abb:arbol; x:integer;
Begin
    abb:=nil;
    read (x);
    while (x<>0)do
    begin
        crear(abb,x);
        read(x);
    end;
End.

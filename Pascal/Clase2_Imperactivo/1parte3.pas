Program arboles;
Type
    arbol = ^nodo;
    nodo = record
        dato: Integer;
        HI: arbol;
        HD: arbol;
    end;
//_______________________________________________
Procedure crear (var A:arbol; num:integer);
Begin
    if (A = nil) then
    begin
        new(A);
        A^.dato:= num; 
        A^.HI:= nil; 
        A^.HD:= nil;
    end
    else
        if (num < A^.dato) then 
            crear(A^.HI,num)
        else 
            crear(A^.HD,num)   
End;
//_______________________________________________
Var
    abb:arbol; x:integer;
Begin
    abb:=nil;
    read (x);
    while (x<>58)do
    begin
        crear(abb,x);
        read(x);
    end;
End.

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
Procedure preOrden ( a : arbol );
begin 
    if ( a<> nil ) then begin
        write (a^.dato,'|');   
        preOrden (a^.HI);
        preOrden (a^.HD);
    end;
end;
//_______________________________________________
Procedure Maximo ( a : arbol ; var max:integer);
begin 
    if ( a<> nil ) then begin
        if (a^.dato>max)then
        begin
            max:=a^.dato;
        end;
        Maximo (a^.HI,max);
        Maximo (a^.HD,max);
    end;
end;
//_______________________________________________
Var
    abb:arbol; x:integer;
    max:integer;
Begin
    max:=-1;
    abb:=nil;
    read (x);
    while (x<>58)do
    begin
        crear(abb,x);
        read(x);
    end;
    preOrden(abb);
    WriteLn();
    WriteLn('___________');
    Maximo(abb,max);
    WriteLn('El elemento maximo es: ', max);
    
End.

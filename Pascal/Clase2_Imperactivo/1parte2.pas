Program arboles;
Type
    arbol = ^nodo;
    nodo = record
        dato: Integer;
        HI: arbol;
        HD: arbol;
    end;
//______________________________________
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
//______________________________________
Procedure preOrden ( a : arbol;var total:integer );
begin //Input 1,22,3,4,55,67,7,0
    if ( a<> nil ) then begin
        write (a^.dato,'|');   
        total:=total+a^.dato;
        
        preOrden (a^.HI,total);
        preOrden (a^.HD,total);
    end;
end;//Output 1,22,3,4,7,55,67

//______________________________________

Var
    abb:arbol; x:integer;
    total:integer;
Begin
    total:=0;
    abb:=nil;
    read (x);
    while (x<>0)do
    begin
        crear(abb,x);
        read(x);
    end;
    preOrden(abb,total);
    WriteLn();
    WriteLn('La suma de todos sus elementos es: ',total);
End.
Procedure enOrden ( a : arbol );
begin //Input 1,22,3,44,5,6,7,2,0
    if ( a<> nil ) then begin
        enOrden (a^.HI);
        write (a^.dato,'|');
        enOrden (a^.HD);
    end;
end;//1,2,3,5,6,7,22,44
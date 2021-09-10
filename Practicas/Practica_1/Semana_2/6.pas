{6. Implementar un módulo que realice una búsqueda dicotómica en un vector, utilizando el
siguiente encabezado:
Procedure busquedaDicotomica (v: vector; ini,fin: indice; dato:integer; var pos: indice);
Nota: El parámetro “pos” debe retornar la posición del dato o -1 si el dato no se encuentra
en el vector}
//No entiendo nada :c
Procedure  BusquedaBin (var v: Vector; var j:integer; dimL,x: integer);
Procedure BusquedaBin (v: vector; ini,fin: indice; dato:integer; var pos: indice);
Var //No entiendo nada
    primero, ult, medio: integer;
Begin
    j :=0 ;
    primero:= 1;
    ult:= dimL;
    medio := (primero + ult ) div 2 ;
    While ( primero < = ult ) and ( x <> v [medio]) do 
    begin
        If ( x < v [ medio ] ) then 
            ult:= medio -1 ; 
        else
            primero:= medio+1 ; 
        medio := ( primero + ult ) div 2 ;
    end;
    If (primero < = ult) then
        j := medio
    else
        j := 0;
End;  

{8. Escribir un programa que:
a. Implemente un módulo que lea números enteros y los almacene en un árbol binario de búsqueda. La lectura finaliza con el valor 0.
b. Una vez generado el árbol, realice módulos independientes para:
i. Obtener el número más grande.
ii. Obtener el número más chico.
iii. Obtener la cantidad de elementos.
iv. Informar los números en orden creciente.
v. Informar los números pares en orden decreciente.
Nota: Tener en cuenta que cada número debe aparecer una única vez en el árbol. 
Como una unica vez? Arriba dice modulos independientes
}
Program ocho;
Type
    arbol = ^nodo;
    nodo = record
        dato: Integer;
        HI: arbol;
        HD: arbol;
    end;
//______________________________________________
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
//______________________________________________
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
//______________________________________________
Procedure Minimo ( a : arbol ; var min:integer);
begin 
    if ( a<> nil ) then begin
        if (a^.dato<min)then
        begin
            min:=a^.dato;
        end;
        Minimo (a^.HI,min);
        Minimo (a^.HD,min);
    end;
end;
//______________________________________________
Procedure cantidad_elementos ( a : arbol ; var cant:integer);
begin 
    if ( a<> nil ) then begin
        cant:=cant+1;
        cantidad_elementos (a^.HI,cant);
        cantidad_elementos (a^.HD,cant);
    end;
end;
//______________________________________________
Procedure enOrden ( a : arbol );
begin 
    if ( a<> nil ) then begin
        enOrden (a^.HD);
        write (a^.dato,'|');
        enOrden (a^.HI);
    end;
end;
//______________________________________________
Procedure enOrden2 ( a : arbol );
begin 
    if ( a<> nil ) then begin
        enOrden2 (a^.HI);
        if ((a^.dato mod 2) = 0) then 
            write (a^.dato,'|');
        enOrden2 (a^.HD);
    end;
end;
//______________________________________________
Var
    abb:arbol; x:integer;
    max:integer;
    min:Integer;
    cant_elementos:integer;
Begin
    cant_elementos:=0;
    min:=9999;
    Max:=-1;
    abb:=nil;
    read (x);
    while (x<>0)do
    begin
        crear(abb,x);
        read(x);
    end;
    Maximo(abb,Max); //i
    WriteLn('El numero maximo es : ', Max);
    Minimo(abb,min); //ii
    WriteLn('El numero minimo es : ', min);
    cantidad_elementos(abb,cant_elementos); //iii
    WriteLn('La cantidad de elementos es: ',cant_elementos);
    enOrden(abb); //iv
    WriteLn();
    enOrden2(abb); //v
End.

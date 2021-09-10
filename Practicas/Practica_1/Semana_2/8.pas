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
function Maximo (a:arbol): arbol;
begin
    if (a = nil) then
        Maximo := nil
    else
        if (a^.HD = nil) then
            Maximo := a
        else
            Maximo := Maximo(a^.HD); 
end;
//______________________________________________
function Minimo (a:arbol): arbol;
begin
	if (a = nil) then
		Minimo := nil
	else
		if (a^.HI = nil) then
			Minimo := a
		else
			Minimo := Minimo(a^.HI); 
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
        enOrden (a^.HI);
        write (a^.dato,'|');
        enOrden (a^.HD);
    end;
end;
//______________________________________________
Procedure enOrdenDecreciente ( a : arbol );
begin 
    if ( a<> nil ) then begin
        enOrdenDecreciente (a^.HD);
        if ((a^.dato mod 2) = 0) then 
            write (a^.dato,'|');
        enOrdenDecreciente (a^.HI);
    end;
end;
//______________________________________________
procedure CargarArbol(var abb:arbol);
var
    x:Integer;
begin
    x:=random(10);
    while (x<>0)do
    begin
        Write(x,',');
        crear(abb,x);
        x:=random(10);
        
    end;
end;
//______________________________________________
Var
    abb:arbol; 
    cant_elementos:integer;
Begin
    Randomize;
    cant_elementos:=0;
    abb:=nil;
    CargarArbol(abb);
    WriteLn();
    WriteLn('__________');
    if (Maximo(abb) = Nil) then 
        WriteLn('El numero maximo es : 0')//i 
    else
        WriteLn('El numero maximo es : ',Maximo(abb)^.dato);
    if (Minimo(abb) = Nil) then 
        WriteLn('El numero maximo es : 0')//i 
    else
        WriteLn('El numero maximo es : ',Minimo(abb)^.dato);//ii
    cantidad_elementos(abb,cant_elementos); //iii
    WriteLn('La cantidad de elementos es: ',cant_elementos);
    enOrden(abb); //iv
    WriteLn();
    enOrdenDecreciente(abb); //v
End.

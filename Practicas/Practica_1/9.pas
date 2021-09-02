{9. Implemente un programa que invoque a un módulo que genere un árbol binario de búsqueda con nombres de personas que se leen desde teclado. La lectura finaliza con el nombre ‘ZZZ’ que no debe procesarse. También debe invocar a otro módulo que reciba el árbol generado y un nombre, y retorne verdadero si existe dicho nombre en el árbol o falso en caso contrario.
}
Program ocho;
Type
    cadena20 = string[20];
    arbol = ^nodo;
    nodo = record
        dato: String;
        HI: arbol;
        HD: arbol;
    end;
//______________________________________________
Procedure crear (var A:arbol; num:String);
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
Var
    abb:arbol; x:String;
Begin
    abb:=nil;
    read (x);
    while (x <>'Z')do
    begin
        crear(abb,x);
        read(x);
    end;
End.
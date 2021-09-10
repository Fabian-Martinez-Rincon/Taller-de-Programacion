{9. Implemente un programa que invoque a un módulo que genere un árbol binario de búsqueda con nombres de personas que se leen desde teclado. La lectura finaliza con el nombre ‘ZZZ’ que no debe procesarse. También debe invocar a otro módulo que reciba el árbol generado y un nombre, y retorne verdadero si existe dicho nombre en el árbol o falso en caso contrario.
}
Program ocho;
Type
    arbol = ^nodo;
    nodo = record
        dato: String;
        HI: arbol;
        HD: arbol;
    end;
//______________________________________________
procedure randomString(tamanio:integer; var palabra:string);
var  str,Result: String;
begin
    str:='XYZ';
    Result:='';
    repeat
        Result:=Result+str[Random(Length(str))+1];
    until(Length(Result)=tamanio);
    palabra:=Result;
end;

//______________________________________________
Procedure crear (var A:arbol; nombre:String);
Begin
    if (A = nil) then
    begin
        new(A);
        A^.dato:= nombre; 
        A^.HI:= nil; 
        A^.HD:= nil;
    end
    else
        if (nombre < A^.dato) then 
            crear(A^.HI,nombre)
        else 
            crear(A^.HD,nombre)   
End;
//______________________________________________
procedure CargarArbol(var abb:arbol);
var
    nombre:String;
begin
    randomString(3,nombre);
    while (nombre<>'ZZZ')do
    begin
        crear(abb,nombre);
        randomString(3,nombre);
        WriteLn('Nombre: ',nombre);
    end;
end;
//______________________________________________
procedure buscar (a:arbol; x: string; var ok:boolean);
begin
    if (a=nil)then
        ok:=false
    else
        if (a^.dato=x)then
            ok:=true
        else 
        begin
            buscar(a^.HI,x,ok);
            if (not ok) then
                buscar(a^.HD,x,ok)
        end;
end;
//______________________________________________
Var
    abb:arbol; 
    nombre:string;
    ok:Boolean;
Begin
    ok:=False;
    Randomize;
    randomString(3,nombre);
    WriteLn(nombre);
    abb:=nil;
    CargarArbol(abb);
    Buscar(abb,nombre,ok);
    if (ok) then begin
      writeln('Se encontro'); 
    end
    else
        WriteLn('No se encontro');
    WriteLn(ok);
    
End.
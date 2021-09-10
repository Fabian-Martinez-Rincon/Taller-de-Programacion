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
Procedure Buscar ( a : arbol;nombre:string;var Encontro:Boolean );
begin 
    if ( a<> nil ) and (not Encontro)then begin
        if (a^.dato = nombre) then
          Encontro:=true;
        Buscar (a^.HI,nombre,Encontro);
        Buscar (a^.HD,nombre,Encontro);
    end;
end;
//______________________________________________
Var
    abb:arbol; 
    nombre:string;
    Encontro:Boolean;
Begin
    Randomize;
    Encontro:=false;
    randomString(3,nombre);
    WriteLn(nombre);
    abb:=nil;
    CargarArbol(abb);
    Buscar(abb,nombre,Encontro);
    WriteLn(Encontro);
    
End.
program otro;
type
    codigo = record
        id:Integer;
        valor:Integer;
    end;

    arbol = ^nodo;
    nodo = record
        HI: arbol;
        HD: arbol;
        dato: codigo;
    end;
procedure crearArbol(var abb:arbol);
begin
  
end;

procedure cargarArbol();
var 
    cod:codigo;
begin
    for i:=1 to 10 do
    begin
      
    end;
end;

var
    abb: arbol;
begin
    cargarArbol(abb);
    imprimir();
end.
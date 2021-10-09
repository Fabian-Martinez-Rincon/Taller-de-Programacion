type
    lista = ^nodo;
    nodo = record
        num:integer;
        sig:lista;
    end;
function crear:lista;
begin
    crear:=Nil;
end;
var
    l:lista;
begin
    l:=crear;
end.
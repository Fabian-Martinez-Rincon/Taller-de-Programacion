program uno;
const
    cant_Estantes = 5;
type
    lista = ^nodo;
    nodo = record
        dato : string;
        sig : lista;
    end;
    estantes = array [1..cant_Estantes] of lista;
//__________________________________________________________
procedure Cargar_estante();
//__________________________________________________________
procedure Cargar_estantes(var v:estantes);
var
    i:Integer;
begin
    for i:=1 to cant_Estantes do
    begin
        Cargar_estante(v[i]);
    end;
end;
//__________________________________________________________
var
    v:estantes;
begin
    randomize;
    Cargar_estantes(v);
end.
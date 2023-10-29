program pruebas;
const 
  dimF = 10;
type
  vector = array [1..dimF] of integer;
procedure inicializarArreglo(var v:vector);
var i:Integer;
begin 
  for i:=0 to dimF do
  begin
    v[i]:=0;
  end;
end;
procedure crearArreglo(var v:vector);
var i:Integer;
begin 
  for i:=0 to dimF do
  begin
    writeln(v[i]);
  end;
end;
var
  v: vector;
begin
  inicializarArreglo(v);
  crearArreglo(v);
  Write('Hola mundo');
end.
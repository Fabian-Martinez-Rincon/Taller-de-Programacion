program Ordenaciones;
type
  arreglo = array [1..10] of integer;

procedure cargarArreglo(var a:arreglo);
var
  i:integer;
begin
  for i:=1 to 10 do
  begin
    a[i]:=i;
  end;
end;
var
  a:arreglo;
begin
  cargarArreglo(a);
  
end.
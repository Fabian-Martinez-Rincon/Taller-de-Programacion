program cosa;
type
    vector = array [1..10] of integer;
function suma(v:vector; dimL:integer):integer;
Begin
    if (dimL = 0) then
     suma := 0
  else
      suma := suma(v,dimL-1) + v[dimL]
End;
procedure CargarVector(var v:vector; var dimL:integer);
var
    i:integer;
begin
    for i:=1 to 10 do
    begin
        v[i]:=10;
    end;
    dimL:=10;
end;
var
    v:vector;
    dimL:integer;
begin
    dimL:=0;
    CargarVector(v,dimL);
    WriteLn(suma(v,dimL));
  
end.
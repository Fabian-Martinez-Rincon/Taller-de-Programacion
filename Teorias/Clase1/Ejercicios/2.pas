program dos;
const 
    dimF = 20;
type
    vector = array [1..dimF] of integer;
procedure dos(var v:vector);
var
    i:integer;
begin
    for i:=1 to dimF do
    begin
       v[i]:=i;                    
    end;
end;
procedure imprimirVector(v:vector);
var
    i:integer;
begin
    for i:=1 to dimF do
    begin
       WriteLn(v[i]);                    
    end;
end;
var
    v:vector;
begin
    dos(v);
    imprimirVector(v);
end.
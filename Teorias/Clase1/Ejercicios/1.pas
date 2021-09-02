program uno;
const 
    dimF = 20;
type
    vector = array [1..dimF] of integer;
procedure uno(var v:vector;var dimL:Integer);
var
    nro:integer;
begin
    while ((dimL<dimF) and (nro <> 0)) do
    begin
        dimL:=dimL+1;
        ReadLn(nro);
        v[dimL]:=nro;
        
        Writeln('cantidad: ',dimL);
        Writeln('vector: ',v[dimL]);
    end;
end;
var
    v:vector;
    dimL:integer;
begin
    dimL:=0;
    uno(v,dimL);
    WriteLn('cantidad todal: ',dimL);
end.
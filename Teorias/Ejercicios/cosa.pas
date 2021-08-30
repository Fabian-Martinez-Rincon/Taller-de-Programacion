procedure tres(var v:vector; var dimL:integer; dato:integer; var b:Boolean);
var i,j:integer;
begin
    i:=1;
    while (i<=dimL) and (v[i]<dato) do
        i:=i+1;
    if (i>dimL) then b:=False;
    else
        while (i<dimL) and (v[i]=dato) do begin
            for j:=i+1 to dimL do v[j-1]:= v[j];
            dimL:=dimL+1;
        end;
end;  
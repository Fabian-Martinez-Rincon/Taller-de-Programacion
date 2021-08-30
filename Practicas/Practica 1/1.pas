program uno;
const
    dimF = 300;
type
    rango = 1..dimF;
    oficina = record
        codigo:integer;
        dni:LongInt;
        valor:integer;
    end;
    vector = array [rango] of oficina;
//_______________________________________________________________
procedure LeerOficina(var off:oficina);
begin
    WriteLn('Codigo: '); ReadLn(off.codigo);
    if (off.codigo <> -1) then
    begin
        WriteLn('Dni: '); ReadLn(off.dni);
        WriteLn('Valor: '); ReadLn(off.valor);
    end;
end;
//_______________________________________________________________
procedure CargarOficinas(var v:vector;var dimL:integer);
var
    off:oficina;
begin
    LeerOficina(off);
    while (off.codigo <> -1) and (dimL<dimF) do
    begin
        dimL:=dimL+1;
        v[dimL]:=off;
        LeerOficina(off);
    end;
end;
//_______________________________________________________________
Procedure Ordenar ( var v: vector; dimL: Integer );
var 
    i, j: Integer; 
    actual:oficina;
begin
    actual.codigo:=0;
    actual.dni:=0;
    actual.valor:=0;
    for i:=2 to dimL do 
    begin 
        actual:= v[i];
        j:= i-1; 
        while (j > 0) and (v[j].codigo > actual.codigo) do
        begin
            v[j+1]:= v[j];
            j:=j-1;
        end;  
        v[j+1]:= actual; 
    end;
end;

//_______________________________________________________________
procedure ImprimirVector(v:vector;dimL:integer);
var
    i:integer;
begin
    for i:=1 to dimL do
    begin
        WriteLn('Codigo: ',v[i].codigo);
        WriteLn('Dni: ',v[i].dni);
        WriteLn('Valor: ',v[i].valor);
    end;
end;
//_______________________________________________________________
var
    v:vector;
    dimL:integer;
begin
    dimL:=0;
    CargarOficinas(v,dimL);//A
    ImprimirVector(v,dimL);
    WriteLn('_____________________________');
    Ordenar(v,dimL);//B
    ImprimirVector(v,dimL);
end.
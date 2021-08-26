program tres;
const 
    dimF = 10;
type
    indice = 1..dimF;
    vector = array [1..dimF] of integer;

procedure dos(var v:vector;var dimL:Integer);
var
    actual:integer;
begin
    actual:=0;
    while (actual <> 15) and (dimL < dimF) do
    begin
        dimL:=dimL+1;
        actual:=Random(16); //Ya que toma el nro 0, tenemos que agregar uno extra
        v[dimL]:=actual;
        WriteLn(dimL,': ',actual);
    end;
end;


//__________________________________________________________________________________
procedure imprimirVector(v:vector;dimL:integer);
var
    i:integer;
begin
    for i:=1 to dimL do
    begin
        
       WriteLn(i,': ',v[i]);                    
    end;
end;
//__________________________________________________________________________________
Procedure Ordenar ( var v: vector; dimLog: Integer );

var i, j, p: Integer; item : Integer;	
		
begin
    for i:=1 to dimLog-1 do 
    begin {busca el mínimo y guarda en p la posición}
        p := i;
        for j := i+1 to dimLog do
            if v[ j ] < v[ p ] then p:=j;
        {intercambia v[i] y v[p]}
        item := v[ p ];   
        v[ p ] := v[ i ];   
        v[ i ] := item;
    end;
end;

//__________________________________________________________________________________
var
    v:vector;
    nro:integer;
    dimL:Integer;
begin
    Randomize;
    dimL:=0;
    nro:=5;
    writeln('Entrada: ');
    dos(v,dimL);
    writeln('Salida: ');
    Ordenar(v,dimL);
    imprimirVector(v,dimL);
end.
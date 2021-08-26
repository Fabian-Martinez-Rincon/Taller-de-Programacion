# Taller-de-Programacion
### Ordenar Vector (De menor a mayor).
```Pas
Procedure Ordenar ( var v: vector; dimL: Integer );
var 
    i, j, p: Integer; 
    item : Integer;			
begin
    for i:=1 to dimL-1 do 
    begin {busca el mínimo y guarda en p la posición}
        p := i;
        for j := i+1 to dimL do
            if v[ j ] < v[ p ] then p:=j;
        {intercambia v[i] y v[p]}
        item := v[ p ];   
        v[ p ] := v[ i ];   
        v[ i ] := item;
    end;
end;
```

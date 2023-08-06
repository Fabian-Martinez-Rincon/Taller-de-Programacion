
<table>
<tr><td>Selección</td><td>Insesión</td></tr>
<tr><td>

```pascal
Procedure Seleccion(var v:vector;dimL:Integer);
var 
  i, j, p: Integer;
  item:integer;
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
</td><td>

```pascal
Procedure Insercion(var v:vector;dimL:Integer);
var 
  i, j: Integer; 
  actual:integer;
begin
  actual:=0;
  for i:=2 to dimL do 
  begin 
    actual:= v[i];
    j:= i-1; 
    while (j > 0) and (v[j] > actual) do
    begin
      v[j+1]:= v[j];
      j:=j-1;
    end;  
    v[j+1]:= actual; 
  end;
end;
```
</td></tr>

</table>

<table>
<tr><td>Solución Alternativa</td><td>Solución Recursiva</td></tr><tr><td>

```pascal
Procedure imprimir (L:lista);
Begin
  while (L <> nil) do
  begin
    write (L^.dato);
    L:= L^.sig;
  end;
End;
```
</td><td>

```pascal
Procedure imprimir (L:lista);
Begin
  IF (L <> nil) then
  begin
    write (L^.dato);
    L:= L^.sig;
    imprimir (L^.sig);
  end;
End;
```
</td></tr>
</table>

<table>
<tr>
<td> En Orden </td> <td> Pos Orden </td><td> Pre Orden </td>
</tr>
<tr>
<td>
 
```pascal
//Input 1,22,3,44,5,6,7,2,0
Procedure enOrden(a:arbol);
begin
    if ( a <> nil ) then begin
        enOrden (a^.HI);
        write (a^.dato,'|');
        enOrden (a^.HD);
    end;
end;//1,2,3,5,6,7,22,44
```
</td>
<td>
 

```pascal
//Input 1,22,3,4,55,67,7,0
Procedure preOrden(a:arbol);
begin
    if ( a <> nil ) then begin
        write (a^.dato,'|');
        preOrden(a^.HI);
        preOrden(a^.HD);
    end;
end;
//Output 1,22,3,4,7,55,67
```
</td>
 <td>
  
```pascal
//Input 1,22,2,44,6,77,5,4,3,0
Procedure posOrden(a:arbol);
begin
    if ( a <> nil ) then begin
        preOrden (a^.HI);
        preOrden (a^.HD);
        write (a^.dato);
    end;
end;
//Output 22,2,6,5,4,3,44,77,1
```
</td>
</tr>
 
</table>
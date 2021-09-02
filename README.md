<h1 align="center"> 💻Taller De Programacion </h1>
<div align="center">
<img src="https://media.giphy.com/media/ukMiDlCmdv2og/giphy.gif?cid=ecf05e4724nglpc52qob2wzy61tla3htfbbmbdoos07dfsni&rid=giphy.gif&ct=g"/>
 </div>
<br>

- [Clase 1 (Ejercicios)](/Teorias/Teoria2.md)
- [Clase 2 (Ejercicios)](/Teorias/Teoria1.md)
- [Practica 1](/Practicas/Practica_1/Practica_1.md)

### Ordenación por Selección (De menor a mayor).
```Pas
Procedure Ordenar ( var v: vector; dimL: Integer );
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

### Ordenación por Inserción (De menor a mayor).
```Pas
Procedure Ordenar ( var v: vector; dimL: Integer );
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

### Imprimir (Recursiva).
```Pas
Procedure imprimir (L:lista);
Begin
    if (L <> nil) then
    begin
        write (L^.dato);
        L:= L^.sig;
        imprimir (L);
    end;
End;
```
### Crear Arbol.
```Pas
Procedure crear (var A:árbol; num:integer);
Begin
    if (A = nil) then
    begin
        new(A);
        A^.dato:= num; 
        A^.HI:= nil; 
        A^.HD:= nil;
    end
    else
        if (num < A^.dato) then 
            crear(A^.HI,num)
        else 
            crear(A^.HD,num)   
End;
```

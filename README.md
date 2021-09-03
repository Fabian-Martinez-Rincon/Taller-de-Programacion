<h1 align="center"> 💻Taller De Programacion </h1>
<div align="center">
<img src="https://media.giphy.com/media/ukMiDlCmdv2og/giphy.gif?cid=ecf05e4724nglpc52qob2wzy61tla3htfbbmbdoos07dfsni&rid=giphy.gif&ct=g"/>
 </div>
<br>

[Website](https://fabian-martinez1.github.io/Taller-de-Programacion/)

- [Clase 1 (Ejercicios)](https://github.com/Fabian-Martinez1/Taller-de-Programacion/tree/main/Teorias/Clase1)
- [Clase 2 (Ejercicios)](https://github.com/Fabian-Martinez1/Taller-de-Programacion/tree/main/Teorias/Clase2)
- [Practica 1](https://github.com/Fabian-Martinez1/Taller-de-Programacion/tree/main/Practicas/Practica_1)

### Ordenación por Selección (De menor a mayor).

```Pascal
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
### 🌳Crear Arbol.
```Pas
Procedure crear (var A:arbol; num:integer);
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
### 🌳Cargar Arbol.
```Pas
Program arboles;
Type
    arbol = ^nodo;
    nodo = record
        dato: integer;
        HI: arbol;
        HD: arbol;
    end;
Var
    abb:arbol; x:integer;
Begin
    abb:=nil;
    read (x);
    while (x<>0)do
    begin
        crear(abb,x);
        read(x);
    end;
End.
```
### 🌳Imprimir Arbol.
```Pas
Procedure enOrden ( a : arbol );
begin //Input 1,22,3,44,5,6,7,2,0
    if ( a<> nil ) then begin
        enOrden (a^.HI);
        write (a^.dato,'|');
        enOrden (a^.HD);
    end;
end;//1,2,3,5,6,7,22,44
```

```Pas
Procedure preOrden ( a : arbol );
begin //Input 1,22,3,4,55,67,7,0
    if ( a<> nil ) then begin
        write (a^.dato,'|');   
        preOrden (a^.HI);
        preOrden (a^.HD);
    end;
end;//Output 1,22,3,4,7,55,67
```

```Pas
Procedure posOrden ( a : arbol );
begin //Input 1,22,2,44,6,77,5,4,3,0
    if ( a<> nil ) then begin
        preOrden (a^.HI);
        preOrden (a^.HD);
        write (a^.dato);
    end;
end;//Output 22,2,6,5,4,3,44,77,1
```
### 🌳Buscar Elemento (Arbol).
```Pas
Function Buscar (a:arbol; x:elemento): arbol; 
begin
    if (a=nil) then 
        Buscar:=nil
    else if (x = a^.dato) then 
        Buscar:=a
    else 
        if (x < a^.dato) then 
            Buscar:=Buscar(a^.hi ,x)
        else  
            Buscar:=Buscar(a^.hd ,x)
end;
```

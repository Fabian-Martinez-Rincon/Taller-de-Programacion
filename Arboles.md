<h1 align="center">🌳Arboles </h1>
<div align="center">
<img src="https://media.giphy.com/media/Yg12tqyJwylsk/giphy.gif?cid=ecf05e47b74z94z7ejscgwplg8wku2ufkz3w9zjmixtb746l&rid=giphy.gif&ct=g"/>
 </div>
<br>


## 🌳Crear Arbol.
```pascal
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

## 🌳Cargar Arbol.
```pascal
Program arboles;
Type
    arbol = ^nodo;
    nodo = record
        dato: tipo;
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

## 🌳Imprimir Arbol.
```pascal
Procedure enOrden ( a : arbol );
begin //Input 1,22,3,44,5,6,7,2,0
    if ( a<> nil ) then begin
        enOrden (a^.HI);
        write (a^.dato,'|');
        enOrden (a^.HD);
    end;
end;//1,2,3,5,6,7,22,44
```

```pascal
Procedure preOrden ( a : arbol );
begin //Input 1,22,3,4,55,67,7,0
    if ( a<> nil ) then begin
        write (a^.dato,'|');   
        preOrden (a^.HI);
        preOrden (a^.HD);
    end;
end;//Output 1,22,3,4,7,55,67
```

```pascal
Procedure posOrden ( a : arbol );
begin //Input 1,22,2,44,6,77,5,4,3,0
    if ( a<> nil ) then begin
        preOrden (a^.HI);
        preOrden (a^.HD);
        write (a^.dato);
    end;
end;//Output 22,2,6,5,4,3,44,77,1
```

## 🌳Buscar Elemento (Arbol).

```pascal
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

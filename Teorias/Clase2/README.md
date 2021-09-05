### Problema 1.

Realice un programa que lea 7 valores enteros. Genere una lista donde los elementos se inserten adelante. Al finalizar implemente un modulo recursivo que imprima los valores de la lista.

```pascal
program uno;
type
    lista = ^nodo;
    nodo = record
        num:integer;
        sig:lista;
    end;
//__________________________________________________________________
Procedure AgregarAdelante (var L:lista; per:Integer);
Var 
    nue:Lista;
Begin  
    New(nue);  
    nue^.num:=per;  
    nue^.sig:=L;  
    L:=nue;
End;
//__________________________________________________________________
procedure CargarLista(var l:lista);
var
    contador:integer;
    num:Integer;
begin
    contador:=0;
    num:=0;
    while (contador < 3) do //Es 7, si no lo cambio, me colgue, perdon :C
    begin
        ReadLn(num);
        AgregarAdelante(l,num);
        contador:=contador+1;
    end;
end;
//__________________________________________________________________
Procedure imprimir (L:lista);
Begin
    if (L <> nil) then
    begin
        writeln ('Num: ',L^.num);
        L:= L^.sig;
        imprimir (L);
    end;
End;

//__________________________________________________________________
var
    l:lista;
begin
    l:=nil;
    CargarLista(l);
    WriteLn('________________');
    imprimir(l);
end.
```

### Problema 2.

Realice un programa que lea números hasta leer el valor 0 e imprima sus dígitos en el orden en que aparecen en el número. Ejemplo si se lee el valor 256, se debe imprimir 2  5  6.

```pascal
program dos;
type
    lista = ^nodo;
    lista2 = ^nodo;
    nodo = record
        num:integer;
        sig:lista;
    end;
    
    
//_________________________________________
procedure AgregarAlFinal2(var pri,ult:lista;per:Integer); 
var  
    nue : lista;
begin 
    new (nue);
    nue^.num:= per;
    nue^.sig := NIL;
    if (pri <> Nil) then 
    begin
        ult^.sig := nue;
    end
    else 
        pri := nue;
    ult := nue;
end;
//_________________________________________
Procedure AgregarAdelante (var L:lista2; per:Integer);
Var 
    nue:Lista2;
Begin  
    New(nue);  
    nue^.num:=per;  
    nue^.sig:=L;  
    L:=nue;
End;

//_________________________________________
procedure CargarLista(var l,ult:lista);
var
    n:Integer;
begin
    ReadLn(n);
    while n <> 0 do
    begin
        AgregarAlFinal2(l,ult,n);
        ReadLn(n);
    end;
end;
//_________________________________________
procedure imprimir2(L:lista2);
begin
    Write('|');
    while l <> nil do
    begin
        write (L^.num,'|');
        
        L:= L^.sig;
    end;
end;
//_________________________________________
Procedure imprimir (L:lista);
var
    dig:integer;
    l2:lista2;
Begin
    l2:=Nil;
    if (L <> nil) then
    begin
        writeln ('Num: ',L^.num);
        while l^.num <> 0 do //Como imprimia los valores al revez, se me ocurrio crear una lista con los digitos
        begin //De forma que se imprima como el original (Espero que se pueda hacer de otra forma)
            dig:=l^.num mod 10;
            AgregarAdelante(l2,dig);
            l^.num := l^.num div 10;
        end;
        imprimir2(l2);
        WriteLn();
        WriteLn('___________');
        L:= L^.sig;
        imprimir (L);
    end;
End;
//_________________________________________
var
    l,ult:lista;
begin
    l:=Nil;
    ult:=Nil;
    CargarLista(l,ult);
    WriteLn('__________');
    imprimir(l);
end.
```

### Problema 1 Parte 2.

Modificar algoritmo de impression preOrden para que sume todos los nodos del arbol.

```pascal
Program arboles;
Type
    arbol = ^nodo;
    nodo = record
        dato: Integer;
        HI: arbol;
        HD: arbol;
    end;
//______________________________________
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
//______________________________________
Procedure preOrden ( a : arbol;var total:integer );
begin //Input 1,22,3,4,55,67,7,0
    if ( a<> nil ) then begin
        write (a^.dato,'|');   
        total:=total+a^.dato;
        
        preOrden (a^.HI,total);
        preOrden (a^.HD,total);
    end;
end;//Output 1,22,3,4,7,55,67

//______________________________________

Var
    abb:arbol; x:integer;
    total:integer;
Begin
    total:=0;
    abb:=nil;
    read (x);
    while (x<>0)do
    begin
        crear(abb,x);
        read(x);
    end;
    preOrden(abb,total);
    WriteLn();
    WriteLn('La suma de todos sus elementos es: ',total);
End.
```

### Problema 2 Parte 2.

Modifique 1. donde en vez de usar un procedimiento use una función.

### Problema Final.

A) Realizar un programa que lea valores enteros y genere un ABB hasta leer el valor 58.

B) Realice un módulo que imprima el árbol generado en 1.

C) Realice un modulo que reciba el arbol generado en 1 y multiplique por 2 cada elemento.

D) Realice un modulo que devuelva el elemento máximo del arbol.




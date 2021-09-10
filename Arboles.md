<h1 align="center">🌳Arboles </h1>
<div align="center">
<img src="https://user-images.githubusercontent.com/55964635/132782494-b9485b7f-9d40-430a-901e-9c44be168bf9.gif"/>
 </div>
<br>


Indice
=================

   * [Crear](#Crear)
   * [Cargar](#Cargar)
   * [Imprimir](#Imprimir)
   * [Maximo](#Maximo)
   * [Minimo](#Minimo)
   * [Cantidad de Elementos](#Cantidad_Elementos)
   * [Entre dos Numeros](#Entre_Numeros)
   * [Borrar](#Borrar)
   * [Encontrar Ordenado](#Encontrar_Ordenado)



Crear
===========
```pascal
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

Cargar
============
```pascal
procedure CargarArbol(var abb:arbol);
var
    x:Integer;
begin
    x:=random(10);
    while (x<>0)do
    begin
        crear(abb,x);
        x:=random(10);
    end;
end;
```

Imprimir
========

<table>
<tr>
<td> En Orden </td> <td> Pos Orden </td><td> Pre Orden </td>
</tr>
<tr>
<td>
 
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
</td>
<td>
 

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
</td>
 <td>
  
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
</td>
</tr>
 
</table>


Maximo
======
```Pas
function Maximo ( a : arbol ):Integer;
begin 
    if ( a^.HD <> nil ) then begin
        Maximo:=Maximo(a^.HD);
    end
    else
        Maximo:=a^.dato;
end;
```

Minimo
======
```Pas
function Minimo ( a : arbol ):Integer;
begin 
    if ( a^.HI <> nil ) then begin
        Minimo:=Minimo(a^.HI);
    end
    else
        Minimo:=a^.dato;
end;
```

Cantidad_Elementos
==================
```Pas
Procedure cantidad_elementos ( a : arbol ; var cant:integer);
begin 
    if ( a<> nil ) then begin
        cant:=cant+1;
        cantidad_elementos (a^.HI,cant);
        cantidad_elementos (a^.HD,cant);
    end;
end;
```
Entre_Numeros
=============
```Pas
procedure Entre_Legajos(a:arbol);
begin
    if(a<>nil)then
    begin
        if(a^.dato.legajo > 1258) then
            if(a^.dato.legajo < 7692)then
            begin
                WriteLn('Nombre: ',a^.dato.nombre);
                WriteLn('Apellido: ',a^.dato.apellido);
                WriteLn('Legajo: ',a^.dato.legajo); //No lo pedia pero queria chequearlo
                Entre_Legajos(a^.HI);
                Entre_Legajos(a^.HD);
            end
            else
                if (a^.dato.legajo < 1258) then begin
                    Entre_Legajos(a^.HD);
                end
                else
                    if(a^.dato.legajo > 7692) then
                        Entre_Legajos(a^.HD);
    end;             
end;
```
Borrar
======
```Pas
procedure Borrar(x: elem; var a: arbol; var ok: boolean);
var
    aux: arbol;
begin
    if (a = nil) then
        ok := false
    else begin
        if (x < a^.dato) then	// BUSCO EN EL SUBARBOL IZQUIERDO
            Borrar (x, a^.HI, ok)
        else
            If (x > a^.dato) then	// BUSCO EN EL SUBARBOL DERECHO
                Borrar (x, a^.HD, ok)
            else begin
                ok := true;
                if (a^.HI = nil) then begin		// SOLO HIJO A DERECHA
                    aux := a;
                    a := a^.HD;
                    dispose(aux)
                end
                else
                    if (a^.HD = nil) then begin		// SOLO HIJO A IZQUIERDA
                        aux := a;
                        a := a^.HI;
                        dispose(aux)
                    end
                    else begin		// DOS HIJOS. REEMPLAZO CON EL MENOR DE LA DERECHA
                        aux := Minimo(a^.HD);
                        a^.dato = aux^.dato;
                        Borrar(a^.dato, a^.HD, ok);
                    end
    end
end;
```
Encontrar_Ordenado
==================
```Pas
function Buscar (a:arbol; x:integer): arbol;
begin
	if (a = nil) then 
		Buscar := nil
	else
		if (x = a^.dato) then
			Buscar := a
		else
			if (x < a^.dato) then
				Buscar := Buscar(a^.HI, x)
			else
				Buscar := Buscar(a^.HD, x)
end;
```
Encontrar_SinOrden
==================
```Pas
procedure buscar (a:arbol; x: integer; var ok:boolean);
begin
    if (a=nil)then
        ok:=false
    else
        if (a^.dato=x)then
            ok:=true
        else begin
            buscar(a^.HI,x,ok);
            if (not ok) then
                buscar(a^.HD,x,ok)
        end;
end;
```
Encontrar_SinOrden2
===================
```Pas
function Buscar (a:arbol; x:integer): arbol;
begin
    if (a = nil) then
        Buscar := nil
    else
        if (x = a^.dato) then
            Buscar := a
        else
            Buscar := Buscar(a^.HI, x) or Buscar(a^.HD, x);
end;
```

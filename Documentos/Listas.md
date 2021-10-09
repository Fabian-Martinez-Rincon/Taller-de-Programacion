<h1 align="center">🧾Listas </h1>

Indice
=================

   * [Recorrer una Lista](#recorrer_una_lista)
   * [Buscar un Elemento en una Lista](#buscar_un_elemento_en_una_lista)
   * [Crear una Lista Vacia](#crear_una_lista_vacia)
   * [Agregar un Elemento al Principio de la Lista](#agregar_un_elemento_al_principio_de_la_lista)
   * [Agregar un Elemento al Final de la Lista](#agregar_un_elemento_al_final_de_la_lista)
   * [Eliminar un Elemento de la Lista](#eliminar_un_elemento_de_la_lista)
   * [Insertar un Nuevo Elemento en una Lista Ordenada](#insertar_un_nuevo_elemento_en_una_lista_ordenada)
   * [Corte de control](#Corte_de_Control)
   * [Imprimir (Recursiva)](#Imprimir_Recursiva)
   * [Minimo (Recursiva)](#Minimo_Recursiva)
   * [Buscar (Recursiva)](#Busqueda_Recursiva)
   * [Merge entre dos Listas](#Merge_Entre_dos_listas)
   * [Merge entre más de dos Listas](#Merge_entre_mas_de_dos_Listas)
   * [Merge Acumulador](#Merge_Acumulador)

Recorrer_Una_Lista
==================

```Pas
procedure Recorrido(l:lista);
begin
    while (l <> nil) do
    begin
        writeln(l^.dato);
        l:=l^.sig;
    end;
end;
```
Buscar_un_Elemento_en_una_Lista
===============================

<table>
<tr>
<td> Desordenada </td> <td> Ordenada </td>
</tr>
<tr>
<td>

 ```Pas
function buscar (l:lista; x:integer):boolean;
var 
    encontre: boolean;
begin
    encontre:=false;
    while (l <> nil) and (not encontre) do
    begin
        if (x = l^.dato) then
            encontre:=true;
        else
            encontre:=false;
    end;
    buscar:=encontre;
end;
```
</td>
<td>

```Pas
function buscar (l:lista; x:integer):boolean;
var //Ordenada De menor a mayor
    encontre: boolean;
begin
    encontre:=false;
    while (l <> nil) and (not encontre) and (x > l^.dato) do
    begin
        if (x = l^.dato) then
            encontre:=true;
        else
            encontre:=false;
    end;
    buscar:=encontre;
end;
```
 
</td>
</tr>
 </table>

Crear_una_Lista_Vacia
=====================
```Pas
begin
    l:=nil;
end.
```

Agregar_un_Elemento_al_Principio_de_la_Lista
============================================
```Pas
Procedure AgregarAdelante (var L:lista; x:integer);
Var 
    nue:Lista;
Begin  
    New(nue);  
    nue^.datos:=x;  
    nue^.sig:=L;  
    L:=nue;
End;
```
Agregar_un_Elemento_al_Final_de_la_Lista
========================================
<table>
<tr>
<td> Ordenando la lista </td> <td> Con un puntero al ultimo </td>
</tr>
<tr>
<td>

 ```Pas
procedure AgregarAlFinal1(var pri:lista;x:integer); 
var  
    act, nue : lista;
begin 
    new (nue);
    nue^.dato:= x;
    nue^.sig := NIL;
    if pri <> Nil then 
    begin
        act := pri ;
        while  (act^.sig <> NIL ) do 
            act := act^.sig ;
        act^.sig := nue ;
    end
    else
        pri:= nue;
end;
```
</td>
<td>

```Pas
procedure AgregarAlFinal2(var pri,ult:lista;x:integer); 
var  
    nue : lista;
begin 
    new (nue);
    nue^.dato:= x;
    nue^.sig := NIL;
    if pri <> Nil then 
        ult^.sig := nue
    else 
        pri := nue;
    ult := nue;
end;
```
 
</td>
</tr>
 </table>
 
Eliminar_un_Elemento_de_la_Lista
================================


```Pas
Procedure BorrarElemento (var pri:lista; nom:cadena50; var exito: boolean);
var ant, act: lista;
begin 
    exito := false;
    act := pri;
    while  (act <> NIL)  and (act^.dato <> nom) do 
    begin
        ant := act;
        act := act^.sig
    end;   
    if (act <> NIL) then 
    begin
        exito := true; 
        if (act = pri) then  
            pri := act^.sig
        else  
            ant^.sig:= act^.sig;
        dispose (act);
    end;
end;
```

Insertar_un_Nuevo_Elemento_en_una_Lista_Ordenada
================================================
```Pas
Procedure InsertarElemento ( var pri: lista; x: Integer);
var 
    ant, nue, act: lista;
begin
    new (nue);
    nue^.dato := x;
    act := pri;
    ant := pri;
    while (act<>NIL) and (act^.dato < x) do 
    begin
        ant := act;
        act := act^.sig ;
    end;
    if (ant = act)  then 
        pri := nue   
    else  
        ant^.sig  := nue; 
    nue^.sig := act ;
end;
```

Corte_de_control
================
```Pas
Procedure CorteDeControl(var l:lista;);
var
    cantidad:integer;
    actual:integer;
begin
    while (l <> nil) do
    begin
        actual:=l^.dato;
        cantidad:=0;
        while (l <> nil) and (actual = l^.dato) do
        begin
            cantidad := cantidad + 1;
            l:=l^.sig;
        end;
        WriteLn('La cantidad de ',l^.dato, ' es ', cantidad);
    end;
end;
```
Imprimir_Recursiva
==================
```pascal
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
Minimo_Recursiva
================

<table>
<tr>
<td> Proceso </td> <td> Funcion </td>
</tr>
<tr>
<td>

```Pas
procedure MinimoValor(l:lista;var min:integer);
Begin
    if (L <> nil) then
    begin
        if (L^.dato < min) then
        begin
            min:=L^.dato;
        end;
        L:= L^.sig;
        MinimoValor(l,min);
    end;
End;
```
</td>
<td>

```Pas
function MinimoValor(l:lista;min:integer):Integer;
Begin
    if (l = nil) then begin
        MinimoValor:=min;
    end
    else begin
        if (l^.dato < min) then
            min:=l^.dato;
        l:=l^.sig;
        MinimoValor:=MinimoValor(l,min);
    end;
End;
 ```
                          
</td>
</tr>
 </table>

Busqueda_Recursiva
==================

```Pas
function buscar(l:lista; x:integer):boolean;
begin
  if(l=nil)then
    buscar:=false
  else
    if(l^.dato=x)then
      buscar:=true
    else
      buscar:=buscar(l^.sig,x);
end;
```
Merge_Entre_Dos_Listas
======================
```pascal
Procedure merge (E1,E2:lista; var l:lista);
Var 
    min: string;
Begin
    l:= nil;
    minimo (E1,E2,min);
    while (min <> 'ZZZ') do
    begin
        AgregarAlFinal1 (l,min);
        minimo (E1,E2,min);
    end;
End;
```
```pascal
Procedure minimo(var e1,e2:lista; var min:string);
Begin
    min := 'ZZZ';
    if (e1 <> nil) and (e2 <> nil)then
        if (e1^.dato <= e2 ^.dato ) then 
        begin
            min:= e1^.dato;
            e1:= e1 ^.sig; 
        end
        else begin
            min:= e2 ^.dato;
            e2:= e2 ^.sig;
        end 
    else 
        if (e1 <> nil) and (e2 = nil) then begin
            min:= e1^.dato;
            e1:= e1 ^.sig;
        end 
        else 
            if (e1 = nil) and (e2 <> nil) then begin
                min:= e2 ^.dato;
                e2:= e2 ^.sig; 
            end;
end;
```
Merge_entre_mas_de_dos_Listas
=============================
```pascal
procedure merge(v : vector; var  l : lista);
var
   min : string;
   ult : lista;
begin
	minimo(v,min);
	while (min <> 'ZZZ') do 
		begin
			AgregarAlFinal2(l,ult,min);
			minimo(v,min);
		end;
end;
```

```pascal
procedure minimo(var v : vector; var min : string);
var
   pos, i : integer;
begin
	min := 'ZZZ';
	pos := -1;
	for i:= 1 to dimF do					
		if (v[i] <> nil) and (v[i]^.dato <= min) then begin
			min := v[i]^.dato; 
			pos := i;	
		end;
	if (pos <> -1) then  
		v[pos] := v[pos]^.sig;
end;
```
Merge_Acumulador
================
```pascal
procedure merge(var l :lista_nueva;v:vector) ;
var
	ult : lista_nueva;
	min, actual : venta_nueva;
begin
	minimo(v,min);	
	while (min.codigo <> 9999) do	
	begin
		actual.cant := 0;	
		actual.codigo := min.codigo;	
		while (min.codigo <> 9999) and (min.codigo = actual.codigo) do begin
			actual.cant:= actual.cant + min.cant;	
			minimo(v,min);	
		end;
		AgregarAlFinal2(l,ult,actual);	
	end;
end;
```

```pascal
procedure minimo(var v:vector; var x:venta_nueva);
var 
  i, pos : integer;
begin
	x.codigo := 9999;
	pos := -1;
	for i := 1 to cantidad do 
		if (v[i] <> NIL) and (v[i]^.dato.codigo <= x.codigo) then 
		begin
			pos := i;	
			x.codigo := v[i]^.dato.codigo;
            x.cant:=v[i]^.dato.cantidad_vendida;	
		end;

	if (pos <> -1) then
	begin
		x.codigo := v[pos]^.dato.codigo;
        x.cant := v[pos]^.dato.cantidad_vendida; 
		v[pos] := v[pos]^.sig; 
	end;
end;
```

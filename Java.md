<h1 align="center">☕Java </h1>
<div align="center">
<img src="https://media.giphy.com/media/eMm0dTIwACfRVeZTly/giphy.gif?cid=ecf05e47do6ipo17lhxb28y01yb2rqxyumdqzzodwqaz6und&rid=giphy.gif&ct=g"/>
 </div>
<br>

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

Cargar_Matriz
=============

```Java
package practica1;
import PaqueteLectura.GeneradorAleatorio;
public class Ejercicio4 {
    public static void main(String[] args) {
        GeneradorAleatorio.iniciar();
        int x=10,y = 10;
        int[][] tabla = new int[x][y];
        int i, j;
	
        for (i=0;i<x;i++)
            for(j=0;j<y;j++)
                tabla[i][j] = GeneradorAleatorio.generarInt(10);    
        
        for (i=0;i<x;i++){
            for(j=0;j<y;j++)
                System.out.print(tabla[i][j] + " ");
            System.out.println();
        }
    }
}
```
Buscar_un_Elemento_en_una_Lista
===============================

<table>
<tr>
<td> Desordenada </td> <td> Ordenada </td> <td></td>
</tr>
<tr>
<td>

 ```Java
for (i=0;i<x;i++)
  for(j=0;j<y;j++)
    tabla[i][j] = GeneradorAleatorio.generarInt(10);   
```
</td>
<td>

```Java
for (i=0;i<x;i++){
   for(j=0;j<y;j++)
      System.out.print(tabla[i][j] + " ");
   System.out.println();
}
```
 
</td>
<td>
	
```Java
GeneradorAleatorio.iniciar();
int x=10,y = 10;
int[][] tabla = new int[x][y];
int i, j;
```
	
</td>
</tr>
 </table>



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


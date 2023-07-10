## Resumen Imperativo

<table>
<tr><td>Arreglo</td><td>Lista</td></tr>
<tr><td>

Un arreglo es una estructura de datos compuesta que permite acceder a cada componente por una variable índice, que da la posición de la componente dentro de la estructura de datos. La estructura arreglo se almacena en posiciones contiguas de memoria
- **Características** homogénea – estática - indexada
- **Trabajan con** dimensión física – dimensión lógica
</td><td>

Una lista es una estructura de datos lineal compuesta por nodos. Cada nodo de la lista posee el dato que almacena la lista y la dirección del siguiente nodo. Toda lista puede recorrerse a partir de su primer elemento. Los elementos no necesariamente están en posiciones contiguas de memoria. Para generar nuevos elementos en la lista, o eliminar alguno se deben utilizar las operaciones de new y dispose respectivamente.
- **Características** homogénea – dinámica - lineal
</td></tr>
<tr><td>

```pascal
Type
  nombre= array [rango] of tipo;
```
</td><td>

```pascal
Type
  lista= ^nodo;
  nodo = record 
    dato:tipo;
    sig: lista;
  end;
```
</td></tr>
<tr><td>

- Cargar la estructura
- Agregar un elemento
- Insertar un elemento
- Eliminar un elemento
- Recorrer la estructura
- Buscar un elemento
- Ordenar la estructura

</td><td>

- Crear una lista vacía
- Agregar un elemento adelante
- Agregar un elemento atrás
- Insertar un elemento
- Eliminar un elemento
- Recorrer la estructura
- Buscar un elemento
</td></tr>
</table>


### Arreglos Ordenación

Un algoritmo de ordenación es un proceso por el cual un conjunto de elementos  puede ser ordenado.

>Cuál sería el beneficio de tener una estructura ordenada?

![image](https://github.com/Fabian-Martinez-Rincon/Fabian-Martinez-Rincon/assets/55964635/5360a4cb-7c68-4d89-b76c-2fb9968ebaa3)

Existen diferentes algoritmos de ordenación para vectores donde cada uno tiene sus ventajas y desventajas en cuanto a facilidad de escritura, cantidad de memoria requerida y tiempo de ejecución

Los más conocidos: **selección** – intercambio - **inserción**

#### Selección
Dado un arreglo A y una dimensión lógica (dimL), el algoritmo repite (dimL-1) veces buscar el elemento mínimo y ubicarlo en la posición correspondiente.
Es decir, en la primera vuelta busca el mínimo desde la posición 1 hasta la dimensión lógica y ubica al mínimo en la primera posición. En la vuelta i busca el mínimo desde la posición i hasta la dimensión lógica y lo ubica en la posición i.
- Es muy sencilla la implementación
- El tiempo de ejecución en N2, siendo N el tamaño del arreglo
- Qué ocurre si los datos están ordenados inicialmente? 
  - Si los datos están ordenados de menor a mayor el algoritmo solo hace comparaciones, por lo tanto es de orden (n).
  - Si los datos están ordenados de mayor a menor el algoritmo hace todas las comparaciones y todos los intercambios, por lo tanto es de orden (N2). comparaciones.



![image](https://github.com/Fabian-Martinez-Rincon/Fabian-Martinez-Rincon/assets/55964635/ef65b7c2-0894-4808-9730-b47b233e9692)
![image](https://github.com/Fabian-Martinez-Rincon/Fabian-Martinez-Rincon/assets/55964635/393a0aff-a0d8-4ff6-8b85-26a2a0dd1c06)
![image](https://github.com/Fabian-Martinez-Rincon/Fabian-Martinez-Rincon/assets/55964635/b986458a-23ba-46e2-87e9-430140f13e21)



#### Insesión

INSERCION (insertion sort) es una manera muy natural de ordenar un conjunto de elementos almacenados en un arreglo. 

Inicialmente se considera un solo elemento, que obviamente es un conjunto ordenado. 
Después, cuando hay k elementos ordenados de menor a mayor, se toma el elemento k+1 y se compara con todos los elementos ya ordenados, deteniéndose cuando se encuentra un elemento menor (todos los elementos mayores han sido desplazados una posición a la derecha) o cuando ya no se encuentran elementos (todos los elementos fueron desplazados y este es el más pequeño). En este punto se inserta el elemento k+1 debiendo desplazarse los demás elementos.

![image](https://github.com/Fabian-Martinez-Rincon/Fabian-Martinez-Rincon/assets/55964635/09e0152d-e291-44d1-8397-d448a678b22d)![image](https://github.com/Fabian-Martinez-Rincon/Fabian-Martinez-Rincon/assets/55964635/e084f407-0433-40a0-82bc-77f02fcdcbfa)
![image](https://github.com/Fabian-Martinez-Rincon/Fabian-Martinez-Rincon/assets/55964635/efb02e1d-db9a-4c53-aa37-9f905fc335aa)
![image](https://github.com/Fabian-Martinez-Rincon/Fabian-Martinez-Rincon/assets/55964635/39468c5e-90e9-4d5b-ac86-934b437dbec3) 
![image](https://github.com/Fabian-Martinez-Rincon/Fabian-Martinez-Rincon/assets/55964635/b7af0d17-8a4b-49c9-a258-a8f421c46ed7) 

### Codigos

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

## Recursión

La recursión es una metodología para resolver problemas. 
Permite resolver un problema P por resolución de instancias más pequeñas P1, P2, … Pn del mismo problema.
El problema Pi  es de la misma naturaleza que el problema original, pero en algún sentido es más simple. 

Suponga que debe realizar un módulo que devuelva el factorial de un número

![image](https://github.com/Fabian-Martinez-Rincon/Fabian-Martinez-Rincon/assets/55964635/5774667e-61e7-4fc9-a981-3d5949c08dce)

#### Caracteristicas

El problema es siempre el mismo, pero debe ir achicándose.

Siempre tienen al menos un caso base, en el cual el código a implementar no es recursivo (a veces no debe escribirse código en el caso base, pero siempre existe). Pueden haber mas casos base.

El caso base es el que determina el final de la solución recursivo

Suponga que debe realizar un módulo que devuelva la potencia de un número x elevado a la n (x^n). Cómo lo pensaría? Cuántos casos base hay?

> Suponga que debe realizar un módulo que imprima el contenido de una lista.

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
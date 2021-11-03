<h1 align="center">Modulo Imperativo</h1>

Escribir un problema del mundo real cuya solución justifique la utilización de la operación Merge vista en el curso. Fundamentar su elección.

- ***Rta:*** Supongamos que dos personas viven juntas, cada uno tiene un estante por separado ordenado alfabéticamente . En algún momento deciden armar un único estante ordenado alfabéticamente, la persona 1 se encarga de acomodar los libros en el nuevo estante y la persona 2 se encarga de pasarle los libros a la persona 1 de manera ordenada.

<h1 align="center">Modulo Objetos</h1>

Dado el siguiente problema, indique si la declaración de clases es correcta o no. Justifique. “Representar a los empleados permanentes y contratados de una empresa. De los empleados permanentes se conoce nombre, sueldo y antigüedad. De los contratados se conoce nombre, sueldo y la cantidad de contratos efectuados por la empresa.”

<table>
<tr>
<td> 1 </td> <td> 2 </td>
</tr>
<tr>
<td>
 
```Java
public class EmpleadoPermanente{
  public String nombre;
  public double sueldo;
  public int antiguedad;
 …
}
```
</td>
<td>
 

```Java
public class EmpleadoContratado{
  public String nombre;
  public double sueldo;
  public int cantContratos;
 …
}
```
 
</td>
</tr>
 
</table>

<h1 align="center">Modulo Concurrente</h1>

En la ciudad existe un robot jefe y 3 robots empleados. Los empleados juntan todas las flores de la esquina donde están parados, las depositan en la esquina (30,30) y vuelven a su esquina original. El jefe irá 4 veces a la esquina (30,30). En cada intento juntará todas las flores que haya en ese momento y las depositará en la esquina (4,4). El jefe
inicia en (1,1) y los empleados en (1,2),(1,3) y (1,4) Dado el siguiente fragmento de código indique si es correcto y maximiza la concurrencia asociándolo a los temas vistos en el módulo.


<table>
<tr>
<td> 1 </td> <td> 2 </td>
</tr>
<tr>
<td>
 
```ruby
robot jefe
variables
 cantFlo: numero
comenzar
 ...
 repetir 4
  BloquearEsquina(30,30)
  Pos(30,30)
  JuntarTodasLasFlores(cantFlo){junta todas las flores de la esq.}
  BloquearEsquina(4,4)
  Pos(4,4)
  DepositarTodasLasFlores(cantFlo){deja las flores juntadas}
  Pos(1,1)
  LiberarEsquina(4,4)
  LiberarEsquina(30,30)
fin
```
</td>
<td>
 

```ruby
robot empleado
variables
 av, ca: numero
comenzar
 av:= PosAv
 ca:= PosCa
 JuntarTodasLasFlores(cantFlo)
 BloquearEsquina(30,30)
 Pos(30,30)
 DepositarTodasLasFlores(cantFlo)
 Pos(av, ca)
 LiberarEsquina(30,30)
fin
```
 
</td>
</tr>
 
</table>

<table>
<tr>
<td> 1 </td> <td> 2 </td>
</tr>
<tr>
<td>
 
```ruby
robot jefe
variables
 cantFlo: numero
comenzar
 ...
 repetir 4
  BloquearEsquina(30,30)
  Pos(30,30)
  JuntarTodasLasFlores(cantFlo){junta todas las flores de la esq.}
  BloquearEsquina(4,4)
  Pos(4,4)
  LiberarEsquina(30,30)
  DepositarTodasLasFlores(cantFlo){deja las flores juntadas}
  Pos(1,1)
  LiberarEsquina(4,4)
fin
```
</td>
<td>
 

```ruby
robot empleado
variables
 av, ca: numero
comenzar
 av:= PosAv
 ca:= PosCa
 JuntarTodasLasFlores(cantFlo)
 BloquearEsquina(30,30)
 Pos(30,30)
 DepositarTodasLasFlores(cantFlo)
 Pos(av, ca)
 LiberarEsquina(30,30)
fin
```
 
</td>
</tr>
 
</table>

- ***Rta*** El problema en parte es correcto pero no maxiza la concurrencia, el ```LiberarEsquina(30,30)``` ocurre demasiado tarde, para corregir esto, se tendria que liberar esa esquina ni bien el robot se posicione o mueva a otra esquina.

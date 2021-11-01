<h1 align="center"> R-INFO 🤖 </h1>


Indice
=================

<!--ts-->
   * [Sintaxis](#Sintaxis)
   * [Juntar Flores o Papeles](#Juntar_Flores_Papeles)
   * [Jefe](#Jefe)
   * [bucle bloquear](#Bucle)
   * [Juntar Objetos](#JuntarObjetos)
   * [Esquinas_Random](#Esquinas_Random)
   * [Bloquear](#Bloquear)
   * [Identificar Robots](#Identificar_Robots)
   * [Mover Flores](#Mover_Flores)
   * [Operaciones_RInfo](#Operaciones_RInfo)
   




```Ruby
ciudad1: areaC(1,1,10,10) //área Compartida 
ciudad2: areaP(15,15,20,20) //área Privada
ciudad3: areaPC(30,32,50,51) //área Parcialmente compartida 
```


Sintaxis
========
```Ruby
programa programa_x
procesos
  proceso x
  comenzar
    Informar(1)
  fin
areas
  area1: AreaC(1,1,100,100)
robots
  robot tipo1
  comenzar
    x
  fin
variables
  R1: tipo1
comenzar
  AsignarArea (R1,area1)
  Iniciar (R1,1,1)
fin
```

Juntar_Flores_Papeles
=====================

<table>
<tr>
<td> Flores </td> <td> Papeles </td> <td> Flores y Papeles </td>
</tr>
<tr>
<td>
 
```Ruby
proceso juntarFlores(ES Flor:numero)
  comenzar
    mientras (HayFlorEnLaEsquina)
      tomarFlor
      Flor:= Flor + 1
  fin
```
	
</td>
<td>
 

```Ruby
proceso juntarPapeles(ES Papel:numero)
  comenzar
    mientras (HayPapelEnLaEsquina)
      tomarPapel
      Papel:= Papel + 1
  fin
```
 
</td>
	
<td>
	
```Ruby
proceso juntarFloresPapeles(ES Flor:numero; ES Papeles: numero)
  comenzar
    mientras (HayFlorEnLaEsquina)
      tomarFlor
      Flor:= Flor + 1
    
    mientras (HayPapelEnLaEsquina)
      tomarPapel
      Papel:= Papel + 1
  fin
```
	
</td>
	
</tr>
 
</table>


Rectangulo
==========
```Ruby
  proceso Rectangulo(E base : numero; E altura : numero;ES cantidad : numero)
  comenzar
    repetir 2
      repetir altura
        juntar_Flores(cantidad)
        mover
      derecha
      repetir base
        juntar_Flores(cantidad)
        mover
      derecha
  fin
```
JuntarObjetos
=============
```js
  proceso Juntar_Objetos(ES Flor:numero;ES Tiene_Objetos:boolean)
  variables
    av,ca:numero
  comenzar
    av:= PosAv
    ca:= PosCa
    BloquearEsquina(30,30)
    Pos(30,30)
    si HayFlorEnLaEsquina
      tomarFlor
      Flor:=Flor+1
    sino
      si HayPapelEnLaEsquina
        tomarPapel
      sino
        Tiene_Objetos:=F
    Pos(av,ca)  
    LiberarEsquina(30,30)  
  fin
```
Bucle
=====
```js
BloquearEsquina(PosAv,PosCa)
mientras ~(HayFlorEnLaEsquina)
      BloquearEsquina(PosAv ,PosCa + 1)
      mover
      LiberarEsquina(PosAv,PosCa - 1) 
LiberarEsquina(PosAv,PosCa)
```


Jefe
====

<table>
<tr>
<td> 1 </td> <td> 2 </td>
</tr>
<tr>
<td>
 
```Ruby
robot robot1
  variables
    altura,ancho,cantFlores : numero
  comenzar
    cantFlores:=0 
    RecibirMensaje(altura,R-JEFE)
    RecibirMensaje(ancho,R-JEFE)
    Rectangulo(ancho,altura,cantFlores) 
    EnviarMensaje (cantFlores,R-JEFE)
  fin
  
  robot robot2
  variables
    cantFlores : numero
    Max:numero
  comenzar
    Max:=-1
    EnviarMensaje (5,R1)
    EnviarMensaje (3,R1)
    EnviarMensaje (8,R2)
    EnviarMensaje (2,R2)
    
    repetir 2
      RecibirMensaje(cantFlores,*)
      si cantFlores > Max
        Max:=cantFlores
    
    Informar('El-Maximo-de-flores-juntadas-es',Max)
  fin
```
	
</td>
<td>
 

```Ruby
robot tipo1  {tipo trabajador}
  variables
    id,altura,ancho,f:numero
  comenzar
    RecibirMensaje(id,robot3)
    RecibirMensaje(altura,robot3)
    RecibirMensaje(ancho,robot3)
    f:=0
    rectangulo(altura,ancho,f)
    Informar(f)
    EnviarMensaje(id,robot3)
    EnviarMensaje(f,robot3)  
  fin
  
  robot tipo2  {tipo jefe}
  variables
    id,f:numero
  comenzar
    {Envio los ids} 
    EnviarMensaje(1,robot1)
    EnviarMensaje(2,robot2)
    {Envio alto y ancho}
    EnviarMensaje (5,robot1)
    EnviarMensaje (3,robot1)
    EnviarMensaje (8,robot2)
    EnviarMensaje (2,robot2)
    {Informar el id + la cantidad que junto cada trabajador}
    repetir 2
      {Espero el id de un robot que ya termino}
      RecibirMensaje(id,*)
      {Recibo la cantidad de ESE robot}
      si id = 1
        RecibirMensaje(f,robot1)
      sino
        RecibirMensaje(f,robot2)
      Informar(id, f)
  fin
```
 
</td>
</tr>
 
</table>




Esquinas_Random
===============
```ruby
proceso Esquinas_Random(ES flor:numero)
  variables
    av,ca: numero
    x,y:numero
  comenzar
    av:=PosAv
    ca:=PosCa
    repetir 3
      Random(x,0,5)
      Random(y,0,5)
      Pos(av+x,ca+y)
      juntarFlores(flor)
      {Volver a la esq original}
      Pos(av,ca)
  fin
```



Bloquear
========

<table>
<tr>
<td> Bloquear 1 </td> <td> Bloquear 2 </td>
</tr>
<tr>
<td>
 
```ruby
robot tipo1
  comenzar
    repetir 5 
      mover
    BloquearEsquina(10,10)
    Pos (10,10) 
    Pos (1,1)
    LiberarEsquina(10,10)
  fin 
```
	
</td>
<td>
 

```ruby
robot tipo2
  comenzar
    mientras (hayFlorEnLaEsquina)
      tomarFlor
    BloquearEsquina(10,10)
    Pos (10,10)
    Pos (2,2)
    LiberarEsquina(10,10)
  fin 
```
 
</td>
	
</tr>
 
</table>

Identificar_Robots
==================

```Ruby
proceso Identificar_Robots
comenzar
  EnviarMensaje(1,R1)
  EnviarMensaje(2,R2)
  EnviarMensaje(3,R3)
  EnviarMensaje(4,R4)
fin
```

Mover_Flores
============

<table>
<tr>
<td> Flores </td> <td> Papeles </td>
</tr>
<tr>
<td>
 
```ruby
proceso TrasladarFlor(ES tiene_flores:boolean)
variables
  av,ca:numero
comenzar
  av:= PosAv
  ca:= PosCa
  BloquearEsquina(10,10)
  Pos(10,10)
  si HayFlorEnLaEsquina
    Mover_Flor(av,ca)
  sino
    tiene_flores:=F
    Pos(av,ca)  
    LiberarEsquina(10,10)  
fin
```
	
</td>
<td>
 

```ruby
proceso Mover_Flor(E av:numero; E ca:numero)
comenzar
  tomarFlor
  BloquearEsquina(11,11)    
  Pos(11,11)
  LiberarEsquina(10,10)    
  depositarFlor
  Pos(av,ca)  
  LiberarEsquina(11,11)
fin
```
 
</td>
	
</tr>
 
</table>


Operaciones_RInfo
=================

| Sintaxis | Definición |
| ------------- | ------------- |
| Iniciar(robot,posicion)  | Posiciona al robot en la esquina indicada orientado hacia el norte. |
| derecha  | Cambia la orientacion del robot 90° en sentido horario |
| mover  | Se mueve derecho en la posicion orientado |
| tomarFlor,tomarPapel  | Recoge una flor/papel y la pone en la bolsa |
| depositarFlor,depositarPapel  | Deposita una flor/papel de la bolsa y la deposita en la esquina |
| PosAv,PosCa  | Nro de avenida/calle actualmente posicionado |
| HayPapelEnLaEsquina,HayFlorEnLaEsquina  | Es verdadero si hay al menos un Papel/Flor en la esquina |
| HayFlorEnLaBolsa,HayPapelEnLaBolsa  | Si hay al menos una flor/papel en la bolsa |
| Pos  | Posiciona al robot Pos(Av,Ca) |
| Informar  | Permite mostrar en pantalla el valor de una variable |
| y | & |
| o | barra vertical |
| no | ~ |
| Igualdad | = |
| Menor | < |
| Mayor | > |
| Menor o Igual | <= |
| Mayor o Igual | >= |
| Distinto | <> |
| PosAv,PosCa | Toma el valor de la avenida/calle actual |
| EnviarMensaje(variable,variableRobot) | | 
| RecibirMensaje(variable,variableRobot) | | 
| RecibirMensaje(variable,*) | |

Clases
======

https://user-images.githubusercontent.com/55964635/136906078-ad857b79-bc73-48aa-83dc-f879bd925b9e.mp4


<h1 align="center">Practica 1</h1>



```1 )``` Realice un programa para que un robot junte todas las flores de la avenida 1 y las deposite al final de dicha avenida. Al finalizar, debe informar la cantidad de flores depositadas y la cantidad de esquinas sin flores que encontró durante el recorrido. [Resolución](#Ejercicio_1)

```a)``` Modifique el programa anterior para que el mismo robot realice lo mismo en las avenidas 1, 3 y 5. [Resolución](#Ejercicio_1a)

```b)``` Modifique el programa anterior para que el trabajo sea realizado por 3 robots: Uno realiza la avenida 1, otro realiza la avenida 3 y otro realiza la avenida 5. Cada robot debe iniciar en las esquinas (1,1), (3,1) y (5,1) respectivamente. [Resolución](#Ejercicio_1b)

```2)``` Realice un programa en el que 4 robots limpien de papeles el perímetro de un cuadrado de lado 20 en sentido horario, como se muestra en la figura: [Resolución](#Ejercicio_2)

![image (3)](https://user-images.githubusercontent.com/55964635/139301819-98497866-a380-4f68-ae92-0d526355eafa.png)


<h1 align="center">Resoluciones</h1>

Ejercicio_1
===========
```js
programa Ejercicio_1_Fabian
procesos
  proceso Juntar_Flores_Esquina(ES flores:numero ; ES esquina_vacia:numero)
  comenzar
    si(HayFlorEnLaEsquina)
      mientras(HayFlorEnLaEsquina)
        tomarFlor
        flores:=flores+1
    sino 
      esquina_vacia:=esquina_vacia+1
  fin
{________________________________________________}
  proceso Juntar_Flores(ES flores:numero; ES esquina_vacia:numero)
  comenzar
    repetir 99
      Juntar_Flores_Esquina(flores,esquina_vacia)
      mover
    Juntar_Flores_Esquina(flores,esquina_vacia)
  fin
{________________________________________________}
  proceso Depositar_Flores(E flores:numero)
  comenzar
    repetir flores
      depositarFlor
  fin
{________________________________________________}
areas
  ciudad: AreaP(1,1,1,100)
robots
  robot robot1
  variables
    flores:numero
    esquina_vacia: numero
  comenzar
    flores:=0
    esquina_vacia:=0
    Juntar_Flores(flores,esquina_vacia)
    Depositar_Flores(flores)
    Informar('FloresJuntadas',flores)
    Informar('EsquinaVacia',esquina_vacia)
  fin
{________________________________________________}
variables
  robot_uno: robot1
comenzar
  AsignarArea (robot_uno,ciudad)
  Iniciar (robot_uno,1,1)
fin
```
Ejercicio_1a
============
```js
programa Ejercicio_1_Fabian
procesos
  proceso Juntar_Flores_Esquina(ES flores:numero ; ES esquina_vacia:numero)
  comenzar
    si(HayFlorEnLaEsquina)
      mientras(HayFlorEnLaEsquina)
        tomarFlor
        flores:=flores+1
    sino 
      esquina_vacia:=esquina_vacia+1
  fin
{________________________________________________}
  proceso Juntar_Flores(ES flores:numero; ES esquina_vacia:numero)
  comenzar
    repetir 99
      Juntar_Flores_Esquina(flores,esquina_vacia)
      mover
    Juntar_Flores_Esquina(flores,esquina_vacia)
  fin
{________________________________________________}
  proceso Depositar_Flores(E flores:numero)
  comenzar
    repetir flores
      depositarFlor
  fin
{________________________________________________}
  proceso RecorrerAvenida(E Avenida:numero)
  variables
    flores:numero
    esquina_vacia: numero
  comenzar
    flores:=0
    esquina_vacia:=0
    Juntar_Flores(flores,esquina_vacia)
    Depositar_Flores(flores)
    Informar('FloresJuntadas',flores)
    Informar('EsquinaVacia',esquina_vacia)
  fin
{________________________________________________}
areas
  ciudad: AreaP(1,1,1,100)
  ciudad2: AreaP(3,1,3,100)
  ciudad3: AreaP(5,1,5,100)
robots
  robot robot1
  variables
    Av:numero
  comenzar
    Av:=1
    repetir 2
      RecorrerAvenida(Av)
      Av:=Av+2
      Pos(Av,1)
     RecorrerAvenida(Av)  {Porque se rompe al querer ir a una posicion no declarada (Pos (7,1))}
  fin
{________________________________________________}
variables
  robot_uno: robot1
comenzar
  AsignarArea (robot_uno,ciudad)
  AsignarArea (robot_uno,ciudad2)
  AsignarArea (robot_uno,ciudad3)
  Iniciar (robot_uno,1,1)
fin
```
Ejercicio_1b
============
```js
programa Ejercicio_1_Fabian
procesos
  proceso Juntar_Flores_Esquina(ES flores:numero ; ES esquina_vacia:numero)
  comenzar
    si(HayFlorEnLaEsquina)
      mientras(HayFlorEnLaEsquina)
        tomarFlor
        flores:=flores+1
    sino 
      esquina_vacia:=esquina_vacia+1
  fin
{________________________________________________}
  proceso Juntar_Flores(ES flores:numero; ES esquina_vacia:numero)
  comenzar
    repetir 99
      Juntar_Flores_Esquina(flores,esquina_vacia)
      mover
    Juntar_Flores_Esquina(flores,esquina_vacia)
  fin
{________________________________________________}
  proceso Depositar_Flores(E flores:numero)
  comenzar
    repetir flores
      depositarFlor
  fin
{________________________________________________}
  proceso RecorrerAvenida
  variables
    flores:numero
    esquina_vacia: numero
  comenzar
    flores:=0
    esquina_vacia:=0
    Juntar_Flores(flores,esquina_vacia)
    Depositar_Flores(flores)
    Informar('FloresJuntadas',flores)
    Informar('EsquinaVacia',esquina_vacia)
  fin
{________________________________________________}
areas
  ciudad: AreaP(1,1,1,100)
  ciudad2: AreaP(3,1,3,100)
  ciudad3: AreaP(5,1,5,100)
robots
{_________________________________________________}
  robot robot1
  comenzar
    RecorrerAvenida
  fin
{_________________________________________________}

variables
  robot_uno: robot1
  robot_dos: robot1
  robot_tres: robot1
comenzar
  AsignarArea (robot_uno,ciudad)
  AsignarArea (robot_dos,ciudad2)
  AsignarArea (robot_tres,ciudad3)
  Iniciar (robot_uno,1,1)
  Iniciar (robot_dos,3,1)
  Iniciar (robot_tres,5,1)
fin
```
Ejercicio_2
===========
```js
programa Ejercicio_2_Fabian
procesos
{_________________________________________________________________}
  proceso Juntar_Papeles_Esquina(ES papeles:numero)
  comenzar
    mientras(HayPapelEnLaEsquina)
      tomarPapel
      papeles:=papeles+1
  fin
{_________________________________________________________________}
  proceso Juntar_Papeles
  variables
    papeles:numero
  comenzar
    repetir 20   {Podria ser repetir 19, ya que la ultima esquina ya fue recorrida por otro robot}
      Juntar_Papeles_Esquina(papeles)
      mover
    Juntar_Papeles_Esquina(papeles)
    Informar(papeles)
  fin
{_________________________________________________________________}
areas
  area_1: AreaP(10,11,10,29)
  area_2: AreaP(11,30,29,30)
  area_3: AreaP(30,11,30,29) {No entiendo porque funciona asi y no como 30,30,30,11}
  area_4: AreaP(11,10,29,10)
  
  esquina_1: AreaPC(10,10,10,10)
  esquina_2: AreaPC(10,30,10,30)
  esquina_3: AreaPC(30,30,30,30)
  esquina_4: AreaPC(30,10,30,10)
  
robots
  robot robot1
  comenzar
    Juntar_Papeles
  fin
  {__________________________________}
  robot robot2
  comenzar
    derecha
    Juntar_Papeles
  fin
  {__________________________________}
  robot robot3
  comenzar
    repetir 2
      derecha
    Juntar_Papeles
  fin
  {__________________________________}
  robot robot4
  comenzar
    repetir 3 
      derecha
    Juntar_Papeles
  fin
  {__________________________________}
variables
  robot_uno: robot1
  robot_dos: robot2
  robot_tres: robot3
  robot_cuatro: robot4
comenzar
  AsignarArea (robot_uno,area_1)
  AsignarArea (robot_uno,esquina_1)
  AsignarArea (robot_uno,esquina_2)

  AsignarArea (robot_dos,area_2)
  AsignarArea (robot_dos,esquina_2)
  AsignarArea (robot_dos,esquina_3)

  AsignarArea (robot_tres,area_3)
  AsignarArea (robot_tres,esquina_3)
  AsignarArea (robot_tres,esquina_4)

  AsignarArea (robot_cuatro,area_4)
  AsignarArea (robot_cuatro,esquina_4)
  AsignarArea (robot_cuatro,esquina_1)

  Iniciar (robot_uno,10,10)
  Iniciar (robot_dos,10,30)
  Iniciar (robot_tres,30,30)
  Iniciar (robot_cuatro,30,10)
fin

{
    b) Las areas se deben declarar en privadas (creo)
    c) Por como configure los lados, no tendria por que
}
```

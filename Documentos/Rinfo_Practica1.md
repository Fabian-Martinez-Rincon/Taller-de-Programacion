<h1 align="center">Practica 1</h1>



```1 )``` Realice un programa para que un robot junte todas las flores de la avenida 1 y las deposite al final de dicha avenida. Al finalizar, debe informar la cantidad de flores depositadas y la cantidad de esquinas sin flores que encontró durante el recorrido. [Resolución](#Ejercicio_1)

```a)``` Modifique el programa anterior para que el mismo robot realice lo mismo en las avenidas 1, 3 y 5

```b)``` Modifique el programa anterior para que el trabajo sea realizado por 3 robots: Uno realiza la avenida 1, otro realiza la avenida 3 y otro realiza la avenida 5. Cada robot debe iniciar en las esquinas (1,1), (3,1) y (5,1) respectivamente. 

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

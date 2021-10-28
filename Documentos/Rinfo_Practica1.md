<h1 align="center">Practica 1</h1>



```1 )``` Realice un programa para que un robot junte todas las flores de la avenida 1 y las deposite al final de dicha avenida. Al finalizar, debe informar la cantidad de flores depositadas y la cantidad de esquinas sin flores que encontró durante el recorrido. [Resolución](#Ejercicio_1)

```a)``` Modifique el programa anterior para que el mismo robot realice lo mismo en las avenidas 1, 3 y 5. [Resolución](#Ejercicio_1a)

```b)``` Modifique el programa anterior para que el trabajo sea realizado por 3 robots: Uno realiza la avenida 1, otro realiza la avenida 3 y otro realiza la avenida 5. Cada robot debe iniciar en las esquinas (1,1), (3,1) y (5,1) respectivamente. [Resolución](#Ejercicio_1b)

```2)``` Realice un programa en el que 4 robots limpien de papeles el perímetro de un cuadrado de lado 20 en sentido horario, como se muestra en la figura: [Resolución](#Ejercicio_2)

![image (3)](https://user-images.githubusercontent.com/55964635/139301819-98497866-a380-4f68-ae92-0d526355eafa.png)

```3)``` Realice un programa en el que 3 robots realicen escaleras de 4 escalones, en las que el tamaño de cada escalón será de 1x1, el segundo de 2x2, y así sucesivamente, como se muestra a continuación: [Resolución](#Ejercicio_3)

![image](https://user-images.githubusercontent.com/55964635/139310951-a3e6b3fb-9d02-44c2-8dd4-051ba810f8f2.png)

Al finalizar el recorrido, cada robot debe informar la cantidad de escalones en los que la cantidad de papeles superó en 1 a la cantidad de flores. Durante el recorrido, no se debe modificar el contenido de las esquinas.

```4)``` La ciudad se dividió en 4 áreas:  [Resolución](#Ejercicio_4)
- Área 1: desde la avenida 1 hasta la avenida 25
- Área 2: desde la avenida 26 hasta la avenida 50
- Área 3: desde la avenida 51 hasta la avenida 75
- Área 4: desde la avenida 76 hasta la avenida 100

![image (1)](https://user-images.githubusercontent.com/55964635/139312392-5c2b2d7f-641a-49f7-8498-9a42410397f4.png)

Las áreas impares (1 y 3) deben limpiarse de flores, y las áreas pares (2 y 4) deben limpiarse de papeles.

Realice un programa en el que un robot se encarga de limpiar las áreas 1 y 3, y otro robot se encarga de las áreas 2 y 4. Para ello, modularice el recorrido de cada área.

```5)``` Realice un programa en el que cuatro robots realizan las siguientes actividades: [Resolución](#Ejercicio_5)
- El robot 1 debe limpiar de flores las primeras 20 esquinas de las calles 75 y 80. Al finalizar cada calle, debe depositar todas las flores en la ultima esquina.
- El robot 2 debe limpiar de papeles las últimas 20 esquinas de las avenidas 75 y 80. Al finalizar cada avenida debe depositar todos los papeles en la primera esquina
- El robot 3 debe limpiar de flores las últimas 20 esquinas de las calles 10 y 15. Al finalizar cada calle, debe depositar todas las flores en la última esquina.
- El robot 4 debe limpiar de papeles las primeras 20 esquinas de las avenidas 10 y 15. Al finalizar cada avenida debe depositar todos los papeles en la primera esquina

![image (2)](https://user-images.githubusercontent.com/55964635/139322865-b0d5ec33-0a70-4d87-880a-60d23289c1e7.png)


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

Ejercicio_3
===========
```js
programa Ejercicio_3_Fabian
procesos 
{________________________________________________}
  proceso recogerFlores_Papeles(ES flores:numero; ES papeles:numero)
  comenzar
    mientras(HayFlorEnLaEsquina)
      tomarFlor
      flores:=flores+1
    mientras(HayPapelEnLaEsquina)
      tomarPapel
      papeles:=papeles+1
  fin
{________________________________________________}
  proceso depositarFlores_Papeles(E flores:numero; E papeles:numero)
  comenzar
    repetir flores
      depositarFlor
    repetir papeles
      depositarPapel
  fin
{________________________________________________}
  proceso Trabajar_Escalon (E escalon:numero;ES flores_escalon:numero; ES papeles_escalon:numero)
  variables
    papeles:numero
    flores:numero
  comenzar
    repetir escalon  {Aca cuento las flores unicamente para depositarlas}
      papeles:=0    {no las puedo reutilizar ya que las tengo que reiniciar}
      flores:=0
      recogerFlores_Papeles(flores,papeles)
      depositarFlores_Papeles(flores,papeles)
      flores_escalon:=flores_escalon+flores
      papeles_escalon:=papeles_escalon+papeles
      mover
    derecha
    repetir escalon
      papeles:=0
      flores:=0
      recogerFlores_Papeles(flores,papeles)
      depositarFlores_Papeles(flores,papeles)
      flores_escalon:=flores_escalon+flores
      papeles_escalon:=papeles_escalon+papeles
      mover
    
  fin
{________________________________________________}
  proceso RecorrerEscalon
  variables
    valor_escalon:numero
    flores_escalon:numero
    papeles_escalon:numero
    supero:numero
  comenzar
    supero:=0
    valor_escalon:=1
    repetir 4
      flores_escalon:=0
      papeles_escalon:=0
      Trabajar_Escalon(valor_escalon,flores_escalon,papeles_escalon)
      si ((flores_escalon+1)=papeles_escalon)  {El enunciado pide informar solo las que superen en 1}
        supero:=supero+1
      valor_escalon:=valor_escalon+1   {Enunciado pide incrementar en 1 cd escalon}
      repetir 3  {mirar arriba}
        derecha
    Informar('La-Cantidad-de-escalones-que-supero-en-uno-a-las-flores-con-respecto-a-los-papeles-es-',supero)
  fin
{________________________________________________}
areas
  {Escalera Uno}
  Escalon1: AreaP(12,14,12,15)  {Las areas estan al revez pero no las pienso cambiar :)}
  Escalon2: AreaP(13,15,13,17)  {las corregi todas, necesito una vida}
  Escalon3: AreaP(14,17,15,17) 
  Escalon4: AreaP(15,18,15,20)
  Escalon5: AreaP(16,20,17,20)
  Escalon6: AreaP(18,20,18,23)
  Escalon7: AreaP(18,24,22,24)
  {Escalera Dos}
  Escalon1_2: AreaP(17,10,17,11)  
  Escalon2_2: AreaP(18,11,18,13) 
  Escalon3_2: AreaP(19,13,20,13) 
  Escalon4_2: AreaP(20,14,20,16)
  Escalon5_2: AreaP(21,16,22,16)
  Escalon6_2: AreaP(23,16,23,19)
  Escalon7_2: AreaP(23,20,27,20)
  {Escalera Tres}
  Escalon1_3: AreaP(22,6,22,7)  
  Escalon2_3: AreaP(23,7,23,9) 
  Escalon3_3: AreaP(24,9,25,9) 
  Escalon4_3: AreaP(25,10,25,12)
  Escalon5_3: AreaP(26,12,27,12)
  Escalon6_3: AreaP(28,12,28,15)
  Escalon7_3: AreaP(28,16,32,16)
  
robots
{_________________________________________________}
  robot robot1
  comenzar
    RecorrerEscalon
  fin
{_________________________________________________}
variables
  robot_uno: robot1
  robot_dos: robot1
  robot_tres: robot1
comenzar
  {Robot 1}
  AsignarArea (robot_uno,Escalon1)
  AsignarArea (robot_uno,Escalon2)
  AsignarArea (robot_uno,Escalon3)
  AsignarArea (robot_uno,Escalon4)
  AsignarArea (robot_uno,Escalon5)
  AsignarArea (robot_uno,Escalon6)
  AsignarArea (robot_uno,Escalon7)
  {Robot 2}
  AsignarArea (robot_dos,Escalon1_2)
  AsignarArea (robot_dos,Escalon2_2)
  AsignarArea (robot_dos,Escalon3_2)
  AsignarArea (robot_dos,Escalon4_2)
  AsignarArea (robot_dos,Escalon5_2)
  AsignarArea (robot_dos,Escalon6_2)
  AsignarArea (robot_dos,Escalon7_2)
  {Robot 3}
  AsignarArea (robot_tres,Escalon1_3)
  AsignarArea (robot_tres,Escalon2_3)
  AsignarArea (robot_tres,Escalon3_3)
  AsignarArea (robot_tres,Escalon4_3)
  AsignarArea (robot_tres,Escalon5_3)
  AsignarArea (robot_tres,Escalon6_3)
  AsignarArea (robot_tres,Escalon7_3)

  Iniciar (robot_uno,12,14)
  Iniciar (robot_dos,17,10)
  Iniciar (robot_tres,22,6)
fin
```

Ejercicio_4
===========
```js
programa Ejercicio_4_Fabian
procesos
{________________________________________________}
  proceso LimpiarFlores
  comenzar
    mientras(HayFlorEnLaEsquina)
      tomarFlor
  fin
{________________________________________________}
  proceso recorrerAreainPar
  variables
    avenida:numero
  comenzar
    avenida:=PosAv
    repetir 24
      repetir 99
        LimpiarFlores
        mover
      LimpiarFlores
      avenida:=avenida+1
      Pos(avenida,1)
    LimpiarFlores
  fin
{________________________________________________}
  proceso LimpiarPapeles
  comenzar
    mientras(HayPapelEnLaEsquina)
      tomarPapel
  fin
{________________________________________________}
  proceso recorrerAreaPar
  variables
    avenida:numero
  comenzar
    avenida:=PosAv
    repetir 24    {Recorro Area (cada area es de 24 x 100)}
      repetir 99
        LimpiarPapeles
        mover
      LimpiarPapeles
      avenida:=avenida+1
      Pos(avenida,1)
    LimpiarPapeles
  fin
{________________________________________________}
areas 
  area_1: AreaP(1,1,25,100)
  area_2: AreaP(26,1,50,100)
  area_3: AreaP(51,1,75,100)
  area_4: AreaP(76,1,100,100)
robots
{_________________________________________________}
  robot robot1
  comenzar
    recorrerAreainPar
    Pos(51,1)
    recorrerAreainPar
  fin
{_________________________________________________}
  robot robot2
  comenzar
    recorrerAreaPar
    Pos(76,1)
    recorrerAreaPar
  fin
{_________________________________________________}

variables
  robot_uno: robot1
  robot_dos: robot2
comenzar
  AsignarArea (robot_uno,area_1)
  AsignarArea (robot_uno,area_3)

  AsignarArea (robot_dos,area_2)
  AsignarArea (robot_dos,area_4)

  Iniciar (robot_uno,1,1)
  Iniciar (robot_dos,26,1)
fin
{a) si no es a mano, de momento no sabria como implementarlo}
```

Ejercicio_5
===========

```js
programa Ejercicio_5_Fabian
procesos
{________________________________________________}
  proceso Juntar_Papeles(ES papeles:numero)
  comenzar
    mientras(HayPapelEnLaEsquina)
      tomarPapel
      papeles:=papeles+1
  fin
{________________________________________________}
  proceso recorrerArea_Papeles(ES papeles:numero)
  comenzar
    repetir 19
      Juntar_Papeles(papeles)
      mover
    Juntar_Papeles(papeles)
  fin
{________________________________________________}
  proceso depositarPapeles(E papeles:numero)
  comenzar
    repetir papeles
      depositarPapel
  fin
{________________________________________________}
  proceso Juntar_Flores(ES flores:numero)
  comenzar
    mientras(flores)
      tomarFlor
      flores:=flores+1
  fin
{________________________________________________}
  proceso recorrerArea_Flores(ES flores:numero)
  comenzar
    repetir 19
      Juntar_Flores(flores)
      mover
    Juntar_Flores(flores)
  fin
{________________________________________________}
  proceso depositarFlores(E flores:numero)
  comenzar
    repetir flores
      depositarFlor
  fin
{________________________________________________}
areas 
  area_1: AreaP(1,75,20,75)
  area1_2: AreaP(1,80,20,80)
  
  area_2: AreaP(75,80,75,99)  {es hasta la 99 ya que el 80 cuenta como esquina}
  area2_2: AreaP(80,80,80,99)
  
  area_3: AreaP(80,15,99,15)
  area3_2: AreaP(80,10,99,10)

  area_4: AreaP(10,1,10,20)
  area4_2: AreaP(15,1,15,20)
robots
{_________________________________________________}
  robot tipo1
  variables
    flores,av,ca:numero
  comenzar
    av:=PosAv
    ca:=PosCa+5
    derecha
    flores:=0
    recorrerArea_Flores(flores)
    depositarFlores(flores) 
    flores:=0    
    Pos(av,ca)
    recorrerArea_Flores(flores)
    depositarFlores(flores)     {Las deposito en la ultima esquina}
  fin
{_________________________________________________}
  robot tipo2
  variables
    papeles,av,ca:numero
  comenzar
    av:=PosAv
    ca:=PosCa
    papeles:=0
    recorrerArea_Papeles(papeles)
    Pos(av,ca) {Deposito en la primera esquina}
    depositarPapeles(papeles)
    papeles:=0
    av:=PosAv+5
    Pos(av,ca)
    recorrerArea_Papeles(papeles)
    Pos(av,ca)                   
    depositarPapeles(papeles)
  fin

{_________________________________________________}
variables
  R1: tipo1
  R2: tipo2
  R3: tipo1
  R4: tipo2
comenzar
  AsignarArea (R1,area_1)
  AsignarArea (R1,area1_2)

  AsignarArea (R2,area_2)
  AsignarArea (R2,area2_2)

  AsignarArea (R3,area_3)
  AsignarArea (R3,area3_2)

  AsignarArea (R4,area_4)
  AsignarArea (R4,area4_2)
  

  Iniciar (R1,1,75)
  Iniciar (R2,75,80)
  Iniciar (R3,80,10)
  Iniciar (R4,10,1)
fin
```

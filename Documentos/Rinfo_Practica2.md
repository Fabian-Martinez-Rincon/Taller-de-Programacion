<h1 align="center">Practica 2</h1>

```1)``` Dos robots compiten para ver cuál junta más flores. El primer robot recoge todas las flores de la avenida 1 entre las calles 1 y 10. El segundo robot recoge todas las flores de la avenida 2, entre las calles 11 y 20. [Resolución](#Ejercicio_1a)

Al finalizar el recorrido, el robot que recogió mayor cantidad de flores debe informar la diferencia de flores que obtuvo respecto al robot perdedor (El que obtuvo menos flores).

Los robots inician en las esquinas (1,1 y 2,11) respectivamente.

```b)``` Modifiquen el ejercicio anterior, considerando que ahora habrá un robot fiscalizador, que será responsable de informar la diferencia de flores que obtuvo el ganador con respecto al perdedor. El robot fiscalizador se ubica en la esquina (2,1) [Resolución](#Ejercicio_1b)

```c)``` Modifique el ejercicio anterior para que ahora participen 6 robots. [Resolución](#Ejercicio_1c)
- Robot 1: Avenida 1, entre las calles 1 y 10.
- Robot 2: Avenida 2, entre las calles 11 y 20.
- Robot 3: Avenida 3, entre las calles 21 y 30.
- Robot 4: Avenida 4, entre las calles 31 y 40.
- Robot 5: Avenida 5, entre las calles 41 y 50.
- Robot 6: Avenida 6, entre las calles 51 y 60.

El fiscalizador deberá informar la cantidad de flores que juntó el robot ganador.

```d)``` Modifique el inciso anterior para que ahora el fiscalizador informe también, cuál fue el robot ganador. [Resolución](#Ejercicio_1d)

```e)``` Analizar (No es necesario implementar): ¿Cómo se puede implementar el inciso 1.c sin robot fiscalizador? [Resolución](#Ejercicio_1e)

- ¿Qué cantidad de robots participarán del juego?
- ¿Qué cantidad de mensajes deben enviarse?

```2)``` Realice un programa en el que 3 robots realizan una escalera de 4 escalones cada uno. Todos los escalones tienen un ancho fijo de 1, y un alto aleatorio entre 1 y 5. Al
finalizar el recorrido, cada robot deberá enviar al robot jefe la cantidad de escalones que tenían más flores que papeles. Una vez que los tres robots finalizaron, el robot jefe deberá informar la suma de las cantidades enviadas por los 3 robots. [Resolución](#Ejercicio_2)

- El robot jefe inicia en la esquina (1,1)
- El robot 1 inicia en la esquina (2,1)
- El robot 2 inicia en la esquina (7,1)
- El robot 3 inicia en la esquina (12,1)

```3)``` Realice un programa con 2 equipos: [Resolución](#Ejercicio_3)
- El equipo A, compuesto por los robots A1 y A2, debe juntar papeles de las primeras 20 esquinas de la calle 1
- El equipo B, compuesto por los robots B1 y B2, debe juntar flores de las primeras 20 esquinas de la calle 5

Los robots A1 y B1 deberán realizar las 10 primeras esquinas de su recorrido, y al finalizar avisarán a los robots de A2 y B2 respectivamente para que continúen con las siguientes 10 esquinas. El segundo robot de cada equipo debe informar la cantidad de elementos recogidos en las 20 esquinas. 

Inicialice los 4 robots en las esquinas que considere más apropiadas según el trayecto que le corresponde realizar a cada uno.

```b)``` Modifique el programa anterior para que cada equipo repita el recorrido con las siguientes 20 esquinas de sus correspondientes calles. [Resolución](#Ejercicio_3b)

```c)``` Analice (No es necesario implementar) cómo implementaria el inciso ***b*** si ahora cada equipo debe realizar 8 segmentos de 20 esquinas. [Resolución](#Ejercicio_3c)

```4)``` Realice un programa en el que un robot fiscalizador controla el acceso de 4 robots recolectores al cuadrante encerrado entre las esquinas (25,25) y (75,75). Para ello el robot fiscalizador avisa a un robot recolector aleatorio que puede ingresar al área. El robot que recibe la autorización de acceso calcula una esquina aleatoria y avisa al robot fiscalizador que ya finalizó. [Resolución](#Ejercicio_4)

![5](https://user-images.githubusercontent.com/55964635/139332109-f521e8a4-207c-4cfe-a6ab-6aeb77e748c3.png)

<h1 align="center">Resoluciones</h1>

Ejercicio_1a
============
```js
programa Ejercicio_1
{_______________________________________________________}
procesos
  proceso juntarFlores (ES flores:numero)
  comenzar
    mientras (HayFlorEnLaEsquina)
      tomarFlor
      flores:= flores + 1
  fin    
{_______________________________________________________}
  proceso Recorrer_Av (ES flores: numero)
  comenzar
    repetir 9
      juntarFlores(flores)
      mover
    juntarFlores(flores)
  fin 
{_______________________________________________________}
areas
  area1: AreaP(1,1,1,10)
  area2: AreaP(2,11,2,20)
{_______________________________________________________}
robots 
  robot COMP1
  variables
    FProp,FComp,Diferencia:numero
  comenzar
    Diferencia:=0
    FProp:=0
    FComp:=0
    Recorrer_Av(FProp)

    EnviarMensaje(FProp,R2)
    RecibirMensaje(FComp,R2)

    si(FProp > FComp)
      Diferencia:= FProp - FComp
      Informar(Diferencia)
  fin
  
  robot COMP2
  variables
    FProp,FComp,Diferencia:numero
  comenzar
    Diferencia:=0
    FProp:=0
    FComp:=0
    Recorrer_Av(FProp)
    
    EnviarMensaje(FProp,R1)
    RecibirMensaje(FComp,R1)

    si(FProp > FComp)
      Diferencia:= FProp - FComp
      Informar(Diferencia)
  fin
  
variables 
  R1: COMP1
  R2: COMP2

comenzar 
  AsignarArea(R1,area1)
  AsignarArea(R2,area2)
  Iniciar(R1, 1, 1)
  Iniciar(R2, 2, 11)
fin
```
Ejercicio_1b
============
```js
programa Ejercicio_1b

procesos
{_______________________________________________________}
  proceso juntarFlores (ES flores:numero)
  comenzar
    mientras (HayFlorEnLaEsquina)
      tomarFlor
      flores:= flores + 1
  fin    
{_______________________________________________________}
  proceso RecorrerAv (ES flores: numero)
  comenzar
    repetir 9
      juntarFlores(flores)
      mover
    juntarFlores(flores)
  fin 
{_______________________________________________________}
areas
  area1: AreaP(1,1,1,10)
  area2: AreaP(2,11,2,20)
  area3: AreaP(2,1,2,1)
{_______________________________________________________}
robots 
  robot COMP
  variables
    f: numero
  comenzar
    f:=0
    RecorrerAv(f)
    EnviarMensaje(f,R3)
  fin
{_______________________________________________________}
  robot FISC
  variables
    F_COMPA, F_COMPB: numero
    DIF:numero
  comenzar
    DIF:=0
    RecibirMensaje(F_COMPA,*)
    RecibirMensaje(F_COMPB,*)

    si (F_COMPA > F_COMPB)
      DIF:= F_COMPA - F_COMPB
    sino
      DIF:= F_COMPB - F_COMPA
    
    Informar(DIF)
  fin
{_______________________________________________________}
variables 
  R1: COMP
  R2: COMP
  R3: FISC
comenzar 
  AsignarArea(R1,area1)
  AsignarArea(R2,area2)
  AsignarArea(R3,area3)

  Iniciar(R1, 1, 1)
  Iniciar(R2, 2, 11)
  Iniciar(R3, 2, 1)
fin
```
Ejercicio_1c
============
```js
programa Ejercicio_1c

procesos
  proceso juntarFlores (ES flores:numero)
  comenzar
    mientras (HayFlorEnLaEsquina)
      tomarFlor
      flores:= flores + 1
  fin    
  
  proceso recorrerAvenida (ES flores: numero)
  comenzar
    repetir 9
      juntarFlores(flores)
      mover
    juntarFlores(flores)
  fin 
  
  proceso esMaximo (E flores: numero; ES maxFlores:numero)
  comenzar
    si (flores > maxFlores)
      maxFlores:=flores
  fin 

areas
  area1: AreaP(1,1,1,10)
  area2: AreaP(2,11,2,20)
  area3: AreaP(3,21,3,30)
  area4: AreaP(4,31,4,40)
  area5: AreaP(5,41,5,50)
  area6: AreaP(6,51,6,60)
  areaF: AreaP(2,1,2,1)
  
robots 
  robot COMP
  variables
    FPropias: numero
  comenzar
    FPropias:=0
    recorrerAvenida(FPropias)
    EnviarMensaje(FPropias,RF)
  fin
  
  robot FISC
  variables
    flores, maxFlores: numero
  comenzar
    maxFlores:=0
    repetir 6
      RecibirMensaje(flores,*)
      esMaximo(flores,maxFlores)
    Informar(maxFlores)
  fin
  
variables 
  R1,R2,R3,R4,R5,R6: COMP
  RF: FISC

comenzar 
  AsignarArea(R1,area1)
  AsignarArea(R2,area2)
  AsignarArea(R3,area3)
  AsignarArea(R4,area4)
  AsignarArea(R5,area5)
  AsignarArea(R6,area6)
  AsignarArea(RF,areaF)

  Iniciar(R1,1,1)
  Iniciar(R2,2,11)
  Iniciar(R3,3,21)
  Iniciar(R4,4,31)
  Iniciar(R5,5,41)
  Iniciar(R6,6,51)
  Iniciar(RF,2,1)
fin
```
Ejercicio_1d
============
```js
programa Ejercicio_1d

procesos
  proceso juntarFlores (ES flores:numero)
  comenzar
    mientras (HayFlorEnLaEsquina)
      tomarFlor
      flores:= flores + 1
  fin    
  
  proceso recorrerAvenida (ES flores: numero)
  comenzar
    repetir 9
      juntarFlores(flores)
      mover
    juntarFlores(flores)
  fin 
  
  proceso esMaximo (E flores: numero; ES maxFlores:numero; E ID:numero; ES ID_MAX:numero)
  comenzar
    si (flores > maxFlores)
      maxFlores:=flores
      ID_MAX:=ID
  fin 
  
  proceso Asignar_IDS
  comenzar  
    EnviarMensaje(1, R1)
    EnviarMensaje(2, R2)
    EnviarMensaje(3, R3)
    EnviarMensaje(4, R4)
    EnviarMensaje(5, R5)
    EnviarMensaje(6, R6)
  fin

areas
  area1: AreaP(1,1,1,10)
  area2: AreaP(2,11,2,20)
  area3: AreaP(3,21,3,30)
  area4: AreaP(4,31,4,40)
  area5: AreaP(5,41,5,50)
  area6: AreaP(6,51,6,60)
  areaF: AreaP(2,1,2,1)
  
robots 
  robot COMP
  variables
    f, id: numero
  comenzar
    f:=0
    RecibirMensaje(id, R7)
    recorrerAvenida(f)
    EnviarMensaje(id,R7)
    EnviarMensaje(f,R7)
  fin
  
  robot FISC
  variables
    flores, maxFlores, ID, ID_MAX: numero
  comenzar
    maxFlores:=0
    Asignar_IDS
    repetir 6
      RecibirMensaje(ID,*)
      si (ID = 1)
        RecibirMensaje(flores,R1)
      sino
        si (ID = 2)
          RecibirMensaje(flores,R2)
        sino
          si (ID = 3)
            RecibirMensaje(flores,R3)
          sino
            si (ID = 4)
              RecibirMensaje(flores,R4)
            sino
              si (ID = 5)
                RecibirMensaje(flores,R5)
              sino
                RecibirMensaje(flores,R6)

      esMaximo(flores,maxFlores, ID, ID_MAX)

    Informar(ID_MAX, maxFlores)
  fin
  
variables 
  R1,R2,R3,R4,R5,R6:COMP
  R7: FISC
comenzar 
  AsignarArea(R1,area1)
  AsignarArea(R2,area2)
  AsignarArea(R3,area3)
  AsignarArea(R4,area4)
  AsignarArea(R5,area5)
  AsignarArea(R6,area6)
  AsignarArea(R7,areaF)

  Iniciar(R1,1,1)
  Iniciar(R2,2,11)
  Iniciar(R3,3,21)
  Iniciar(R4,4,31)
  Iniciar(R5,5,41)
  Iniciar(R6,6,51)
  Iniciar(R7,2,1)
fin
```
Ejercicio_2
===========
```js
programa Ejercicio_2

procesos
  proceso izquierda
  comenzar  
    repetir 3
      derecha
  fin
  
  proceso cont_papeles (ES papeles:numero)
  comenzar
    cantP:= 0
    mientras (HayPapelEnLaEsquina)
      tomarPapel
      papeles:=papeles+1
    
  fin  

  proceso cont_flores (ES flores:numero)
  comenzar
    mientras (HayFlorEnLaEsquina)
      tomarFlor
      flores:=flores+1
  fin  
  
  proceso Esquina(ES flores: numero; ES papeles: numero)
  comenzar
    si (HayPapelEnLaEsquina)
      cont_papeles(papeles)
    si (HayFlorEnLaEsquina)
      cont_flores(flores)
  fin

  proceso Escalon (E alto: numero; ES cant: numero)
  variables
    flores: numero
    papeles: numero
  comenzar
    flores:= 0
    papeles:= 0
    repetir alto
      Esquina(flores, papeles)
      mover
    derecha
    Esquina(flores, papeles) 
    mover
    izquierda
    si (papeles < flores)
      cant:= cant+1
  fin

areas
  area1: AreaP(2,1,6,21)
  area2: AreaP(7,1,11,21)
  area3: AreaP(12,1,16,21)
  areaJefe: AreaP(1,1,1,1)
  
robots 
  robot escalera
  variables
    alto: numero
    cant: numero
  comenzar
    cant:= 0
    repetir 4
      Random(alto, 1, 5)
      Escalon(alto,cant)
    EnviarMensaje(cant, RJ)
  fin
  
  robot jefe
  variables
    total, escalones_r:numero
  comenzar
    total:=0
    repetir 3
      RecibirMensaje(escalones_r,*)
      total:=total+escalones_r
    Informar('Suma',total)
  fin 
     
variables 
  R1,R2,R3: escalera
  RJ: jefe

comenzar 
  AsignarArea(R1,area1)
  AsignarArea(R2,area2)
  AsignarArea(R3,area3)
  AsignarArea(RJ,areaJefe)

  Iniciar(R1,2,1)
  Iniciar(R2,7,1)
  Iniciar(R3,12,1)
  Iniciar(RJ,1,1)
fin
```
Ejercicio_3
===========
```js
programa Ejercicio_3

procesos
  proceso juntarFlores (ES flores: numero)
  comenzar
    mientras (HayFlorEnLaEsquina)
      tomarFlor
      flores:=flores+1
  fin  
  
  proceso juntarPapeles (ES papeles: numero)
  comenzar
    mientras (HayPapelEnLaEsquina)
      tomarPapel
      papeles:=papeles+1
  fin  
  
  proceso recorrerPapeles(ES papeles:numero)
  comenzar
    repetir 9
      si HayPapelEnLaEsquina
        juntarPapeles(papeles)
      mover
    si HayPapelEnLaEsquina
      juntarPapeles(papeles)
  fin
  
  proceso recorrerFlores(ES flores:numero)
  comenzar
    repetir 9
      si HayFlorEnLaEsquina
        juntarFlores(flores)
      mover
    si HayFlorEnLaEsquina
      juntarFlores(flores)
  fin


areas
  areaA1: AreaP(1,1,10,1)
  areaA2: AreaP(11,1,20,1)
  areaB1: AreaP(1,5,10,5)
  areaB2: AreaP(11,5,20,5)
  
  
robots 
  robot A1
  variables
    papeles:numero
  comenzar
    papeles:= 0
    derecha
    recorrerPapeles(papeles)
    EnviarMensaje(papeles, RA2)
  fin
  
  robot A2
  variables
    papeles:numero
  comenzar
    RecibirMensaje(papeles,RA1)
    derecha
    recorrerPapeles(papeles)
    Informar('Total',papeles)
  fin

  robot B1
  variables
    flores:numero
  comenzar
    flores:= 0
    derecha
    recorrerFlores(flores)
    EnviarMensaje(flores, RB2)
  fin
  
  robot B2
  variables
    flores:numero
  comenzar
    RecibirMensaje(flores,RB1)
    derecha
    recorrerFlores(flores)
    Informar('Total',flores)
  fin

variables 
  RA1: A1
  RA2: A2
  RB1: B1
  RB2: B2

comenzar 
  AsignarArea(RA1,areaA1)
  AsignarArea(RA2,areaA2)
  AsignarArea(RB1,areaB1)
  AsignarArea(RB2,areaB2)
  Iniciar(RA1,1,1)
  Iniciar(RA2,11,1)
  Iniciar(RB1,1,5)
  Iniciar(RB2,11,5)
fin
```

Ejercicio_3b
============
```js
programa Ejercicio_3b

procesos
  proceso juntarFlores (ES flores: numero)
  comenzar
    mientras (HayFlorEnLaEsquina)
      tomarFlor
      flores:=flores+1
  fin  
  
  proceso juntarPapeles (ES papeles: numero)
  comenzar
    mientras (HayPapelEnLaEsquina)
      tomarPapel
      papeles:=papeles+1
  fin  
  
  proceso recorrerPapeles(ES papeles:numero)
  comenzar
    repetir 9
      si HayPapelEnLaEsquina
        juntarPapeles(papeles)
      mover
    si HayPapelEnLaEsquina
      juntarPapeles(papeles)
  fin
  
  proceso recorrerFlores(ES flores:numero)
  comenzar
    repetir 9
      si HayFlorEnLaEsquina
        juntarFlores(flores)
      mover
    si HayFlorEnLaEsquina
      juntarFlores(flores)
  fin

areas
  areaA1a: AreaP(1,1,10,1)
  areaA2a: AreaP(11,1,20,1)
  areaA1b: AreaP(21,1,30,1)
  areaA2b: AreaP(31,1,40,1)
  areaB1a: AreaP(1,5,10,5)
  areaB2a: AreaP(11,5,20,5)
  areaB1b: AreaP(21,5,30,5)
  areaB2b: AreaP(31,5,40,5)
  
robots 
  robot A1
  variables
    papeles:numero
  comenzar
    papeles:= 0
    derecha
    recorrerPapeles(papeles)
    EnviarMensaje(papeles, RA2)
    Pos(21,1)
    RecibirMensaje(papeles, RA2)
    recorrerPapeles(papeles)
    EnviarMensaje(papeles, RA2)
  fin
  
  robot A2
  variables
    papeles:numero
  comenzar
    RecibirMensaje(papeles,RA1)
    derecha
    recorrerPapeles(papeles)
    EnviarMensaje(papeles, RA1)
    Pos(31,1)
    RecibirMensaje(papeles,RA1)
    recorrerPapeles(papeles)
    Informar('Total',papeles)
  fin

  robot B1
  variables
    flores:numero
  comenzar
    flores:= 0
    derecha
    recorrerFlores(flores)
    EnviarMensaje(flores, RB2)
    Pos(21,5)
    RecibirMensaje(flores, RB2)
    recorrerFlores(flores)
    EnviarMensaje(flores, RB2)

  fin
  
  robot B2
  variables
    flores:numero
  comenzar
    RecibirMensaje(flores,RB1)
    derecha
    recorrerFlores(flores)
    EnviarMensaje(flores, RB1)
    Pos(31,5)
    RecibirMensaje(flores,RB1)
    recorrerFlores(flores)
    Informar('Total',flores)
  fin
 
variables 
  RA1: A1
  RA2: A2
  RB1: B1
  RB2: B2

comenzar 
  AsignarArea(RA1,areaA1a)
  AsignarArea(RA1,areaA1b)

  AsignarArea(RA2,areaA2a)
  AsignarArea(RA2,areaA2b)

  AsignarArea(RB1,areaB1a)
  AsignarArea(RB1,areaB1b)

  AsignarArea(RB2,areaB2a)
  AsignarArea(RB2,areaB2b)

  Iniciar(RA1,1,1)
  Iniciar(RA2,11,1)
  Iniciar(RB1,1,5)
  Iniciar(RB2,11,5)
fin
```
Ejercicio_4
===========
```js
programa Ejercicio_4

procesos
  proceso juntarFlores (ES flores: numero)
  comenzar
    mientras (HayFlorEnLaEsquina)
      tomarFlor
      flores:=flores+1
  fin  
  
  proceso juntarPapeles (ES papeles: numero)
  comenzar
    mientras (HayPapelEnLaEsquina)
      tomarPapel
      papeles:=papeles+1
  fin  
  
  proceso limpiarEsquina (ES flores: numero; ES papeles: numero)
  comenzar
    si (HayFlorEnLaEsquina)
      juntarFlores
    si (HayPapelEnLaEsquina)
      juntarPapeles
  fin
  
  proceso identificarRobots
  comenzar
    EnviarMensaje(1, R1)
    EnviarMensaje(2, R2)
    EnviarMensaje(3, R3)
    EnviarMensaje(4, R4)
  fin
  
  proceso avisarRobot (E ID: numero; E ok: boolean)
  comenzar
    si (ID=1)
      EnviarMensaje(ok,R1)
    sino
      si (ID=2)
        EnviarMensaje(ok,R2)
      sino
        si (ID=3)
          EnviarMensaje(ok,R3)
        sino
          EnviarMensaje(ok,R4)
  fin
  
  proceso avisarFin (E ok: boolean)
  comenzar
    EnviarMensaje(ok, R1)
    EnviarMensaje(ok, R2)
    EnviarMensaje(ok, R3)
    EnviarMensaje(ok, R4)
  fin

  proceso esMaximo (E cant: numero; ES cantMax:numero; E ID:numero; ES idMax:numero)
  comenzar
    si (cant > cantMax)
      cantMax:=cant
      idMax:=ID
  fin 

areas
  cuadrante: AreaPC(25,25,75,75)
  areaF: AreaP(1,1,1,1)
  area1: AreaP(25,1,25,1)
  area2: AreaP(30,1,30,1)
  area3: AreaP(35,1,35,1)
  area4: AreaP(40,1,40,1)
  
robots 
  robot recolector
  variables
    papeles, flores, total:numero
    ID:numero
    AvInicio, CaInicio, AvFin, CaFin:numero
    ok, gane: boolean
  comenzar
    papeles:=0
    flores:=0
    AvInicio:=PosAv
    CaInicio:=PosCa
    RecibirMensaje(ID,RF)
    mientras (ok) 
      Random(AvFin,25,75)
      Random(CaFin,25,75)

      Pos(AvFin,CaFin)
      limpiarEsquina(flores, papeles)
      Pos(AvInicio, CaInicio)
      
      EnviarMensaje(ok,RF)
      RecibirMensaje(ok,RF) 

    total:=flores+papeles
    EnviarMensaje(ID,RF)
    EnviarMensaje(total,RF) 
    RecibirMensaje(gane,RF)
    si (gane)
      Pos(50,50)     
  fin
  
  robot fiscalizador
  variables
    ID, ID_FINAL:numero
    ok: boolean
    cantR1, cantR2, cantR3, cantR4:numero
    cantMax, idMax:numero
  comenzar
    idMax:= -1
    cantMax:= -1
    ok:= V
    identificarRobots
    repetir 10
      Random(ID,1,4)
      avisarRobot(ID, ok)
      RecibirMensaje(ok,*)
    ok:=F {aviso a los robots que quedaron esperando que ya se terminaron las 10 llamadas}
    avisarFin(ok)
    repetir 4
      RecibirMensaje(ID_FINAL, *)   
      si (ID_FINAL=1)
        RecibirMensaje(cantR1,R1)
        esMaximo(ID_FINAL,cantR1,idMax,cantMax)
      sino
        si (ID_FINAL=2)
          RecibirMensaje(cantR2,R2)
          esMaximo(ID_FINAL,cantR2,idMax,cantMax)
        sino
          si (ID_FINAL=3)
            RecibirMensaje(cantR3,R3)
            esMaximo(ID_FINAL,cantR3,idMax,cantMax)
          sino
            RecibirMensaje(cantR4,R4)
            esMaximo(ID_FINAL,cantR4,idMax,cantMax)
    ID:=1
    repetir 4
      si (ID = idMax)
        ok:=V
      sino
        ok:=F
      avisarRobot(ID,ok)
      ID:=ID+1   
  fin

variables 
  R1,R2,R3,R4:recolector
  RF:fiscalizador

comenzar 
  AsignarArea(R1,area1)
  AsignarArea(R1,cuadrante)

  AsignarArea(R2,area2)
  AsignarArea(R2,cuadrante)

  AsignarArea(R3,area3)
  AsignarArea(R3,cuadrante)

  AsignarArea(R4,area4)
  AsignarArea(R4,cuadrante)

  AsignarArea(RF,areaF)

  Iniciar(RF,1,1)
  Iniciar(R1,25,1)
  Iniciar(R2,30,1)
  Iniciar(R3,35,1)
  Iniciar(R4,40,1)
fin
```

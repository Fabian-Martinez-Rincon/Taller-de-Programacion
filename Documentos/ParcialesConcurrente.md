<h1 align="center"> Parciales </h1>

![image](https://user-images.githubusercontent.com/55964635/139561964-55572c5d-c0de-4525-958e-bfeb9f2f0a97.png)

[Programa Completo](https://github.com/Fabian-Martinez1/Taller-de-Programacion/blob/main/Parciales%20Concurrente/ParcialA.ri)


<table>
<tr>
<td> RECOLECTOR 1 </td> <td> RECOLECTOR 2 </td><td> Asignaciones </td> <td> Areas </td>
</tr>
<tr>
<td>
 
```js
  robot RECOLECTOR1
  variables
    papel,av,ca : numero
    ok : boolean
  comenzar
    av := PosAv
    ca := PosCa
    ok := V
    mientras (ok)
      papel := 0
      BloquearEsquina(5,5)
      Pos(5,5)
      JuntarPapel(papel)
      si (papel = 0)
        ok := F
        Pos(av,ca)
        LiberarEsquina(5,5)
        EnviarMensaje(F,R2) {TERMINE}
      sino
        si papel < 10
          ok:=F
          EnviarMensaje(F,R2)
        sino
          EnviarMensaje(V,R2)
        BloquearEsquina(6,6)
        Pos(6,6)
        LiberarEsquina(5,5)
        repetir papel
          depositarPapel
        Pos(av,ca)
        LiberarEsquina(6,6)
  fin
```
</td>
<td>
 

```js
  robot RECOLECTOR2
  variables
    papel,av,ca : numero
    ok : boolean
  comenzar
    av := PosAv
    ca := PosCa
    RecibirMensaje(ok,R1)
    mientras (ok)
      papel := 0
      BloquearEsquina(5,5)
      Pos(5,5)
      JuntarPapel(papel)
      si(papel = 0)
        Pos(av,ca)
        LiberarEsquina(5,5)
        ok := F
      sino
        BloquearEsquina(6,6)
        Pos(6,6)
        LiberarEsquina(5,5)
        repetir papel
          depositarPapel
        Pos(av,ca)
        LiberarEsquina(6,6)
        si papel < 10
          ok:=F
  fin
```
 
</td>
 <td>
 

```js
variables 
  R1 : RECOLECTOR1
  R2 : RECOLECTOR2
comenzar 
  AsignarArea(R1,jardin)
  AsignarArea(R1,deposito)
  AsignarArea(R1,area1)

  AsignarArea(R2,jardin)
  AsignarArea(R2,deposito)
  AsignarArea(R2,area2)

  Iniciar(R1,1,1)
  Iniciar(R2, 2, 2)
fin
```
 
</td>
 
<td>

```js
programa Parcial3fecha
procesos
{________________________________________________}
  proceso JuntarPapel(ES papel : numero)
  comenzar
    mientras (HayPapelEnLaEsquina) & (papel < 10)
      tomarPapel
      papel :=  papel + 1
  fin
{________________________________________________}
areas
  jardin : AreaC(5,5,5,5)
  deposito : AreaC(6,6,6,6)

  area1 : AreaP(1,1,1,1)
  area2 : AreaP(2,2,2,2)
 
```
 
</td>
 
</tr>
 
</table>



![image](https://user-images.githubusercontent.com/55964635/139564880-4e5006c8-c7c5-43a8-9a7b-0ff2193f8850.png)
 
</table>

<table>
<tr>
<td> RECOLECTOR 1 </td> <td> RECOLECTOR 2 </td><td> Asignaciones </td> <td> Areas </td>
</tr>
<tr>
<td>
 
```js
  robot RECOLECTOR
  variables
    av, ca, Flores, Papeles, id, idMin : numero
  comenzar
    RecibirMensaje(id,RF)
    
    av := PosAv
    ca := PosCa
    repetir 9
      juntarF(Flores)
      mover
    juntarF(Flores)
    Pos(av,ca)
    
    EnviarMensaje(id,RF)
    EnviarMensaje(Flores,RF)
    
    RecibirMensaje(idMin,RF)
    si ~(idMin = id)
      repetir 9
        juntarP(Papeles)
        mover
      juntarP(Papeles)
      
      EnviarMensaje(id,RF) 
  fin
```
</td>
<td>
 

```js
  robot JEFE
  variables
    Flores, id, min, idMin : numero
  comenzar
    Flores := 0
    min := 999
    EnviarMensaje(1,R1)
    EnviarMensaje(2,R2)
    EnviarMensaje(3,R3)
    
    repetir 3
      RecibirMensaje(id,*)
      si id = 1
        RecibirMensaje(Flores,R1)
      sino
        si id = 2
          RecibirMensaje(Flores,R2)
        sino
          RecibirMensaje(Flores,R3)
          
      si Flores < min
        min := Flores
        idMin := id
            
    EnviarMensaje(idMin,R1)
    EnviarMensaje(idMin,R2)
    EnviarMensaje(idMin,R3)
      
    RecibirMensaje(id,*)
    Informar('GanadorRobot',id)
    RecibirMensaje(id,*)
  fin
```
 
</td>
 <td>
 

```js
variables
  R1 : RECOLECTOR
  R2 : RECOLECTOR
  R3 : RECOLECTOR
  RF : JEFE
comenzar
  AsignarArea(R1, area1)
  AsignarArea(R2, area2)
  AsignarArea(R3, area3)
  AsignarArea(RF, areaF)
  
  Iniciar(R1,5,1)
  Iniciar(R2,6,1)
  Iniciar(R3,7,1)
  Iniciar(RF,1,1)
fin
```
 
</td>
 
<td>

```js
procesos
  proceso juntarF(ES flores:numero) 
  comenzar
    mientras HayFlorEnLaEsquina
      tomarFlor
      flores:=flores + 1
  fin
  proceso juntarP (ES papeles:numero)
  comenzar
    mientras HayPapelEnLaEsquina
      tomarPapel
      papeles:=papeles + 1
  fin  
  
areas 
  area1 : AreaP(5,1,5,10)
  area2 : AreaP(6,1,6,10)
  area3 : AreaP(7,1,7,10)
  areaF : AreaP(1,1,1,1)
```
 
</td>
 
</tr>
 
</table>

![image](https://user-images.githubusercontent.com/55964635/139567244-a2e8c3ef-8604-4861-81a3-3d6503d1c98b.png)

<table>
<tr>
<td> RECOLECTOR 1 </td> <td> RECOLECTOR 2 </td><td> Asignaciones </td> <td> Areas </td>
</tr>
<tr>
<td>
 
```js
  robot TIPO1
  variables
    Flores:numero
    Papeles_Rival:numero
  comenzar
    
    Flores:=0
    Juntar_Flores(Flores)

    EnviarMensaje(Flores,R2)
    RecibirMensaje(Papeles_Rival,R2)

    si Flores > Papeles_Rival
      Procesar(Flores)

  fin
```
</td>
<td>
 

```js
  robot TIPO2
  variables
    Papeles:numero
    Flores_Rival:numero
  comenzar
    
    Papeles:=0
    Juntar_Papeles(Papeles)
    
    EnviarMensaje(Papeles,R1)
    RecibirMensaje(Flores_Rival,R1)

    si Papeles > Flores_Rival
      Procesar(Papeles)
  fin
```
 
</td>
 <td>
 

```js
variables
  R1: TIPO1
  R2: TIPO2
comenzar
  AsignarArea (R1,esquina)
  AsignarArea (R1,esquinaR1)
  AsignarArea (R1,area)

  AsignarArea (R2,esquina)
  AsignarArea (R2,esquinaR2)
  AsignarArea (R2,area)
  
  Iniciar (R1,2,2)
  Iniciar (R2,3,3)
fin
```
 
</td>
 
<td>

```js
{______________________________________________}
  proceso juntarFlores(ES Flor:numero)
  comenzar
    mientras (HayFlorEnLaEsquina)
      tomarFlor
      Flor:= Flor + 1
  fin
{______________________________________________}
  proceso Juntar_Flores(ES Flores:numero)
  comenzar
    BloquearEsquina(50,50)
    Pos (50,50) 
    juntarFlores(Flores)
    Pos (2,2)
    LiberarEsquina(50,50)
  fin
{______________________________________________}
  proceso juntarPapeles(ES Papel:numero)
  comenzar
    mientras (HayPapelEnLaEsquina)
      tomarPapel
      Papel:= Papel + 1
  fin

{______________________________________________}
  proceso Juntar_Papeles(ES Papeles:numero)
  comenzar
    BloquearEsquina(50,50)
    Pos (50,50) 
    juntarPapeles(Papeles)
    Pos(3,3)
    LiberarEsquina(50,50)
  fin
{______________________________________________}
  proceso Procesar(E objetos:numero)
  comenzar
    Informar(objetos)
    Pos(1,5)
    derecha
    repetir objetos
      mover
  fin
```
 
</td>
 
</tr>

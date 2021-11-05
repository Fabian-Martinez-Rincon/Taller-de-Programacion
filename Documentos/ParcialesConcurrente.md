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
 
 [Programa Completo](https://github.com/Fabian-Martinez1/Taller-de-Programacion/blob/main/Parciales%20Concurrente/OtroParcialFecha2.ri)
 
</table>

<table>
<tr>
<td> RECOLECTOR </td> <td> JEFE </td><td> Asignaciones </td> <td> Areas </td>
</tr>
<tr>
<td>
 
```js
robots
  robot RECOLECTOR
  variables
    Flores, Papeles, id, idMin : numero
  comenzar
    RecibirMensaje(id,RF)
    RecorrerFlores(Flores)

    EnviarMensaje(id,RF)
    EnviarMensaje(Flores,RF)
    
    RecibirMensaje(idMin,RF)

    si ~(idMin = id)
      RecorrerPapeles(Papeles)
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
    
    repetir 3 {Busco el minimo}
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
{______________________________________________}
  proceso juntarF(ES flores:numero) 
  comenzar
    mientras HayFlorEnLaEsquina
      tomarFlor
      flores:=flores + 1
  fin
{______________________________________________}
  proceso juntarP (ES papeles:numero)
  comenzar
    mientras HayPapelEnLaEsquina
      tomarPapel
      papeles:=papeles + 1
  fin  
{______________________________________________}
  proceso RecorrerFlores(ES Flores:numero)
  variables
    av,ca:numero
  comenzar
    av := PosAv
    ca := PosCa
    repetir 9
      juntarF(Flores)
      mover
    juntarF(Flores)
    Pos(av,ca)
  fin
{______________________________________________}
  proceso RecorrerPapeles(ES Papeles:numero)
  variables
    av,ca:numero
  comenzar
    av := PosAv
    ca := PosCa
    repetir 9
      juntarP(Papeles)
      mover
    juntarP(Papeles)
    Pos(av,ca)
  fin
{______________________________________________}
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

[Programa Completo](https://github.com/Fabian-Martinez1/Taller-de-Programacion/blob/main/Parciales%20Concurrente/Parcial%201.ri)

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

 
 
</table>

![image](https://user-images.githubusercontent.com/55964635/139568404-7b27995d-cc88-4fdb-900c-8bc98be9d1bc.png)

 
[Programa Completo](https://github.com/Fabian-Martinez1/Taller-de-Programacion/blob/main/Parciales%20Concurrente/Parcial%202.ri)
 
![image](https://user-images.githubusercontent.com/55964635/139593996-6ad1db51-25b4-4dc1-bc6f-7ff228f3bc3a.png)

[Programa Completo](https://github.com/Fabian-Martinez1/Taller-de-Programacion/blob/main/Parciales%20Concurrente/Parcial%203.ri)

![image](https://user-images.githubusercontent.com/55964635/139596505-9e6db15e-b28a-48d9-96f1-05dc5cb12cec.png)

[Programa Completo](https://github.com/Fabian-Martinez1/Taller-de-Programacion/blob/main/Parciales%20Concurrente/Parcial4.ri)

![image](https://user-images.githubusercontent.com/55964635/139596863-a9466a41-4072-4d3e-a512-485da09b3d6b.png)

[Programa Completo](https://github.com/Fabian-Martinez1/Taller-de-Programacion/blob/main/Parciales%20Concurrente/Parcial5.ri)

![image](https://user-images.githubusercontent.com/55964635/139598426-32e90e1c-1609-4ddd-b512-44ab1bf35f88.png)

[Programa Completo](https://github.com/Fabian-Martinez1/Taller-de-Programacion/blob/main/Parciales%20Concurrente/Parcial6.ri)

![image](https://user-images.githubusercontent.com/55964635/139601708-de783c04-5af1-4579-ba03-b88e9163a7ac.png)

![image](https://user-images.githubusercontent.com/55964635/139601717-14515c6d-314e-4124-9c41-7c0b45ff26a1.png)

[Programa Completo](https://github.com/Fabian-Martinez1/Taller-de-Programacion/blob/main/Parciales%20Concurrente/Parcial10.ri)

![image](https://user-images.githubusercontent.com/55964635/139605763-35fa58dd-c790-4a58-b874-90f0ba2f6f53.png)

![image](https://user-images.githubusercontent.com/55964635/139607385-f3619fc5-eb58-4c7b-bf5f-d036abbcf4b3.png)

![image](https://user-images.githubusercontent.com/55964635/139607414-bef24d5e-ba83-4cb7-bd19-46797cb49881.png)

[Programa Completo](https://github.com/Fabian-Martinez1/Taller-de-Programacion/blob/main/Parciales%20Concurrente/Parcial16.ri)

![image](https://user-images.githubusercontent.com/55964635/139614826-3c64674d-36ea-4372-ac2f-1db6327e3ec4.png)

![image](https://user-images.githubusercontent.com/55964635/139614850-9c5c4c2d-0496-4cbe-a653-54a85c0b2361.png)

[Programa Completo](https://github.com/Fabian-Martinez1/Taller-de-Programacion/blob/main/Parciales%20Concurrente/Parcial21.ri)


![image](https://user-images.githubusercontent.com/55964635/139620754-bdd45a61-cf68-432c-852d-eff3a64958a0.png)

[Programa Completo](https://github.com/Fabian-Martinez1/Taller-de-Programacion/blob/main/Parciales%20Concurrente/Parcial27.ri)

![image](https://user-images.githubusercontent.com/55964635/140441420-71a48cd4-1412-4234-a022-5627ac7781ac.png)

![image](https://user-images.githubusercontent.com/55964635/140441455-ef971576-0b7f-4cb3-93b6-eb0b0b9097fb.png)

[Programa Completo](https://github.com/Fabian-Martinez1/Taller-de-Programacion/blob/main/Parciales%20Concurrente/Parcial7.ri)

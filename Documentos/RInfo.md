<h1 align="center"> R-INFO 🤖 </h1>


Indice
=================

<!--ts-->
   * [Operaciones_RInfo](#Operaciones_RInfo)
   * [Sintaxis](#Sintaxis)
   * [Recorridos](#Juntar_Flores)
   * [Carga de datos](#Rectangulo)
   * [Agregar al Final](#agregar_al_final)
   * [Jefe](#Jefe)
   * [Jefe 2](#Jefe_2)

Operaciones_RInfo
=================

| Sintaxis | Semántica |
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
  fin
areas
  ciudad: AreaC(1,1,100,100)
robots
  robot robot1
  comenzar
    Pos(2,1)
    x
  fin
variables
  robot_uno: robot1
comenzar
  AsignarArea (robot_uno,ciudad)
  Iniciar (robot_uno,1,1)
fin
```

Juntar_Flores
=============
```Ruby
proceso juntar_Flores (ES flor:numero)
  comenzar
    mientras (HayFlorEnLaEsquina)
      tomarFlor
      flor:= flor + 1
  fin
```

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

Jefe
====
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

Jefe_2
======
```pascal
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

Clases
======

https://user-images.githubusercontent.com/55964635/136906078-ad857b79-bc73-48aa-83dc-f879bd925b9e.mp4


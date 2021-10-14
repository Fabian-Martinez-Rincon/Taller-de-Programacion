<h1 align="center"> R-INFO 🤖 </h1>


Indice
=================

<!--ts-->
   * [Operaciones_RInfo](#Operaciones_RInfo)
   * [Sintaxis](#Sintaxis)
   * [Recorridos](#recorridos)
   * [Carga de datos](#cargar_Datos)
   * [Agregar al Final](#agregar_al_final)
   * [Insertar Elementos](#insertar_un_elemento)

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

Clases
======

https://user-images.githubusercontent.com/55964635/136906078-ad857b79-bc73-48aa-83dc-f879bd925b9e.mp4


<h1 align="center">Practica 3</h1>

```1)``` Realice un programa con 2 robots recolectores de flores (floreros) y 2 robots recolectores de papeles (papeleros).

Los floreros comparten área y tienen 5 intentos cada uno para juntar las flores de una esquina, dentro de dicha área, elegida al azar en cada intento. Del mismo modo, los
papeleros comparten área y tienen 3 intentos cada uno para juntar los papeles. En cada intento cada robot va a la esquina al azar, junta todos los elementos (flores o papeles según le corresponda) y vuelve a su esquina original. Al finalizar sus intentos cada robot debe acceder a la esquina (10, 10) y depositar los elementos recogidos de a uno. [Resolución](#Ejercicio_1)
- Area de floreros: (1,1) a (5,10)
- Area de papeleros: (6,1) y (10,9)
- Esquinas de inicio de floreros: (6,10) y (7,10)
- Esquinas de inicio de papeleros: (8,10) y (9,10)

```2)``` Realice un programa en el cual 2 robots corren una carrera. El recorrido realizado por cada uno es el que se muestra en la siguiente figura. Durante el recorrido el robot 1 debe juntar todas las flores que encuentre en los vértices de cada escalón, mientras que el robot 2 debe juntar todos los papeles que encuentre en los vértices de cada escalón. [Resolución](#Ejercicio_2)

Al finalizar deben informar la cantidad de elementos recogidos.

El robot 1 debe iniciar su recorrido en la esquina (1,1) y el robot 2 debe iniciar su recorrido en la esquina (31,1).

Al finalizar la carrera, un robot jefe (inicializando en la esquina (15,1)) debe informar qué robot llegó primero a la esquina central de su recorrido.

![image (3)](https://user-images.githubusercontent.com/55964635/139356500-eb817fb0-84b4-497d-9b6f-42a772f2f907.png)

```3)``` Realice un programa donde 4 robots colaboren para recoger todas las flores de una esquina indicada por un robot jefe, seleccionada de manera aleatoria dentro del cuadrante (2,2) y (10,10). Para ello el jefe determina inicialmente una esquina y los robots deben accederla, tomar ***de a una*** las  flores y volver a su posición inicial. Cuando los robots terminan el jefe deberá informar cuál de ellos logró recoger más flores. [Resolución](#Ejercicio_3)

Las esquinas de inicio de los robots deberán ser jefe (1,1) y robots (2,1), (3, 1), (4,1) y (5,1).

```4)``` Realice un programa en el que 4 robots mueven de a una todas las flores de la esquina (10,10) a la esquina (11,11). Para ello, cada robot que toma una flor de la esquina (10,10) la deposita en la esquina (11,11) y luego retorna a su esquina inicial. Cada robot que finaliza (o, sea, que detecta que la esquina (10,10) se ha vaciado) deberá avisar al robot coordinador que ha finalizado. Cuando todos los robots finalizaron, el robot coordinador deberá informar qué robot finalizó último y a continuación deberá recolectar todas las flores de la esquina (11,11). [Resolución](#Ejercicio_4)

El robot coordinador inicia en la esquina (1,1).

Los robots inician en las esquinas (9,9) (9,10) (9,11) y (9,12)

```b)``` Implemente una variante en la cual los robots luego de tomar cada flor de la esquina (10,10) vuelvan a su esquina inicial, pasen a la esquina (11,11) a depositarla y finalmente vuelvan a la esquina inicial.

```c)``` Analizar:
- ¿Cuál de las 2 soluciones maximiza la concurrencia?
- ¿Se podría resolver este problema sin que los robots deban regresar a su esquina inicial?

```5)``` Realice un programa en el que 4 robots juegan una carrera por avenidas diferentes: 4, 6, 8 y 10 respectivamente. Todos los robots inician en la calle 1.
Para poder avanzar, cada robot debe juntar un papel de una fuente de papeles localizada en la esquina (11,11), colocarlo en la esquina actual de su avenida y avanzar un paso.

Cuando la esquina fuente ya no tien más papeles, o cuando se haya complementado la avenida, deberán avisar al robot coordinador y este determinará el robot que llegó más lejos.

```6)``` Tres robots deben recorrer el perímetro de su cuadrante, como se indica a continuación:
- El robot 1 comienza en la esquina (2,2) y debe realizar un cuadrante de 6x6 juntando todas las flores que encuentre
- El robot 2 comienza en la esquina (5,5) y debe realizar un cuadrante de 10x10 juntando todas las flores y los papeles que encuentre.
- El robot 3 comienza en la esquina (9,9) y debe realizar un cuadrante de 7x7 juntando todos los papeles que encuentre

Cada robot que finalice su cuadrante deberá avisar al robot fiscalizador. Al recibir el aviso, el robot fiscalizador indicará inmediatamente una calle a la que deberá dirigirse el robot recolector, considerando que el robot que finalizó primero irá a la calle 20, el segundo a la 21 y el tercero a la 22.

Cuando los robots recolectores reciben un número de calle, deberán posicionarse en la avenida 1 de dicha calle, y avanzar a lo largo de la calle depositando en cada esquina un papel, una flor o ambos, según lo que cada robot haya juntado. El recorrido finalizará al completar la calle o vaciarse las bolsas.

```b)```Analizar (No es necesario implementar): ¿Cómo debera modificarse el ejercicio anterior si los robots recolectores no conocen de antemano el tamaño de su cuadrante (por ejemplo, porque lo calcula el fiscalizador de manera aleatoria)?

```c)``` Modifique el ejercicio anterior (6.a) para que ahora el robot fiscalizador espere a que todos los robots recolectores hayan completado sus cuadrantes antes de indicarles la calle que deberán recorrer.

<h1 align="center">Resoluciones</h1>

Ejercicio_1
===========

Ejercicio_2
===========

Ejercicio_3
===========

Ejercicio_4
===========

Ejercicio_4b
============

Ejercicio_5
===========

Ejercicio_6a
============

Ejercicio_6b
============

Ejercicio_6c
============

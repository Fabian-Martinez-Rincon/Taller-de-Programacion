<h1 align="center">Practica 2</h1>

```1)``` Dos robots compiten para ver cuál junta más flores. El primer robot recoge todas las flores de la avenida 1 entre las calles 1 y 10. El segundo robot recoge todas las flores de la avenida 2, entre las calles 11 y 20.

Al finalizar el recorrido, el robot que recogió mayor cantidad de flores debe informar la diferencia de flores que obtuvo respecto al robot perdedor (El que obtuvo menos flores).

Los robots inician en las esquinas (1,1 y 2,11) respectivamente.

```b)``` Modifiquen el ejercicio anterior, considerando que ahora habrá un robot fiscalizador, que será responsable de informar la diferencia de flores que obtuvo el ganador con respecto al perdedor. El robot fiscalizador se ubica en la esquina (2,1)

```c)``` Modifique el ejercicio anterior para que ahora participen 6 robots.
- Robot 1: Avenida 1, entre las calles 1 y 10.
- Robot 2: Avenida 2, entre las calles 11 y 20.
- Robot 3: Avenida 3, entre las calles 21 y 30.
- Robot 4: Avenida 4, entre las calles 31 y 40.
- Robot 5: Avenida 5, entre las calles 41 y 50.
- Robot 6: Avenida 6, entre las calles 51 y 60.

El fiscalizador deberá informar la cantidad de flores que juntó el robot ganador.

```d)``` Modifique el inciso anterior para que ahora el fiscalizador informe también, cuál fue el robot ganador.

```e)``` Analizar (No es necesario implementar): ¿Cómo se puede implementar el inciso 1.c sin robot fiscalizador?

- ¿Qué cantidad de robots participarán del juego?
- ¿Qué cantidad de mensajes deben enviarse?

```2)``` Realice un programa en el que 3 robots realizan una escalera de 4 escalones cada uno. Todos los escalones tienen un ancho fijo de 1, y un alto aleatorio entre 1 y 5. Al
finalizar el recorrido, cada robot deberá enviar al robot jefe la cantidad de escalones que tenían más flores que papeles. Una vez que los tres robots finalizaron, el robot jefe deberá informar la suma de las cantidades enviadas por los 3 robots.

- El robot jefe inicia en la esquina (1,1)
- El robot 1 inicia en la esquina (2,1)
- El robot 2 inicia en la esquina (7,1)
- El robot 3 inicia en la esquina (12,1)

```3)``` Realice un programa con 2 equipos:
- El equipo A, compuesto por los robots A1 y A2, debe juntar papeles de las primeras 20 esquinas de la calle 1
- El equipo B, compuesto por los robots B1 y B2, debe juntar flores de las primeras 20 esquinas de la calle 5

Los robots A1 y B1 deberán realizar las 10 primeras esquinas de su recorrido, y al finalizar avisarán a los robots de A2 y B2 respectivamente para que continúen con las siguientes 10 esquinas. El segundo robot de cada equipo debe informar la cantidad de elementos recogidos en las 20 esquinas. 

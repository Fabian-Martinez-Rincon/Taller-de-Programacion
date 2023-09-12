<div align="center">

[![contributions welcome](https://img.shields.io/badge/contributions-welcome-brightgreen.svg?style=flat)](https://github.com/Nomadiix/Taller-de-Programacion)
[![GitHub stars](https://img.shields.io/github/stars/Nomadiix/Taller-de-Programacion)](https://github.com/FabianMartinez1234567/Taller-de-Programacion/stargazers/)
[![GitHub repo size in bytes](https://img.shields.io/github/repo-size/Nomadiix/Taller-de-Programacion)](https://github.com/Nomadiix/Taller-de-Programacion)

<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&size=30&duration=1200&pause=1000&color=F7F123&center=true&width=435&lines=Taller de Programación"/>

 </div>

<a title="" href="https://cafecito.app/ei-materias"><img src="/Documentos/Cafecito.png" alt="" /></a>




<img src= 'https://i.gifer.com/origin/8c/8cd3f1898255c045143e1da97fbabf10_w200.gif' height="20" width="100%"> 

- [Clases Grabadas](https://drive.google.com/drive/folders/1FPR0cU_LpLG3NTRA6Q9EmkIbzBSK64Ao)
- Para R-INFO
  - [Visual Studio](https://code.visualstudio.com/download)
  - [R-INFO](/r-Info-2.9.jar)
- Para Java
  - [Java](https://www.java.com/es/)
  - [Java JDK](https://www.oracle.com/java/technologies/downloads/#jdk17-windows)
  - [Netbeans](https://netbeans.apache.org/)
- Para Pascal
  - Geany
- [🧾 Listas ](/Documentos/Listas.md)
- [📚 Vectores ](/Documentos/Vectores.md)
- [🌳 Arboles ](/Documentos/Arboles.md)
- [EJercicio Con Merge](/Pascal/Practica/Semana_3/11.pas)
- [Ejercicio Con Merge Acumulador](/Pascal/Practica/Semana_3/12.pas)
- [☕ Java (Teoria) ](/Documentos/Java.md)
- [☕ Java (Codigos)](/Documentos/Java2.md)
  - [Practica 1 ](/Documentos/Java_Practica1.md)
  - [Practica 2 ](/Documentos/Java_Practica2.md)
  - [Practica 3 ](/Documentos/Java_Practica3.md)
  - [Practica de Repaso ](/Documentos/Java_Practica4.md)
  - [Parciales Objetos](/Documentos/ParcialesObjetos.md)
- [🤖 R-Info ](/Documentos/RInfo.md)
  - [Practica 1 ](/Documentos/Rinfo_Practica1.md)
  - [Practica 2 ](/Documentos/Rinfo_Practica2.md)
  - [Practica 3 ](/Documentos/Rinfo_Practica3.md)
  - [Parciales Concurrente](/Documentos/ParcialesConcurrente.md)
- [Parciales Imperativo](/Documentos/ParcialesImperativo.md)
- [Parciales Teoricos](/Documentos/Teoria.md)
- [Programas](/Documentos/programas.md)
- [Finales](/Documentos/Finales.md)
- [Parciales Cuarentena](/Documentos/Parciales.md)

<img src= 'https://i.gifer.com/origin/8c/8cd3f1898255c045143e1da97fbabf10_w200.gif' height="20" width="100%">


## Final 14/03/2023

De los **tenistas** se desea conocer su nombre, cantidad de partidos ganados y los premios (en pesos) obtenidos en toda su carrera. De los **partidos** interesa conocer la fecha (un string), el lugar del partido y el resultado del mismo (solo interesa contabilizar la cantidad de sets ganados por lado). Además, interesa poder representar **partidos singles** (dos tenistas, uno contra otro) y **partidos de dobles** (cuatro tenistas, dos juegan contra otros dos).

Declare las clases, contructores, atributos y métodos que considere necesario sabiendo que:
- Un **tenista** deberia instanciarse con todos sus datos
- Un **partido** deberia instanciarse con la fecha, el lugar y todos sus participantes (dos tenistas en el caso de singles, cuatro en el caso de dobles). Inicialmente el partido tiene el resultado 0 a 0.
- Durante el desarrollo del partido interesa ir almacenando el resultado parcial del mismo. Para eso es necesario un método que permita registrar el resultado de cada set finalizado. Este método debe recibir como parámetro los juegos (games) obtenidos por lado (dos numeros) y actualizar el resultado del partido como corresponda. 
> Por ejemplo : recibiendo 6 y 4, deberia sumar un set ganado más para el primer lado. Asuma que no hay empate
- Un partido deberia saber si finalizo o no. EL partido finaliza cuando el/los tenista/s de un lado consigue/n ganar tres sets. Para esto, es necesario un método que resuelva un booleano indicando si el partido finalizo o no.
- Al finalizar un partido, se otorgan los premios al lado ganador. Para esto, implemente un método que reciba el premio en pesos y actualice el atributo partidos ganados y premios obtenidos de los tenistas que corresponda. 
> Asuma que el partido finalizado. Tenga en cuenta que:
- En el caso de los singles, todo el premio se lo lleva el jugador ganador. En el caso de dobles, el premio se reparte entre los tenistas del lado ganador. La reparación se lleva a cabo de manera proporcional al historial de partidos ganados de cada jugador:

Premio_jugador = Premio_total * (partidos_ganados_jugador / partidos_ganados_jugador + partidos_ganados_compañero)


2) Implemente una función main que intancie un partido de singles y uno de dobles. Registre resultados de sets a ambos partidos hasta que finalicen. Finalmente, otorgue el premio de $100.000 al partido singles y de $500.000 al de dobles.

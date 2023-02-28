<div align="center">

[![contributions welcome](https://img.shields.io/badge/contributions-welcome-brightgreen.svg?style=flat)](https://github.com/Nomadiix/Taller-de-Programacion)
[![GitHub stars](https://img.shields.io/github/stars/Nomadiix/Taller-de-Programacion)](https://github.com/FabianMartinez1234567/Taller-de-Programacion/stargazers/)
[![GitHub repo size in bytes](https://img.shields.io/github/repo-size/Nomadiix/Taller-de-Programacion)](https://github.com/Nomadiix/Taller-de-Programacion)
 </div>

<h1 align="center"> 💻Taller De Programacion  </h1>
<div align="center">
  <img src="https://media.giphy.com/media/tJqyalvo9ahykfykAj/giphy.gif"/>
 </div>

---


- [🧾 Listas ](/Documentos/Listas.md)
- [📚 Vectores ](/Documentos/Vectores.md)
- [🌳Arboles ](/Documentos/Arboles.md)
- [EJercicio Con Merge](https://github.com/Fabian-Martinez1/Taller-de-Programacion/blob/main/Pascal/Semana_3/11.pas)
- [Ejercicio Con Merge Acumulador](https://github.com/Fabian-Martinez1/Taller-de-Programacion/blob/main/Pascal/Semana_3/12.pas)
- [☕Java (Teoria) ](/Documentos/Java.md)
- [☕  Java (Codigos)](/Documentos/Java2.md)
  - [Practica 1 ](/Documentos/Java_Practica1.md)
  - [Practica 2 ](/Documentos/Java_Practica2.md)
  - [Practica 3 ](/Documentos/Java_Practica3.md)
  - [Practica de Repaso ](/Documentos/Java_Practica4.md)
- [🤖 R-Info ](/Documentos/RInfo.md)
  - [Practica 1 ](/Documentos/Rinfo_Practica1.md)
  - [Practica 2 ](/Documentos/Rinfo_Practica2.md)
  - [Practica 3 ](/Documentos/Rinfo_Practica3.md)
- [Parciales Concurrente](/Documentos/ParcialesConcurrente.md)
- [Parciales Imperativo](/Documentos/ParcialesImperativo.md)
- [Parciales Objetos](/Documentos/ParcialesObjetos.md)
- [Parciales Teoricos](/Documentos/Teoria.md)
- [Finales](/Documentos/Finales.md)
- [Programas](/Documentos/programas.md)
 
---

<div align="center">

  ## 💀 Estudiado para el final

  <img src="https://media.giphy.com/media/6i6DHjicGKMMHzws2a/giphy.gif"/>
</div>


---

La UNLP desea representar los diferentes subsidios (de estadias y de bienes) pedidos por sus investigadores. De todo subsidio se conoce: el nombre del investigador, el nombre de su plan de trabajo y la fecha de solicitud. Ademas:

- De los subsidios de estadia se conoce el lugar de destino, el costo en pasajes, la cantidad de dias de estadia y el monto de hotel por dia.
- De los subsidios de bienes se guardan todos los bienes solicitados (como maximo N). De cada bien se conoce: descripción, cantidad y costo por unidad.

`1` Genere las clases. Implemente constructores para iniciar los diferentes subsidios a partir de toda la información necesaria: tenga en cuenta que los subsidios de bienes deben iniciar sin bienes y deben permitir guardar un máximo de N bienes.

`2` Implemente todos los metodos necesarios, en las clases que corresponda, para:

- `a)` Agregar un bien a un subsidio de bienes.
- `b)` Devolver el monto toddal del subsidio, teniendo en cuenta las fórmulas 
  <br><br>
  `Monto_total_subsidio_estadia` = costo_pasajes + cantidad_dias_estadia * monto_hotel_por_dia <br>
  `Monto_total_subsidio_bienes` =  (Sumatoria) costo_final_bien_i donde <br>
  `costo_final_bien_i` = cantidad_bien_i * costo_por_unidad_bien_i
- `c)` devolver un String que represente el subsidio, siguiendo los ejemplos:

```
Subsidio estadia: "Nombre del investigador: ... Plan de trabajo: ... 
Fecha de solicitud: ... 
Monto total: ... Lugar de destino: ... Dias de estadia: ..."
```

```
Subsidio bienes: "Nombre del investigador: ... Plan de trabajo: ...
Fecha de solicitud: ... Monto total: ...
Descripción de los biene solicitados: descripción bien 1, descripción bien 2 ..."
```
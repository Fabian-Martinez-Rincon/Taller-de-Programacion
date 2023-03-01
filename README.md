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

  # 💀 Estudiado para el final

  <img src="https://media.giphy.com/media/6i6DHjicGKMMHzws2a/giphy.gif"/>
</div>


---

<h1 align="center"> Final Objetos Septiembre del 2022</h1>

La UNLP desea representar los diferentes subsidios (de estadias y de bienes) pedidos por sus investigadores. De todo subsidio se conoce: el nombre del investigador, el nombre de su plan de trabajo y la fecha de solicitud. Ademas:

- De los subsidios de estadia se conoce el lugar de destino, el costo en pasajes, la cantidad de dias de estadia y el monto de hotel por dia.
- De los subsidios de bienes se guardan todos los bienes solicitados (como maximo N). De cada bien se conoce: descripción, cantidad y costo por unidad.

`1` Genere las clases. Implemente constructores para iniciar los diferentes subsidios a partir de toda la información necesaria: tenga en cuenta que los subsidios de bienes deben iniciar sin bienes y deben permitir guardar un máximo de N bienes.

`2` Implemente todos los metodos necesarios, en las clases que corresponda, para:

- `a)` Agregar un bien a un subsidio de bienes.
- `b)` Devolver el monto total del subsidio, teniendo en cuenta las fórmulas 
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

`3)` Escriba un programa que instancie un subsidio de estadia y un subsidio de bienes, establezca todos los datos necesarios para cada uno de ellos y muestre por consola la representación String de cada uno.


### 📝Resolución


<details> <summary>Programa Principal</summary>

```java

```

</details>

<details> <summary>Subsidio</summary>

```java
public class abstract Subsidio{
  private String nombreInv;
  private String nombrePlan;
  private String fecha;

  public Subsidio(String nombreInv, String nombrePlan, String fecha){
    this.nombreInv = nombreInv;
    this.nombrePlan = nombrePlan;
    this.fecha = fecha;
  }
  public abstract double devolverMonto();
}
```

</details>

<details> <summary>Subsidio Estadia</summary>

```java
public class SubsidioEstadia extends Subsidio {
  private String destino;
  private double costoE;
  private Integer cantDias;
  private double diaHotel;
  
  public SubsidioEstadia(String destino, double costoE, Integer cantDias, double diaHotel, String nombreInv, String nombrePlan, String fecha){
      super(nombreInv, nombrePlan, fecha);
      this.destino = destino;
      this.costoE = costoE;
      this.cantDias = cantDias;
      this.diaHotel = diaHotel;
    }

  public double devolverMonto(){
    return this.costoE + (this.cantDias * this.diaHotel)
  }

}
```

</details>

<details> <summary>Subsidio Bienes</summary>

```java
public class SubsidioBienes extends Subsidio{
  private Bien[] bienes;
  private Integer dimF;
  private Integer dimL;

  public SubsidioBienes(Integer N,String nombreInv, String nombrePlan, String fecha ){
    super(nombreInv, nombrePlan, fecha);
    this.dimF = N;
    for (int i = 0; i < N; i++){
      this.bienes[i]=null
    }
    this.dimL = 0;
  }
  public void agregarBien(Bien bien){
    this.bienes[this.dimL] = bien;
    this.dimL++;
  }
  public double devolverMonto(){
    double total = 0;
    for (int i = 0; i < this.dimL; i++){
      total += this.bienes[i].costoFinal();
    }
    return total;
  }
}
```

</details>

<details> <summary>Bien</summary>

```java
public class Bien {
  private String descripcion;
  private Integer cantidad;
  private double costoU;

  public Bien(String descripcion, Integer cantidad, double costoU){
    this.descripcion = descripcion;
    this.cantidad = cantidad;
    this.costoU = costoU;
  }

  public double costoFinal(){
    return this.cantidad * this.costoU;
  }
}
```

</details>



<h1 align="center"> Final Imperativo del 9-8-2022</h1>

Un servicio de moto mensajería platense quiere procesar los pedidos entregados. 
De cada pedido se conoce: número del repartidor, dirección del retiro del pedido, dirección de entrega del pedido y monto a cobrar por el servicio de entrega. Se pide implementar un programa que:

- `a)` Lea los pedidos (finalizando con dirección de entrega ZZZ) y genere una estructura eficiente para la búsqueda por número de repartidor. La estructura debe contener para cada número de repartidor la cantidad de pedidos entregados por éste y el monto total cobrado por todos sus serviciós de entrega. <br>
A partir de la estructura generada en `a)`, realice módulos independientes para:
- `b)` Obtener la cantidad de repartidores que recaudaron un monto total que oscila entre dos valores ingresados.
- `c)` Imprimir en pantalla la información de aquellos repartidores cuyo número de repartidor oscila entre dos valores ingresados.
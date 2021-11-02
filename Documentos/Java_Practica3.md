<h1 align="center">Practica 3</h1>

```1)A)``` Agregar la clase Triángulo a la jerarquía de figuras vista en clase (paquete tema5 del proyecto). Triángulo debe heredar de Figura todo lo que es común y definir su constructor y sus atributos y métodos propios. Además debe redefinir el método toString. [Resolución](#Ejercicio_1a)

```B)``` De igual manera, agregar la clase Círculo a la jerarquía de figuras.

```C)``` Escriba un programa que instancie un triángulo, un círculo y un cuadrado, con información leída desde teclado. Luego muestre en consola el área y perímetro de cada uno y su representación en String

```2)``` Queremos representar la información de empleados de un club: jugadores y entrenadores.
- Cualquier empleado se caracteriza por su nombre y sueldo básico.
- Los jugadores son empleados y se caracterizan por el número de partidos jugados y el número de goles anotados.
- Los entrenadores son empleados y se caracterizan por la ciudad de campeonatos ganados.


```A)``` Implemente la jerarquía de clases, con los atributos de cada clase y métodos para obtener/modificar el valor de los mismos.

```B)``` Implemente constructores para los jugadores y entrenadores, que reciban toda la información necesaria para inicializar el objeto en cuestión.

```C)``` Cualquier empleado (jugador / entrenador) debe saber responder al mensaje calcularSueldoACobrar (que calcula y devuelve el sueldo a cobrar) pero de manera diferente:
- Para los jugadores: el sueldo a cobrar es el sueldo básico y si el promedio de goles por partido es superior a 0,5 se adciona un plus de otro sueldo básico.
- Para los entrenadores: el sueldo a cobrar es el sueldo básico al cual se le adiciona un plus por campeonatos ganados (5000$ so ha ganado entre 1 y 4 campeonatos; $30000 si ha ganado entre 5 y 10 campeonatos; 50000$ si ha ganado más de 10 campeonatos).

```D)``` Cualquier empleado debe responder al mensaje toString, que devuelve un String que lo representa. La representación de cualquier empleado está compuesta por su nombre y sueldo a cobrar.

```E)``` Escriba un programa principal que instancie un jugador y un entrenador con datos leídos desde teclado. Pruebe el correcto funcionamiento de cada método implementado. 

NOTA: Tomar como base la clase Entrenador definida con anterioridad

```3)A)``` Modele e implemente las clases para el siguiente problema. Una garita de seguridad quiere identificar los distintos tipos de personas que entran a un barrio cerrado. Al barrio pueden entrar personas, que se caracterizan por su nombre, DNI y edad. Además pueden entrar trabajadores, estos son personas que se caracterizan además por la tarea que realizan en el predio.

Implemente constructores, getters y setters para las clases. Además tanto las personas como los trabajadores deben responder al mensaje toString(). A continuación se ejemplifica la representación a retornar por cada uno:

- Personas: "Mi nombre es ***Mauro***, mi DNI ***11203737*** y tengo ***70*** años".
-  Trabajadores: "Mi nombre es ***Mauro***, mi DNI es ***11203737*** y tengo ***70*** años. Soy ***Corta césped***." 

```B)``` Genere un programa que instancie una persona y un trabajador con datos leídos de teclado y muestre la representación de cada uno en consola. 

NOTA: reutilice la clase Persona (tema 2)

```4)``` Dada la siguiente jerarquía, indique qué imprime el programa.

![image](https://user-images.githubusercontent.com/55964635/136715701-561a1f33-024f-4c97-ba9f-bffdad257fb5.png)

```Java
public class QueImprime {
 public static void main(String[] args) {
 ClaseC objC=new ClaseC();
 System.out.println(objC.cinco());
 System.out.println(objC.uno());
 }
}
```

```5)``` Un objeto visor de figuras se encarga de mostrar en consola cualquier figura que reciba y también mantiene cuántas figuras mostró. Analice y ejecute el siguiente programa y responda: ¿Qué imprime? ¿Por qué?

![image](https://user-images.githubusercontent.com/55964635/136715772-a0df89e2-6dc2-4f38-b56e-8936bf4777d5.png)


```6)``` Modificar la clase Visor Figuras: ahora debe permitir guardar las figuras a mostrar (a lo sumo 5) y también mostrar todas las figuras guardadas en forma conjunta. Usar la siguiente estructura.

![image](https://user-images.githubusercontent.com/55964635/136715786-4f8a5a30-3498-4372-85ec-eaf5601e5d31.png)

Luego realice un programa que instancie un visor, guarde dos cuadrados y un rectángulo 
en el visor y por último haga que el visor muestre sus figuras.


<h1 align="center">Teoria</h1>
<h1 align="center">Resoluciones</h1>

Ejercicio_1a
============
```java
package tema5;

public class Triangulo extends Figura {

    private double lado1;
    private double lado2;
    private double lado3;

    public Triangulo(double lado1, double lado2, double lado3, String unColorRelleno, String unColorLinea) {
        super(unColorRelleno, unColorLinea);
        this.lado1 = lado1;
        this.lado2 = lado2;
        this.lado3 = lado3;
    }

    public double getLado1() {
        return lado1;
    }

    public double getLado2() {
        return lado2;
    }

    public double getLado3() {
        return lado3;
    }

    public void setLado1(double lado1) {
        this.lado1 = lado1;
    }

    public void setLado2(double lado2) {
        this.lado2 = lado2;
    }

    public void setLado3(double lado3) {
        this.lado3 = lado3;
    }

    @Override
    public double calcularPerimetro() {
        return (this.getLado1() + this.getLado2() + this.getLado3());
    }

    @Override
    public double calcularArea() {
        double s = this.calcularPerimetro() / 2;
        double area = Math.sqrt(s * (s - this.getLado1()) * (s - this.getLado2()) * (s - this.getLado3()));

        return area;
    }

    @Override
    public String toString() {
        String aux = super.toString()
                + " - Lado 1: " + this.getLado1()
                + " - Lado 2: " + this.getLado2()
                + " - Lado 3: " + this.getLado3();
        return aux;
    }
}
```

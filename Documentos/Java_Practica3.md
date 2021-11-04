<h1 align="center">Practica 3</h1>

```1)A)``` Agregar la clase Triángulo a la jerarquía de figuras vista en clase (paquete tema5 del proyecto). Triángulo debe heredar de Figura todo lo que es común y definir su constructor y sus atributos y métodos propios. Además debe redefinir el método toString. [Resolución](#Ejercicio_1a)

```B)``` De igual manera, agregar la clase Círculo a la jerarquía de figuras.  [Resolución](#Ejercicio_1b)

```C)``` Escriba un programa que instancie un triángulo, un círculo y un cuadrado, con información leída desde teclado. Luego muestre en consola el área y perímetro de cada uno y su representación en String. [Resolución](#Ejercicio_1c)

```2)``` Queremos representar la información de empleados de un club: jugadores y entrenadores.[Resolución](#Ejercicio_2)
- Cualquier empleado se caracteriza por su nombre y sueldo básico.
- Los jugadores son empleados y se caracterizan por el número de partidos jugados y el número de goles anotados.
- Los entrenadores son empleados y se caracterizan por la ciudad de campeonatos ganados.


```A)``` Implemente la jerarquía de clases, con los atributos de cada clase y métodos para obtener/modificar el valor de los mismos.

```B)``` Implemente constructores para los jugadores y entrenadores, que reciban toda la información necesaria para inicializar el objeto en cuestión.

```C)``` Cualquier empleado (jugador / entrenador) debe saber responder al mensaje calcularSueldoACobrar (que calcula y devuelve el sueldo a cobrar) pero de manera diferente:
- Para los jugadores: el sueldo a cobrar es el sueldo básico y si el promedio de goles por partido es superior a 0,5 se adciona un plus de otro sueldo básico.
- Para los entrenadores: el sueldo a cobrar es el sueldo básico al cual se le adiciona un plus por campeonatos ganados (5000$ so ha ganado entre 1 y 4 campeonatos; $30000 si ha ganado entre 5 y 10 campeonatos; 50000$ si ha ganado más de 10 campeonatos).

```D)``` Cualquier empleado debe responder al mensaje toString, que devuelve un String que lo representa. La representación de cualquier empleado está compuesta por su nombre y sueldo a cobrar.

```E)``` Escriba un programa principal que instancie un jugador y un entrenador con datos leídos desde teclado. Pruebe el correcto funcionamiento de cada método implementado. [Resolución](#Ejercicio_2e)

NOTA: Tomar como base la clase Entrenador definida con anterioridad

```3)A)``` Modele e implemente las clases para el siguiente problema. Una garita de seguridad quiere identificar los distintos tipos de personas que entran a un barrio cerrado. Al barrio pueden entrar personas, que se caracterizan por su nombre, DNI y edad. Además pueden entrar trabajadores, estos son personas que se caracterizan además por la tarea que realizan en el predio. [Resolución](#Ejercicio_3)

Implemente constructores, getters y setters para las clases. Además tanto las personas como los trabajadores deben responder al mensaje toString(). A continuación se ejemplifica la representación a retornar por cada uno:

- Personas: "Mi nombre es ***Mauro***, mi DNI ***11203737*** y tengo ***70*** años".
-  Trabajadores: "Mi nombre es ***Mauro***, mi DNI es ***11203737*** y tengo ***70*** años. Soy ***Corta césped***." 

```B)``` Genere un programa que instancie una persona y un trabajador con datos leídos de teclado y muestre la representación de cada uno en consola. [Resolución](#Ejercicio_3b)

NOTA: reutilice la clase Persona (tema 2)

```4)``` Dada la siguiente jerarquía, indique qué imprime el programa. [Resolución](#Ejercicio_4)

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

```5)``` Un objeto visor de figuras se encarga de mostrar en consola cualquier figura que reciba y también mantiene cuántas figuras mostró. Analice y ejecute el siguiente programa y responda: ¿Qué imprime? ¿Por qué? [Resolución](#Ejercicio_5)

![image](https://user-images.githubusercontent.com/55964635/136715772-a0df89e2-6dc2-4f38-b56e-8936bf4777d5.png)


```6)``` Modificar la clase Visor Figuras: ahora debe permitir guardar las figuras a mostrar (a lo sumo 5) y también mostrar todas las figuras guardadas en forma conjunta. Usar la siguiente estructura. [Resolución](#Ejercicio_6)

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
```Java
package tema5;

public abstract class Figura {
    private String colorRelleno;
    private String colorLinea;
   
    public Figura(String unCR, String unCL){
        setColorRelleno(unCR);
        setColorLinea(unCL);
    }
    
    public String toString(){
        String aux = "Area: " + this.calcularArea() +
                     " - CR: "  + getColorRelleno() + 
                      " - CL: " + getColorLinea();             
             return aux;
       }

    
    public String getColorRelleno(){
        return colorRelleno;       
    }
    public void setColorRelleno(String unColor){
        colorRelleno = unColor;       
    }
    public String getColorLinea(){
        return colorLinea;       
    }
    public void setColorLinea(String unColor){
        colorLinea = unColor;       
    }
    
    public abstract double calcularArea();
    public abstract double calcularPerimetro();
     
}
```

Ejercicio_1b
============
```Java
package tema5;

public class Circulo extends Figura {
    private double radio;

    public Circulo(double radio, String unColorRelleno, String unColorLinea) {
        super(unColorRelleno, unColorLinea);
        this.radio = radio;
    }

    public double getRadio() {
        return radio;
    }

    public void setRadio(double radio) {
        this.radio = radio;
    }    

    @Override
    public double calcularArea() {
        return (Math.PI*(Math.pow(this.radio, 2)));
    }

    @Override
    public double calcularPerimetro() {
        return (2 * Math.PI * this.radio);
    }
    
    @Override
    public String toString() {
        String aux = super.toString()
                + " - Radio: " + this.getRadio();
        return aux;
    }
}
```

Ejercicio_1c
============
```Java
package practica3pro;

import PaqueteLectura.Lector;

/*1) C- Escriba un programa que instancie un triángulo, un círculo y un cuadrado, con
información leída desde teclado. Luego muestre en consola el área y perímetro de cada
uno y su representación en String.
 */
public class Ej01Figuras {

    public static void main(String[] args) {
        System.out.println("Ingrese el lado 1 del triangulo: ");
        double lado1 = Lector.leerDouble();
        System.out.println("Ingrese el lado 2 del triangulo: ");
        double lado2 = Lector.leerDouble();
        System.out.println("Ingrese el lado 3 del triangulo: ");
        double lado3 = Lector.leerDouble();
        System.out.println("Ingrese el color de relleno del triangulo: ");
        String colorRelleno = Lector.leerString();
        System.out.println("Ingrese el color de linea del triangulo: ");
        String colorLinea = Lector.leerString();
        Triangulo triangulo = new Triangulo(lado1, lado2, lado3, colorRelleno, colorLinea);

        System.out.println("Ingrese el radio del circulo: ");
        double radio = Lector.leerDouble();
        System.out.println("Ingrese el color de relleno del circulo: ");
        colorRelleno = Lector.leerString();
        System.out.println("Ingrese el color de linea del circulo: ");
        colorLinea = Lector.leerString();
        Circulo circulo = new Circulo(radio, colorRelleno, colorLinea);

        System.out.println("Ingrese el lado del cuadrado: ");
        double lado = Lector.leerDouble();
        System.out.println("Ingrese el color de relleno del cuadrado: ");
        colorRelleno = Lector.leerString();
        System.out.println("Ingrese el color de linea del cuadrado: ");
        colorLinea = Lector.leerString();
        Cuadrado cuadrado = new Cuadrado(lado, colorRelleno, colorLinea);

        System.out.println("Area triangulo: " + triangulo.calcularArea() + " - Perimetro triangulo: " + triangulo.calcularPerimetro());
        System.out.println("Area circulo: " + circulo.calcularArea() + " - Perimetro circulo: " + circulo.calcularPerimetro());
        System.out.println("Area cuadrado: " + cuadrado.calcularArea() + " - Perimetro cuadrado: " + cuadrado.calcularPerimetro());
        
        System.out.println("Triangulo: " + triangulo.toString());
        System.out.println("Circulo: " + circulo.toString());
        System.out.println("Cuadrado: " + cuadrado.toString());
    }
}
```

Ejercicio_2
===========
```Java
package practica3pro;

public class Jugador extends Empleado {

    private int cantPartidosJugados;
    private int cantGolesAnotados;

    public Jugador(int cantPartidosJugados, int cantGolesAnotados, String nombre, double sueldoBasico) {
        super(nombre, sueldoBasico);
        this.cantPartidosJugados = cantPartidosJugados;
        this.cantGolesAnotados = cantGolesAnotados;
    }

    public int getCantPartidosJugados() {
        return cantPartidosJugados;
    }

    public void setCantPartidosJugados(int cantPartidosJugados) {
        this.cantPartidosJugados = cantPartidosJugados;
    }

    public int getCantGolesAnotados() {
        return cantGolesAnotados;
    }

    public void setCantGolesAnotados(int cantGolesAnotados) {
        this.cantGolesAnotados = cantGolesAnotados;
    }

    @Override
    public double calcularSueldoACobrar() {
        double promedio = this.getCantGolesAnotados() / this.getCantPartidosJugados();
        if (promedio > 0.5) {
            return 2 * this.getSueldoBasico();
        }
        return this.getSueldoBasico();
    }
}
```

```Java
package practica3pro;

public class Entrenador extends Empleado {

    private int cantCampeonatosGanados;

    public Entrenador(int cantCampeonatosGanados, String nombre, double sueldoBasico) {
        super(nombre, sueldoBasico);
        this.cantCampeonatosGanados = cantCampeonatosGanados;
    }

    public int getCantCampeonatosGanados() {
        return cantCampeonatosGanados;
    }

    public void setCantCampeonatosGanados(int cantCampeonatosGanados) {
        this.cantCampeonatosGanados = cantCampeonatosGanados;
    }

    @Override
    public double calcularSueldoACobrar() {
        int plus = 0;
        if (this.getCantCampeonatosGanados() >= 1 && this.getCantCampeonatosGanados() <= 4) {
            plus = 5000;
        } else if (this.getCantCampeonatosGanados() >= 5 && this.getCantCampeonatosGanados() <= 10) {
            plus = 30000;
        } else if (this.getCantCampeonatosGanados() > 10) {
            plus = 50000;
        }
        return (this.getSueldoBasico() + plus);
    }
}
```
```Java
package practica3pro;

public abstract class Empleado {

    private String nombre;
    private double sueldoBasico;

    public Empleado(String nombre, double sueldoBasico) {
        this.nombre = nombre;
        this.sueldoBasico = sueldoBasico;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public double getSueldoBasico() {
        return sueldoBasico;
    }

    public void setSueldoBasico(double sueldoBasico) {
        this.sueldoBasico = sueldoBasico;
    }

    public abstract double calcularSueldoACobrar();

    @Override
    public String toString() {
        return "Nombre: " + this.getNombre() + ", sueldo a cobrar: " + this.calcularSueldoACobrar();
    }
}

```
Ejercicio_2e
============
```Java
package practica3pro;

//2) E- Escriba un programa principal que instancie un jugador y un entrenador con datos leídos desde teclado. Pruebe el correcto funcionamiento de cada método implementado.
import PaqueteLectura.Lector;

public class Ej02Empleados {

    public static void main(String[] args) {

        System.out.println("Ingrese el nombre del jugador: ");
        String nombre = Lector.leerString();
        System.out.println("Ingrese el sueldo basico del jugador: ");
        int sueldoBasico = Lector.leerInt();
        System.out.println("Ingrese la cantidad de partidos jugados: ");
        int cantPartidosJugados = Lector.leerInt();
        System.out.println("Ingrese la cantidad de goles anotados: ");
        int cantGolesAnotados = Lector.leerInt(); 

        Jugador jugador = new Jugador(cantPartidosJugados, cantGolesAnotados, nombre, sueldoBasico);

        System.out.println("Ingrese el nombre del entrenador: ");
        nombre = Lector.leerString();
        System.out.println("Ingrese el sueldo basico del entrenador: ");
        sueldoBasico = Lector.leerInt();
        System.out.println("Ingrese la cantidad de campeonatos ganados: ");
        int cantCampeonatosGanados = Lector.leerInt();
        
        Entrenador entrenador = new Entrenador(cantCampeonatosGanados, nombre, sueldoBasico);
        
        System.out.println("JUGADOR: " + jugador.toString());
        System.out.println("ENTRENADOR: " + entrenador.toString());
    }
}
```

Ejercicio_3
===========
```Java
package practica3pro;

public class Persona {
    private String nombre;
    private int dni;
    private int edad;

    public Persona(String nombre, int dni, int edad) {
        this.nombre = nombre;
        this.dni = dni;
        this.edad = edad;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getDni() {
        return dni;
    }

    public void setDni(int dni) {
        this.dni = dni;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    @Override
    public String toString() {
        return "Mi nombre es " + this.getNombre() + ", mi DNI es " + this.getDni() + " y tengo " + this.getEdad() + " anios.";
    }
}
```
```Java
package practica3pro;

public class Trabajador extends Persona{
    private String tarea;

    public Trabajador(String tarea, String nombre, int dni, int edad) {
        super(nombre, dni, edad);
        this.tarea = tarea;
    }

    public String getTarea() {
        return tarea;
    }

    public void setTarea(String tarea) {
        this.tarea = tarea;
    }

    @Override
    public String toString() {
        return super.toString() + " Soy " + this.getTarea();
    }  
}
```

Ejercicio_3b
============
```Java
package practica3pro;

//3) B- Genere un programa que instancie una persona y un trabajador con datos leídos de teclado y muestre la representación de cada uno en consola.
import PaqueteLectura.Lector;

public class Ej03Personas {

    public static void main(String[] args) {

        System.out.println("Ingrese el nombre de la persona: ");
        String nombre = Lector.leerString();
        System.out.println("Ingrese su dni: ");
        int dni = Lector.leerInt();
        System.out.println("Ingrese su edad: ");
        int edad = Lector.leerInt();

        Persona persona = new Persona(nombre, dni, edad);

        System.out.println("Ingrese el nombre del trabajador: ");
        nombre = Lector.leerString();
        System.out.println("Ingrese su dni: ");
        dni = Lector.leerInt();
        System.out.println("Ingrese su edad: ");
        edad = Lector.leerInt();
        System.out.println("Ingrese la tarea que realiza en el predio: ");
        String tarea = Lector.leerString();

        Trabajador trabajador = new Trabajador(tarea, nombre, dni, edad);

        System.out.println(persona.toString());
        System.out.println(trabajador.toString());

    }

}
```

Ejercicio_4
===========
<table>
<tr>
<td> Clase A </td> <td> Clase B </td><td> Clase C </td> <td> Principal</td>
</tr>
<tr>
<td>
 
```Java
package practica3pro;

public class ClaseA {
    public int dos(){
    return 2;
    
    }
 
    public int tres(){
        return this.dos() + this.siete();
    }
 
    public int siete(){
        return 9;
    }
}
```
</td>
<td>
 

```Java
package practica3pro;

public class ClaseB extends ClaseA{
 
    public int dos(){
        return 5;
    }
 
    public int cuatro(){
        return this.dos() + super.tres(); 
    }
 
    public int seis(){
        return this.dos();
    }
}

```
</td>
 <td>
  
```Java
package practica3pro;

public class ClaseC extends ClaseB{
 
    public int uno(){
        return this.cuatro();
    }
 
    public int dos(){
        return 9;
    }
 
    public int cinco(){
        return super.seis();
    }  
}
```
</td>
 
<td>
 
```Java
 package practica3pro;

public class Ej04QueImprime { 

    public static void main(String[] args) {
        ClaseC objC = new ClaseC();
        System.out.println(objC.cinco());  // 9
        System.out.println(objC.uno());    // 21
    }
}
 ```
 
</td>
</tr>
 
</table>


Ejercicio_5
===========
<table>
<tr>
<td> 1 </td> <td> 2 </td>
</tr>
<tr>
<td>
 
```Java
package practica3pro;

public class VisorFiguras {

    private int mostradas;

    public VisorFiguras() {
        mostradas = 0;
    }

    public void mostrar(Figura f) {
        System.out.println(f.toString());
        mostradas++;
    }

    public int getMostradas() {
        return mostradas;
    }

}
```
</td>
<td>
 

```Java
package practica3pro;

public class Ej05VisorFiguras {

    public static void main(String[] args) {
        
        VisorFiguras visor = new VisorFiguras();
        
        Cuadrado c1 = new Cuadrado(10, "Violeta", "Rosa");
        Rectangulo r = new Rectangulo(20, 10, "Azul", "Celeste");
        Cuadrado c2 = new Cuadrado(30, "Rojo", "Naranja");
        
        visor.mostrar(c1);
        visor.mostrar(r);
        visor.mostrar(c2);
        
        System.out.println(visor.getMostradas());
    }
}
```
 
</td>
</tr>
</table>


 Ejercicio_6
 ===========
 <table>
<tr>
<td> 1 </td> <td> 2 </td>
</tr>
<tr>
<td>
 
```Java
package practica3pro;

public class VisorFigurasModificado {

    private final int dimF = 5;
    private int guardadas;
    private Figura[] vector;

    public VisorFigurasModificado() {
        this.guardadas = 0;
        this.vector = new Figura[dimF];
        for (int i = 0; i < this.dimF; i++) {
            this.vector[i] = null;
        }
    }

    public void guardar(Figura f) {
        if (this.quedaEspacio()) {
            this.vector[guardadas] = f;
            this.guardadas++;
        }
    }

    public boolean quedaEspacio() {
        return (this.getGuardadas() < this.dimF);
    }

    public void mostrar() {
        for (int i = 0; i < this.getGuardadas(); i++) {
            System.out.println(this.vector[i].toString());
        }
    }

    public int getGuardadas() {
        return guardadas;
    }

}

```
</td>
<td>
 

```Java
package practica3pro;

//Luego realice un programa que instancie un visor, guarde dos cuadrados y un rectángulo en el visor y por último haga que el visor muestre sus figuras.

public class Ej06VisorFigurasModificado {

    public static void main(String[] args) {
        
        VisorFigurasModificado visor = new VisorFigurasModificado();
        Cuadrado c1 = new Cuadrado(10, "Violeta", "Rosa");
        Rectangulo r = new Rectangulo(20, 10, "Azul", "Celeste");
        Cuadrado c2 = new Cuadrado(30, "Rojo", "Naranja");
        
        visor.guardar(c1);
        visor.guardar(r);
        visor.guardar(c2);
        
        visor.mostrar();
       
    }
    
}

```
 
</td>
</tr>
</table>

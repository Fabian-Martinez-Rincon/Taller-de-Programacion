<h1 align="center">Practica 2</h1>
<h1 align="center">Primera Parte</h1>

```1)a)```  Definir una clase para representar triángulos. Un triángulo se caracteriza por el tamaño de sus 3 lados (double), el color de relleno (String) y el color de línea (String). El triángulo debe saber:

- Devolver/modificar el valor de cada uno de sus atrivutos (métodos get# y set#)
-  Calcular el área y devolverla (método calcularArea)
-  Calcular el perímetro y devolverlo (método calcularPerimetro)

![image](https://user-images.githubusercontent.com/55964635/136681503-9d700939-02f9-45ca-8200-4a5ab9d490bc.png)

```b)```  Realizar un programa principal que instancie un triángulo, le cargue información leída desde teclado e informe en consola el perímetro y el área.

```2)a)``` Definir una clase para representar balanzas comerciales (para ser utilizadas en verdulerías, carnicerías, etc). Una balanza comercial sólo mantiene el monto y la cantidad de items correspondientes a la compra actual (es decir, no almacena los ítems de la compra). La balanza debe responder a los siguientes mensajes:
-  iniciarCompra(): inicializa el monto y cantidad de ítems de la compra actual. 
-   RegistrarProducto(pesoEnKg, precioPorKg): recibe el peso en kg del ítem comprado y su precio por kg, debiendo realizar las actualizaciones en el estado de la balanza
-   DevolverMontoAPagar(): retorna el monto de la compra actual.
-   DevolverResumenDeCompra(): retorna un String del siguiente estilo “Total a pagar X por la compra de Y productos” , donde X es el monto e Y es la cantidad de ítems de la compra. 

```b)```  Genere un programa principal que cree una balanza e inicie una compra. Lea información desde teclado correspondiente a los ítems comprados (peso en kg y precio 
por kg) hasta que se ingresa uno con peso 0. Registre cada producto en la balanza. Al finalizar, informe el resumen de la compra. 

```3)a)``` Definir una clase para representar entrenadores de un club de fútbol. Un entrenador se caracteriza por su nombre, sueldo básico y la cantidad de campeonatos ganados.
- Defina métodos para obtener/modificar el valor de cada atributo.
-  Defina el método calcularSueldoACobrar que calcula y devuelve el sueldo a cobrar por el entrenador. El sueldo se compone del sueldo básico, al cual se le adiciona un plus por 
campeonatos ganados (5000$ si ha ganado entre 1 y 4 campeonatos; $30.000 si ha ganado entre 5 y 10 campeonatos; 50.000$ si ha ganado más de 10 campeonatos).

```b)``` Realizar un programa principal que instancie un entrenador, cargándole datos leídos desde teclado. Pruebe el correcto funcionamiento de cada método implementado.

```4)a)```  Generar una clase para representar círculos. Los círculos se caracterizan por su radio (double), el color de relleno (String) y el color de línea (String). El círculo debe saber:
-  Devolver/modificar el valor de cada uno de sus atributos (get# y set#)
-  Calcular el área y devolverla. (método calcularArea)
-  Calcular el perímetro y devolverlo. (método calcularPerimetro)

NOTA: la constante PI es Math.PI

```b)```  Realizar un programa principal que instancie un círculo, le cargue información leída de teclado e informe en consola el perímetro y el área.

```5)a)``` Modifique el ejercicio 2-A. Ahora la balanza debe poder generar un resumen de compra más completo. Para eso agregue a la balanza la característica resumen (String). Modifique los métodos:
-  iniciarCompra para que además inicie el resumen en el String vacío.
-  registrarProducto para que reciba un objeto Producto (que se caracteriza por peso en kg y descripción) y su precio por kg. La operación debe realizar las actualizaciones en monto /cantidad de ítems y adicionar al resumen (string) la descripción y el monto pagado por este producto. 
-  devolverResumenDeCompra() para que retorne un String del siguiente estilo: “Naranja 100 pesos – Banana 40 pesos – Lechuga 50 pesos – Total a pagar 190 pesos por la compra de 3 productos” . La sección subrayada es el contenido de resumen.

```
Realice las modificaciones necesarias en el programa principal solicitado en 2-B para corroborar el funcionamiento de la balanza. 
NOTA: dispone en la carpeta tema 3 de la clase Producto ya implementada. Para adicionar la información del producto recibido al resumen use concatenación de Strings (operación +). 
```


<h1 align="center">Segunda Parte</h1>

```1)a)i)``` Defina constructores para la clase Triángulo (definida anteriormente): el primer constructor debe recibir un valor para cada lado y para los colores de línea y relleno; el segundo constructor no debe poseer parámetros ni código (constructor nulo). 

```ii)``` Realice un programa que instancie un triángulo mediante los distintos constructores.

```1)b)i)``` Defina constructores para la clase Círculo (definida anteriormente): el primer constructor debe recibir un valor para el radio y para los colores de línea y relleno; el segundo constructor no debe poseer parámetros ni código (constructor nulo).

```ii)```  Realice un programa que instancie un círculo mediante los distintos constructores.

```2)a)``` Defina un constructor para la clase Entrenador (definida anteriormente) que reciba los datos necesarios (nombre, sueldo básico, cantidad de campeonatos ganados). Además defina un constructor nulo. 

```ii)``` Realice un programa que instancie un entrenador mediante el primer constructor.

```3)a)``` Modifique la clase Libro (carpeta tema 4) para ahora considerar que el primer autor es un objeto instancia de la clase Autor. Implemente la clase Autor, considerando que éstos se caracterizan por nombre y biografía. El autor debe poder devolver/modificar el valor de sus atributos.

![image](https://user-images.githubusercontent.com/55964635/136683216-6ee5a386-e914-4411-959a-4be3ea74b6bb.png)

```b)```  Modifique el programa ppal. (carpeta tema 4) para instanciar un libro con su autor, considerando las modificaciones realizadas en A). Los datos se ingresan por teclado.

```4)A)``` Definir una clase para representar micros. Un micro conoce su patente, destino, hora salida, el estado de sus 20 asientos (es decir si está o no ocupado) y la cantidad de asientos ocupados al momento. Lea detenidamente a) y b) y luego implemente

```a)``` Implemente un constructor que permita iniciar el micro con una patente, un destino y una hora de salida (recibidas por parámetro) y sin pasajeros.

```b)``` Implemente metodos para:

```
i. devolver/modificar patente, destino y hora de salida
ii. devolver la cantidad de asientos ocupados
iii. devolver si el micro está lleno
iv. validar un número de asiento recibido como parámetro (es decir, devolver si está 
en rango o no)
v. devolver el estado de un nro. de asiento válido recibido como parámetro
vi. ocupar un nro. de asiento válido recibido como parámetro
vii. liberar un nro. de asiento válido recibido como parámetro
viii. devolver el nro. del primer asiento libre
```
```4)B)```Realice un programa que cree un micro con patente “ABC123”, destino “Mar del Plata” y hora de salida 5:00. Cargue pasajeros al micro de la siguiente manera. Leer nros. de asientos desde teclado que corresponden a pedidos de personas. La lectura finaliza cuando se ingresa el nro. de asiento -1 o cuando se llenó el micro. Para cada nro. de asiento leído debe: validar el nro; en caso que esté libre, ocuparlo e informar a la persona el éxito de la operación; en caso que esté ocupado informar a la persona la situación y mostrar el nro. del primer asiento libre. Al finalizar, informe la cantidad de asientos ocupados del micro.

```5)A)```Definir una clase para representar flotas de micros. Una flota se caracteriza por conocer a los micros que la componen (a lo sumo 15). Defina un constructor para crear 
una flota vacía (sin micros). Implemente métodos para:

```
i. devolver si la flota está completa (es decir, si tiene 15 micros o no).
ii. agregar a la flota un micro recibido como parámetro.
iii. eliminar de la flota el micro con patente igual a una recibida como parámetro, y 
retornar si la operación fue exitosa. 
iv. buscar en la flota un micro con patente igual a una recibida como parámetro y 
retornarlo (en caso de no existir dicho micro, retornar null).
v. buscar en la flota un micro con destino igual a uno recibido como parámetro y 
retornarlo (en caso de no existir dicho micro, retornar null).
```
![image](https://user-images.githubusercontent.com/55964635/136705867-5a29f61c-3889-4c05-951e-69cd591aa528.png)


```B``` Genere un programa que cree una flota vacía. Cargue micros (sin pasajeros) a la flota con información leída desde teclado (hasta que se ingresa la patente “ZZZ000” o hasta completar la flota). Luego lea una patente y elimine de la flota el micro con esa patente; busque el micro con dicha patente para comprobar que ya no está en la flota. Para finalizar, lea un destino e informe la patente del micro que va a dicho destino.

<h1 align="center">Teoria</h1>
<h1 align="center">Resoluciones</h1>

Ejercicio_1
===========
```Java
package practica2;

public class Triangulo2 {
    
    private double lado1;
    private double lado2;
    private double lado3;
    private String colorRelleno;
    private String colorLinea;
   
    public double calcularArea(){
        double s = calcularPerimetro()/2;
        double area = Math.sqrt(s*(s - this.lado1)*(s - this.lado2)*(s - this.lado3));
        
        return area;
    }
    public double calcularPerimetro(){
        return (this.getLado1() + this.lado2 + this.lado3);
    }
   
    
    public double getLado1() {
        return this.lado1;
    }
    public double getLado2() {
        return this.lado2;
    }
    public double getLado3() {
        return this.lado3;
    }
    public String getColorRelleno() {
        return this.colorRelleno;
    }
    public String getColorLinea() {
        return this.colorLinea;
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
    public void setColorRelleno(String colorRelleno) {
        this.colorRelleno = colorRelleno;
    }
    public void setColorLinea(String colorLinea) {
        this.colorLinea = colorLinea;
    }
}
```
```Java
//Programa Principal
package practica2;
import PaqueteLectura.Lector;
public class Probando{
    public static void main(String[] args) {
        Triangulo2 triangulo = new Triangulo2();
        System.out.println("Ingrese el tamanio del lado 1: ");
        triangulo.setLado1(Lector.leerDouble());
        System.out.println("Ingrese el tamanio del lado 2: ");
        triangulo.setLado2(Lector.leerDouble());
        System.out.println("Ingrese el tamanio del lado 3: ");
        triangulo.setLado3(Lector.leerDouble());
        System.out.println("Ingrese el color de relleno: ");
        triangulo.setColorRelleno(Lector.leerString());
        System.out.println("Ingrese el color de linea: ");
        triangulo.setColorLinea(Lector.leerString());

        System.out.println("El perimetro del triangulo es: " + triangulo.calcularPerimetro());
        System.out.println("El area del triangulo es: " + triangulo.calcularArea());
    }
}
```
Ejercicio_2
===========
```Java
package practica2;

public class Balanza {
    private double monto;
    private int cant_productos;
    private String resumen;
    //Zona de metodos
    
    //____________________________________
    //Zona de comportamiento
    public void iniciarCompra(){
        this.monto = 0;
        this.cant_productos = 0;
    }
    public void registrarProducto(double unMonto, int unCantidad) {
        this.monto += (unMonto * unCantidad);
        this.cant_productos++;
        this.resumen = ("Total a pagar " + this.monto + " por la compra de "+this.cant_productos+" productos");
    }
    public double devolverMontoAPagar() {
        return this.monto; 
    }
    public String devolverResumenDeCompra() {
        return this.resumen;
    }
}
```
```Java
package practica2; //Programa Principal

import PaqueteLectura.GeneradorAleatorio;
public class Ejercicio2_Practica2 {
    public static void main(String[] args) {
        GeneradorAleatorio.iniciar();
        Balanza b = new Balanza();
        b.iniciarCompra();
        double pesoEnKg = GeneradorAleatorio.generarInt(10);
        int precioPorKg = GeneradorAleatorio.generarInt(10);
        while (pesoEnKg != 0) {      
            b.registrarProducto(pesoEnKg, precioPorKg);
            pesoEnKg = GeneradorAleatorio.generarInt(10);
            precioPorKg = GeneradorAleatorio.generarInt(10);
        }
        System.out.println(b.devolverResumenDeCompra()); 
    }  
}
```

Ejercicio_3
===========
```Java
package practica_pruebas;
public class Entrenador {
    private String nombre;
    private double sueldoBasico;
    private int cantCampeonatosGanados;

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

    public String getNombre() {
        return nombre;
    }

    public double getSueldoBasico() {
        return sueldoBasico;
    }

    public int getCantCampeonatosGanados() {
        return cantCampeonatosGanados;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void setSueldoBasico(double sueldoBasico) {
        this.sueldoBasico = sueldoBasico;
    }

    public void setCantCampeonatosGanados(int cantCampeonatosGanados) {
        this.cantCampeonatosGanados = cantCampeonatosGanados;
    }
}
```

```Java
package practica2;
import PaqueteLectura.Lector; 

public class Ejercicio3_Practica2 {
    public static void main(String[] args) {
        
        Entrenador entrenador_1 = new Entrenador();
        System.out.println("Nombre:");
        entrenador_1.setNombre(Lector.leerString());  
        
        System.out.println("Sueldo Basico:");
        entrenador_1.setSueldo(Lector.leerDouble());
        
        System.out.println("Campeonatos Ganados:");
        entrenador_1.setCampeonatosGanados(Lector.leerInt());
        
        System.out.println("Sueldo a cobrar: "+ entrenador_1.SueldoaCobrar());
    }
}
```
Ejercicio_4
===========
Ejercicio_5
===========

Ejercicio_1_Parte2
==================
```Java
package practica2;
public class Triangulo {
    //Atributos
    private double ladoUno;
    private double ladoDos;
    private double ladoTres;
    private String relleno;
    private String linea;
    //__________________________________
    //Contructores
    public Triangulo (){
    }
    public Triangulo(double ladoUno, double ladoDos, double ladoTres, String relleno, String linea) {
        this.ladoUno = ladoUno;
        this.ladoDos = ladoDos;
        this.ladoTres = ladoTres;
        this.relleno = relleno;
        this.linea = linea;
    }
    
    //__________________________________
    //Zona de gets
    public double getLadoUno() {
        return this.ladoUno;
    }

    public double getLadoDos() {
        return this.ladoDos;
    }

    public double getLadoTres() {
        return this.ladoTres;
    }
    public String getRelleno() {
        return this.relleno;
    }
    public String getLinea() {
        return this.linea;
    }
    //__________________________________
    //Zona de sets
    public void setLadoUno(double unLadoUno) {
        this.ladoUno = unLadoUno;
    }

    public void setLadoDos(double unLadoDos) {
        this.ladoDos = unLadoDos;
    }

    public void setLadoTres(double unLadoTres) {
        this.ladoTres = unLadoTres;
    }
    public void setRelleno(String unRelleno) {
        this.relleno = unRelleno;
    }
    public void setLinea(String unaLinea) {
        this.linea = unaLinea;
    }
    //____________________________________
    //Zona de comportamiento
    public double calcularArea() {
        double s = (this.ladoUno+this.ladoDos+this.ladoTres)/2;
        return Math.sqrt((s*(s-this.ladoUno)*(s-this.ladoDos)*(s-this.ladoTres)));
    }
    public double calcularPerimetro() {
        return this.ladoUno+this.ladoDos+this.ladoTres;
    }
}
```
```Java
package practica2;          //Programa Principal
import PaqueteLectura.GeneradorAleatorio;
public class Ejercicio1_Practica2 {
    public static void main(String[] args) {
        GeneradorAleatorio.iniciar(); 
        double lado1 =(GeneradorAleatorio.generarDouble(10));
        double lado2 = (GeneradorAleatorio.generarDouble(10));
        double lado3 = (GeneradorAleatorio.generarDouble(10));
        String color = (GeneradorAleatorio.generarString(5));
        String linea = (GeneradorAleatorio.generarString(5));
        Triangulo triangulo_1 = new Triangulo(lado1,lado2,lado3,color,linea);
        System.out.println("El area es : " + triangulo_1.calcularArea()); //Por algun motivo, de vez en cuando tira valor NaN
        System.out.println("El perimetro es : " + triangulo_1.calcularPerimetro());
    }   
}
```


Ejercicio_2_Parte2
==================
Ejercicio_3_Parte2
==================
Ejercicio_4_Parte2
==================
Ejercicio_5_Parte2
==================

Ejercicio_1_Teoria
==================
Ejercicio_2_Teoria
==================
Ejercicio_3_Teoria
==================



<h1 align="center">Practica 2</h1>
<h1 align="center">Primera Parte</h1>

```1)a)```  Definir una clase para representar triángulos. Un triángulo se caracteriza por el tamaño de sus 3 lados (double), el color de relleno (String) y el color de línea (String). El triángulo debe saber: [Resolución](#Ejercicio_1)

- Devolver/modificar el valor de cada uno de sus atrivutos (métodos get# y set#)
-  Calcular el área y devolverla (método calcularArea)
-  Calcular el perímetro y devolverlo (método calcularPerimetro)

![image](https://user-images.githubusercontent.com/55964635/136681503-9d700939-02f9-45ca-8200-4a5ab9d490bc.png)

```b)```  Realizar un programa principal que instancie un triángulo, le cargue información leída desde teclado e informe en consola el perímetro y el área.

```2)a)``` Definir una clase para representar balanzas comerciales (para ser utilizadas en verdulerías, carnicerías, etc). Una balanza comercial sólo mantiene el monto y la cantidad de items correspondientes a la compra actual (es decir, no almacena los ítems de la compra). La balanza debe responder a los siguientes mensajes: [Resolución](#Ejercicio_2)
-  iniciarCompra(): inicializa el monto y cantidad de ítems de la compra actual. 
-   RegistrarProducto(pesoEnKg, precioPorKg): recibe el peso en kg del ítem comprado y su precio por kg, debiendo realizar las actualizaciones en el estado de la balanza
-   DevolverMontoAPagar(): retorna el monto de la compra actual.
-   DevolverResumenDeCompra(): retorna un String del siguiente estilo “Total a pagar X por la compra de Y productos” , donde X es el monto e Y es la cantidad de ítems de la compra. 

```b)```  Genere un programa principal que cree una balanza e inicie una compra. Lea información desde teclado correspondiente a los ítems comprados (peso en kg y precio 
por kg) hasta que se ingresa uno con peso 0. Registre cada producto en la balanza. Al finalizar, informe el resumen de la compra. 

```3)a)``` Definir una clase para representar entrenadores de un club de fútbol. Un entrenador se caracteriza por su nombre, sueldo básico y la cantidad de campeonatos ganados.
- Defina métodos para obtener/modificar el valor de cada atributo. [Resolución](#Ejercicio_3)
-  Defina el método calcularSueldoACobrar que calcula y devuelve el sueldo a cobrar por el entrenador. El sueldo se compone del sueldo básico, al cual se le adiciona un plus por 
campeonatos ganados (5000$ si ha ganado entre 1 y 4 campeonatos; $30.000 si ha ganado entre 5 y 10 campeonatos; 50.000$ si ha ganado más de 10 campeonatos).

```b)``` Realizar un programa principal que instancie un entrenador, cargándole datos leídos desde teclado. Pruebe el correcto funcionamiento de cada método implementado.

```4)a)```  Generar una clase para representar círculos. Los círculos se caracterizan por su radio (double), el color de relleno (String) y el color de línea (String). El círculo debe saber: [Resolución](#Ejercicio_4)
-  Devolver/modificar el valor de cada uno de sus atributos (get# y set#)
-  Calcular el área y devolverla. (método calcularArea)
-  Calcular el perímetro y devolverlo. (método calcularPerimetro)

NOTA: la constante PI es Math.PI

```b)```  Realizar un programa principal que instancie un círculo, le cargue información leída de teclado e informe en consola el perímetro y el área.

```5)a)``` Modifique el ejercicio 2-A. Ahora la balanza debe poder generar un resumen de compra más completo. Para eso agregue a la balanza la característica resumen (String). Modifique los métodos: [Resolución](#Ejercicio_5)
-  iniciarCompra para que además inicie el resumen en el String vacío.
-  registrarProducto para que reciba un objeto Producto (que se caracteriza por peso en kg y descripción) y su precio por kg. La operación debe realizar las actualizaciones en monto /cantidad de ítems y adicionar al resumen (string) la descripción y el monto pagado por este producto. 
-  devolverResumenDeCompra() para que retorne un String del siguiente estilo: “Naranja 100 pesos – Banana 40 pesos – Lechuga 50 pesos – Total a pagar 190 pesos por la compra de 3 productos” . La sección subrayada es el contenido de resumen.

```
Realice las modificaciones necesarias en el programa principal solicitado en 2-B para corroborar el funcionamiento de la balanza. 
NOTA: dispone en la carpeta tema 3 de la clase Producto ya implementada. Para adicionar la información del producto recibido al resumen use concatenación de Strings (operación +). 
```


<h1 align="center">Segunda Parte</h1>

```1)a)i)``` Defina constructores para la clase Triángulo (definida anteriormente): el primer constructor debe recibir un valor para cada lado y para los colores de línea y relleno; el segundo constructor no debe poseer parámetros ni código (constructor nulo).  [Resolución](#Ejercicio_1_Parte2)

```ii)``` Realice un programa que instancie un triángulo mediante los distintos constructores.

```1)b)i)``` Defina constructores para la clase Círculo (definida anteriormente): el primer constructor debe recibir un valor para el radio y para los colores de línea y relleno; el segundo constructor no debe poseer parámetros ni código (constructor nulo).

```ii)```  Realice un programa que instancie un círculo mediante los distintos constructores.

```2)a)``` Defina un constructor para la clase Entrenador (definida anteriormente) que reciba los datos necesarios (nombre, sueldo básico, cantidad de campeonatos ganados). Además defina un constructor nulo. [Resolución](#Ejercicio_2_Parte2)

```ii)``` Realice un programa que instancie un entrenador mediante el primer constructor.

```3)a)``` Modifique la clase Libro (carpeta tema 4) para ahora considerar que el primer autor es un objeto instancia de la clase Autor. Implemente la clase Autor, considerando que éstos se caracterizan por nombre y biografía. El autor debe poder devolver/modificar el valor de sus atributos. [Resolución](#Ejercicio_3_Parte2)

![image](https://user-images.githubusercontent.com/55964635/136683216-6ee5a386-e914-4411-959a-4be3ea74b6bb.png)

```b)```  Modifique el programa ppal. (carpeta tema 4) para instanciar un libro con su autor, considerando las modificaciones realizadas en A). Los datos se ingresan por teclado.

```4)A)``` Definir una clase para representar micros. Un micro conoce su patente, destino, hora salida, el estado de sus 20 asientos (es decir si está o no ocupado) y la cantidad de asientos ocupados al momento. Lea detenidamente a) y b) y luego implemente. [Resolución](#Ejercicio_4_Parte2)

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
una flota vacía (sin micros). Implemente métodos para: [Resolución](#Ejercicio_5_Parte2)

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

Utilizando la clase Auto dada por la cátedra.

```1)``` Provea un constructor para iniciar los autos a partir de nombre de dueño y patente.

```2)``` Definir una clase para representar Estacionamientos. Un estacionamiento conoce su nombre, dirección, hora de apertura y hora de cierre, y almacena para cada número de 
piso (1..N) y número de plaza (1..M), el auto que ocupa dicho lugar.

```a)``` Provea getters/setters adecuados. 

```b)``` Implemente un constructor que reciba nombre y dirección, e inicie el estacionamiento con hora de apertura “8:00”, hora de cierre “21:00”, y para 5 pisos y 
10 plazas por piso. El estacionamiento inicialmente no tiene autos.

```c)``` Implemente un segundo constructor que reciba nombre, dirección, hora de apertura, hora de cierre, el número de pisos (N) y el número de plazas por piso (M) 
e inicie el estacionamiento con los datos recibidos, y sin autos.

```d)``` Implemente métodos para:

- Dado un auto A, un número de piso X y un número de plaza Y, registrar al auto en el estacionamiento en el lugar X,Y. Suponga que X, Y son válidos y que el lugar está desocupado
- Dada una patente, obtener un String que contenga el número de piso y plaza donde está dicho auto. En caso de no encontrarse, retornar el mensaje “Auto Inexistente”.
- Obtener un String con la representación del estacionamiento. Ejemplo: “Piso 1 Plaza 1: libre Piso 1 Plaza 2: representación del auto … Piso 2 Plaza 1: libre … etc”

```3)``` Realice un programa que instancie un estacionamiento llamado “ABC”, ubicado en “12 e/ 45 y 46”, con apertura a las “6:00” y cierre a las “22:00”. Este estacionamiento 
tendrá 3 pisos y 3 plazas por piso. Registre 6 autos en el estacionamiento (ingresando patente, dueño, piso y plaza por teclado). Asuma que el lugar ingresado está desocupado y es válido. Luego, muestre la representación String del estacionamiento en consola. Para finalizar, lea una patente por teclado e informe si dicho auto se encuentra en el 
estacionamiento o no. En caso de encontrarse, la información a imprimir es el piso y plaza que ocupa.

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
        entrenador_1.setSueldoBasico(Lector.leerDouble());
        
        System.out.println("Campeonatos Ganados:");
        entrenador_1.setCantCampeonatosGanados(Lector.leerInt());
        
        System.out.println("Sueldo a cobrar: "+ entrenador_1.calcularSueldoACobrar());
    }
}
```
Ejercicio_4
===========
```Java
package practica_pruebas;
public class Circulo {
    private double radio;
    private String colorRelleno;
    private String colorLinea;
    
    public double calcularArea(){
        return (Math.PI*(Math.pow(this.radio, 2)));
    }
    
    public double calcularPerimetro(){
        return (2 * Math.PI * this.radio);
    }
    
    public double getRadio() {
        return radio;
    }

    public String getColorRelleno() {
        return colorRelleno;
    }

    public String getColorLinea() {
        return colorLinea;
    }

    public void setRadio(double radio) {
        this.radio = radio;
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
package practica_pruebas;
import PaqueteLectura.Lector;
public class Ejercicio4_Practica2 {

    public static void main(String[] args) {
        Circulo circulo = new Circulo();
        
        System.out.println("Ingrese el radio del circulo: ");
        circulo.setRadio(Lector.leerDouble());
        
        System.out.println("Ingrese el color de relleno: ");
        circulo.setColorRelleno(Lector.leerString());
        
        System.out.println("Ingrese el color de linea: ");
        circulo.setColorLinea(Lector.leerString());
        
        System.out.println("El perimetro del circulo es: " + circulo.calcularPerimetro());
        
        System.out.println("El area del circulo es: " + circulo.calcularArea());
    }
}
```
Ejercicio_5
===========
```Java
package practica_pruebas;

public class Producto {
    
    private double pesoEnKg;  
    private String descripcion; 
    
    public Producto(double unPeso,String unaDescripcion){
        pesoEnKg = unPeso;
        descripcion = unaDescripcion;
    }
    
    public double getPesoEnKg() {
        return pesoEnKg;
    }

     public void setPesoEnKg(double unPeso) {
        pesoEnKg = unPeso;
    }

     public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String unaDescripcion) {
        descripcion = unaDescripcion;
    }  
}
```
```Java
package practica_pruebas;

public class Balanza {
    private double monto;  //correspondiente a la compra actual.
    private int cantItems; //correspondientes a la compra actual.
    private String resumen;
    
    public void iniciarCompra(){
        this.monto = 0;
        this.cantItems = 0;
        this.resumen = "";
    }
    
    public void registrarProducto(Producto producto, double precioPorKg){
        double montoProducto = producto.getPesoEnKg()*precioPorKg;
        this.monto += montoProducto;
        this.cantItems++;
        this.resumen += producto.getDescripcion() + " $" + montoProducto + " - ";
    }
    
    public double devolverMontoAPagar(){
        return this.monto;
    }
    
    public String devolverResumenDeCompra(){
        return (this.getResumen() + "Total a pagar: $" + this.devolverMontoAPagar() + " por la compra de " + this.getCantItems() + " productos.");
    }

    private int getCantItems() {
        return cantItems;
    }

    private String getResumen() {
        return resumen;
    }
}
```
```Java
package practica_pruebas; //Programa Principal
import PaqueteLectura.Lector;
public class Ejercicio5_Practica2 {

    public static void main(String[] args) {

        Balanza balanza = new Balanza();
        balanza.iniciarCompra();

        double pesoEnKg;
        double precioPorKilo = 0;
        String descripcion = null;
        Producto producto = null;

        System.out.println("Ingrese el peso en kg del producto: ");
        pesoEnKg = Lector.leerDouble();
        if (pesoEnKg != 0) {
            System.out.println("Ingrese la descripcion del producto: ");
            descripcion = Lector.leerString();
            System.out.println("Ingrese el precio por kg del item: ");
            precioPorKilo = Lector.leerDouble();
            
            producto = new Producto(pesoEnKg, descripcion);
        }
        
        while (pesoEnKg != 0) {
            balanza.registrarProducto(producto, precioPorKilo);

            System.out.println("Ingrese el peso en kg del producto: ");
            pesoEnKg = Lector.leerDouble();
            if (pesoEnKg != 0) {
                System.out.println("Ingrese la descripcion del producto: ");
                descripcion = Lector.leerString();
                System.out.println("Ingrese el precio por kg del item: ");
                precioPorKilo = Lector.leerDouble();
                producto = new Producto(pesoEnKg, descripcion);
            }
        }
        System.out.println(balanza.devolverResumenDeCompra());
    }
}
```
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
Circulo
```Java
package practica_pruebas;

public class Circulo_1 {
    private double radio;
    private String colorRelleno;
    private String colorLinea;

    public Circulo_1(double radio, String colorRelleno, String colorLinea) {
        this.radio = radio;
        this.colorRelleno = colorRelleno;
        this.colorLinea = colorLinea;
    }
    public Circulo_1() {
    }

    public double calcularArea(){
        return (Math.PI*(Math.pow(this.radio, 2)));
    }
    
    public double calcularPerimetro(){
        return (2 * Math.PI * this.radio);
    }
    
    public double getRadio() {
        return radio;
    }

    public String getColorRelleno() {
        return colorRelleno;
    }

    public String getColorLinea() {
        return colorLinea;
    }

    public void setRadio(double radio) {
        this.radio = radio;
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
package practica_pruebas;

public class Ej01BCirculo {

    public static void main(String[] args) {
        Circulo_1 circulo1 = new Circulo_1(3.2, "verde", "rojo"); //con constructor con parametros.

        /*Circulo circulo2 = new Circulo(); //con constructor nulo.
        circulo2.setRadio(3.2);
        circulo2.setColorRelleno("verde");
        circulo2.setColorLinea("rojo");
    */}
}

```

Ejercicio_2_Parte2
==================
```Java
package practica_pruebas;

public class Entrenador {

    private String nombre;
    private double sueldoBasico;
    private int cantCampeonatosGanados;

    public Entrenador(String nombre, double sueldoBasico, int cantCampeonatosGanados) {
        this.nombre = nombre;
        this.sueldoBasico = sueldoBasico;
        this.cantCampeonatosGanados = cantCampeonatosGanados;
    }

    public Entrenador() {
    }

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
//Programa Principal
package practica_pruebas;
public class Ej02Entrenador {

    public static void main(String[] args) {
        Entrenador entrenador = new Entrenador("jose perez", 50000, 3);
    } 
}
```
Ejercicio_3_Parte2
==================
```Java
package practica_pruebas;
public class Autor {

    private String nombre;
    private String biografia;

    public Autor(String nombre, String biografia) {
        this.nombre = nombre;
        this.biografia = biografia;
    }
    public Autor() {
    }
    public String getNombre() {
        return nombre;
    }

    public String getBiografia() {
        return biografia;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void setBiografia(String biografia) {
        this.biografia = biografia;
    }
}
```
```Java
package practica_pruebas;

public class Libro_1 {

    private String titulo;
    private Autor primerAutor;
    private String editorial;
    private int añoEdicion;
    private String ISBN;
    private double precio;

    public Libro_1(String unTitulo, String unaEditorial,int unAñoEdicion, Autor unPrimerAutor, String unISBN, double unPrecio) {
        titulo = unTitulo;
        editorial = unaEditorial;
        añoEdicion = unAñoEdicion;
        primerAutor = unPrimerAutor;
        ISBN = unISBN;
        precio = unPrecio;
    }

    public Libro_1(String unTitulo, String unaEditorial, Autor unPrimerAutor, String unISBN) {
        titulo = unTitulo;
        editorial = unaEditorial;
        añoEdicion = 2015;
        primerAutor = unPrimerAutor;
        ISBN = unISBN;
        precio = 100;
    }

    public Libro_1() {

    }

    public String getTitulo() {
        return titulo;
    }

    public String getEditorial() {
        return editorial;
    }

    public int getAñoEdicion() {
        return añoEdicion;
    }

    public Autor getPrimerAutor() {
        return primerAutor;
    }

    public String getISBN() {
        return ISBN;
    }

    public double getPrecio() {
        return precio;
    }

    public void setTitulo(String unTitulo) {
        titulo = unTitulo;
    }

    public void setEditorial(String unaEditorial) {
        editorial = unaEditorial;
    }

    public void setAñoEdicion(int unAño) {
        añoEdicion = unAño;
    }

    public void setPrimerAutor(Autor unPrimerAutor) {
        primerAutor = unPrimerAutor;
    }

    public void setISBN(String unISBN) {
        ISBN = unISBN;
    }

    public void setPrecio(double unPrecio) {
        precio = unPrecio;
    }

    @Override
    public String toString() {
        String aux;
        aux = titulo + " por " + primerAutor.getNombre() + " - " + añoEdicion + " - " + " ISBN: " + ISBN;
        return (aux);
    }
}
```
```Java
//Programa Principal
package practica_pruebas;
public class Demo01Libro {

    public static void main(String[] args) {
        Libro_1 libro = new Libro_1();
        libro.setTitulo("Java: A Beginner's Guide");
        libro.setEditorial("Mcgraw-Hill");
        libro.setAñoEdicion(2014);
        
        Autor a = new Autor("Messi", "murio");
        
        libro.setPrimerAutor(a);
        libro.setISBN("978-0071809252");
        libro.setPrecio(21.72);
        System.out.println(libro.toString());
        {Autor a = new Autor ("nombre autor", biografia);
        Libro l = new Libro ("hola", "editorial", 2005,a,1500);}
    }
}
```
Ejercicio_4_Parte2
==================
```Java
//Programa Principal
package practica2;
import PaqueteLectura.Lector;

public class Ejercicio4_Parte2_Practica2 {
    public static void main(String[] args) {
        Micro micro = new Micro("ABC123", "Mar del Plata", "5:00");
        System.out.println("Ingrese un nro de Asiento: ");
        int asiento = Lector.leerInt();
        
        while (asiento != -1 && !micro.estaLleno()) {      
            if (micro.esValido(asiento)){
                if (!micro.estaOcupado(asiento)){
                    micro.ocuparAsiento(asiento);
                    System.out.println("El asiento se pudo robar con exito :D");
                }
                else{
                    System.out.println("El asiento elegido ya esta ocupado. El siguiente se encuentra libre: " + micro.primerAsientoLibre());
                }
            }
            else {
                System.out.println("El asiento ingresado no es valido :(");
            }
            System.out.println("Ingrese el numero de asiento: ");
            asiento = Lector.leerInt();
            
        }
    }
}
```
```Java
package practica2;

public class Micro {
    private String patente;
    private String destino;
    private String Hora_salida;
    private boolean vector_ocupados[];
    
    private final int cantTotalAsientos = 20; //DimF
    private int cantAsientosOcupados;
    
    //4A)a
    public Micro(String patente, String destino, String hora){
        this.patente = patente;
        this.destino = destino;
        this.Hora_salida = hora;
        this.cantAsientosOcupados = 0;
        this.vector_ocupados = new boolean[cantTotalAsientos];
        
        for (int i = 0; i < cantAsientosOcupados; i++){
            this.vector_ocupados[i] = false;
        }
    }
    
    //4A)b)i)devolver/modificar patente, destino y hora de salida
    public String getPatente() {
        return this.patente;
    }

    public String getDestino() {
        return this.destino;
    }

    public String getHora_salida() {
        return this.Hora_salida;
    }

    public void setPatente(String patente) {
        this.patente = patente;
    }

    public void setDestino(String destino) {
        this.destino = destino;
    }

    public void setHora_salida(String Hora_salida) {
        this.Hora_salida = Hora_salida;
    }
    
    //4A)b)ii)devolver la cantidad de asientos ocupados
    public int getCantAsientosOcupados() {
        return cantAsientosOcupados;
    }
    
    //4A)b)iii)devolver si el micro está lleno
    public boolean estaLleno(){
        return (this.cantAsientosOcupados == cantTotalAsientos);
    }
    
    //4A)b)iv)validar un número de asiento recibido como parámetro (es decir, devolver si está en rango o no)
    public boolean esValido(int asiento) {
        return ((asiento >= 1) && (asiento <= cantTotalAsientos)); 
    }
    
    //4A)b)v)devolver el estado de un nro. de asiento válido recibido como parámetro
     public boolean estaOcupado(int asiento) {
        return this.vector_ocupados[asiento-1]; //Comienza de 1 hasta x
    }
     
    //4A)b)vi)ocupar un nro. de asiento válido recibido como parámetro
     
     
    public void ocuparAsiento(int asiento) {
        this.cantAsientosOcupados++;
        this.vector_ocupados[asiento-1] = true; //porque los asientos arrancan desde 1..N
    }

    //vii. liberar un nro. de asiento válido recibido como parámetro
    public void desocuparAsiento(int asiento) {
        this.cantAsientosOcupados--;
        this.vector_ocupados[asiento-1] = false; //porque los asientos arrancan desde 1..N
    }

    //viii. devolver el nro. del primer asiento libre
    public int primerAsientoLibre() {
        if (!this.estaLleno()) {
            int i = 0;
            while (this.vector_ocupados[i] != false) {
                i++;
            }
            return (i+1); //porque los asientos arrancan desde 1..N
        }
        return -1; //-1 para el corte
    }
     
}
```
Ejercicio_5_Parte2
==================
```Java
package ejercicio_5;

public class Micro {
    private String patente;
    private String destino;
    private String Hora_salida;
    private boolean vector_ocupados[];
    
    private final int cantTotalAsientos = 20; //DimF
    private int cantAsientosOcupados;
    
    //4A)a
    public Micro(String patente, String destino, String hora){
        this.patente = patente;
        this.destino = destino;
        this.Hora_salida = hora;
        this.cantAsientosOcupados = 0;
        this.vector_ocupados = new boolean[cantTotalAsientos];
        
        for (int i = 0; i < cantAsientosOcupados; i++){
            this.vector_ocupados[i] = false;
        }
    }
    
    //4A)b)i)devolver/modificar patente, destino y hora de salida
    public String getPatente() {
        return this.patente;
    }

    public String getDestino() {
        return this.destino;
    }

    public String getHora_salida() {
        return this.Hora_salida;
    }

    public void setPatente(String patente) {
        this.patente = patente;
    }

    public void setDestino(String destino) {
        this.destino = destino;
    }

    public void setHora_salida(String Hora_salida) {
        this.Hora_salida = Hora_salida;
    }
    
    //4A)b)ii)devolver la cantidad de asientos ocupados
    public int getCantAsientosOcupados() {
        return cantAsientosOcupados;
    }
    
    //4A)b)iii)devolver si el micro está lleno
    public boolean estaLleno(){
        return (this.cantAsientosOcupados == cantTotalAsientos);
    }
    
    //4A)b)iv)validar un número de asiento recibido como parámetro (es decir, devolver si está en rango o no)
    public boolean esValido(int asiento) {
        return ((asiento >= 1) && (asiento <= cantTotalAsientos)); 
    }
    
    //4A)b)v)devolver el estado de un nro. de asiento válido recibido como parámetro
     public boolean estaOcupado(int asiento) {
        return this.vector_ocupados[asiento-1]; //Comienza de 1 hasta x
    }
     
    //4A)b)vi)ocupar un nro. de asiento válido recibido como parámetro
     
     
    public void ocuparAsiento(int asiento) {
        this.cantAsientosOcupados++;
        this.vector_ocupados[asiento-1] = true; //porque los asientos arrancan desde 1..N
    }

    //vii. liberar un nro. de asiento válido recibido como parámetro
    public void desocuparAsiento(int asiento) {
        this.cantAsientosOcupados--;
        this.vector_ocupados[asiento-1] = false; //porque los asientos arrancan desde 1..N
    }

    //viii. devolver el nro. del primer asiento libre
    public int primerAsientoLibre() {
        if (!this.estaLleno()) {
            int i = 0;
            while (this.vector_ocupados[i] != false) {
                i++;
            }
            return (i+1); //porque los asientos arrancan desde 1..N
        }
        return -1; //-1 para el corte
    }
}

```
```Java
package ejercicio_5;

//Definir una clase para representar flotas de micros. Una flota se caracteriza por conocer a los micros que la componen (a lo sumo 15). 
public class Flota {

    private static final int DIMF = 15;
    private int cantidadMicros; //Es mi dimL
    private final Micro [] flota;
    
    //Defina un constructor para crear una flota vacía (sin micros).
    public Flota() {
        this.flota = new Micro[DIMF];
        this.cantidadMicros = 0;
        for (int i = 0; i < DIMF; i++) {
            this.flota[i] = null;
        }
    }

   
        
    //Implemente métodos para: devolver si la flota está completa (es decir, si tiene 15 micros o no)
    public boolean estaCompleta() {
        return (this.cantidadMicros == DIMF);
    }

    //Implemente métodos para: agregar a la flota un micro recibido como parámetro
    public void agregarMicro(Micro micro) {
        if (!estaCompleta()) {         
            this.flota[cantidadMicros] = micro;
            this.cantidadMicros++;
        }
    }

    //Implemente métodos para: eliminar de la flota el micro con patente igual a una recibida como parámetro, y retornar si la operación fue exitosa.
    public boolean eliminarMicro(String patente) {  //FALTA HACER CORRIMIENTO
        boolean encontre = false;
        int i = 0;
        while (i < DIMF && !encontre) {
            if (flota[i] != null && flota[i].getPatente().equals(patente)) { 
                for (int j = i+1; j < cantidadMicros; j++) {
                    flota[j-1] = flota[j];
                }
                encontre = true;
                flota[i] = null;
                this.cantidadMicros--;
            }
            i++;
        }
        return encontre;
    }

    //Implemente métodos para: buscar en la flota un micro con patente igual a una recibida como parámetro y retornarlo (en caso de no existir dicho micro, retornar null).
    public Micro buscarMicroPorPatente(String patente) {
        int i = 0;
  
        boolean encontre = false;
        while (i < DIMF && !encontre) {
            if (flota[i] != null && flota[i].getPatente().equals(patente)) {
                encontre = true;         
            }
            i++;
        }
        if (encontre){
            return flota[i];
        }
        else {
            return null;
        }  
    }

    //Implemente métodos para: buscar en la flota un micro con destino igual a uno recibido como parámetro y retornarlo (en caso de no existir dicho micro, retornar null).
    public Micro buscarMicroPorDestino(String destino) {
        int i = 0;
        boolean encontre = false;
        while (i < DIMF && !encontre) {
            if (flota[i] != null && flota[i].getDestino().equals(destino)) {
                encontre = true;
            }
            i++;
        }
        if (encontre){
            return flota[i]; 
        }
        else {
            return null;
        }
    }
}
```
```Java
package ejercicio_5;

import PaqueteLectura.Lector;

public class Ejercicio_5 {

    public static void main(String[] args) {
        Flota flota = new Flota();

        System.out.println("Ingrese la patente del micro: ");
        String patente = Lector.leerString();

        while (!flota.estaCompleta() && !patente.equals("ZZZ000")) {
            System.out.println("Ingrese el destino: ");
            String destino = Lector.leerString();
            
            System.out.println("Ingrese la hora de salida: ");
            String horaSalida = Lector.leerString();

            Micro micro = new Micro(patente, destino, horaSalida);
            flota.agregarMicro(micro);

            System.out.println("Ingrese la patente del micro: ");
            patente = Lector.leerString();
        }   
        System.out.println("Ingrese la patente del micro que desea eliminar de la flota: ");
        String patenteParaEliminar = Lector.leerString();
        flota.eliminarMicro(patenteParaEliminar);
        
        if (flota.buscarMicroPorPatente(patenteParaEliminar) == null) {
            System.out.println("El micro no esta en la flota");
        } else {
            System.out.println("El micro esta en la flota.");
        }
        System.out.println("Ingrese un destino: ");
        String destino = Lector.leerString();
        
        Micro microEncontrado = flota.buscarMicroPorDestino(destino);
        if (microEncontrado != null) {
            System.out.println("La patente del micro que va al destino ingresado es: " + microEncontrado.getPatente());
        }else {
            System.out.println("No se encontro micro que vaya al destino ingresado.");
        }
    }
}
```
Ejercicio_1_Teoria
==================
```Java
package teoria;
public class Auto {
    private int patente;
    private String dueño;

    public Auto() {
    }

    // Provea un constructor para iniciar los autos a partir de nombre de dueño y patente. 
     public Auto(int patente, String dueño) {
        this.patente = patente;
        this.dueño = dueño;
    }
    
    public int getPatente() {
        return patente;
    }

    public void setPatente(int patente) {
        this.patente = patente;
    }

    public String getDueño() {
        return dueño;
    }

    public void setDueño(String dueño) {
        this.dueño = dueño;
    }
    @Override
    public String toString() {
        return "Patente: "+patente+ " Dueño: "+dueño; //To change body of generated methods, choose Tools | Templates.
    }   
}
```
Ejercicio_2_Teoria
==================
```Java
package teoria;
/**
 * Definir  una  clase  para  representar  Estacionamientos. Un  estacionamiento  conoce  su
 * nombre, dirección, hora de apertura y hora de cierre, y almacena para cada número de
 * piso (1..N) y número de plaza (1..M), el auto que ocupa dicho lugar.
 */
public class Estacionamiento {

    private String nombre;
    private String direccion;
    private String horaApertura;
    private String horaCierre;
    private int conPiso; // (1..N)
    private int conPlaza; // (1..M)
    private Auto[][] autos;

    /*
    b)  Implemente un constructor que reciba nombre y dirección, e inicie el estacionamiento con hora de apertura “8:00”, hora de cierre “21:00”, 
    y para 5 pisos y 10 plazas por piso. El estacionamiento inicialmente no tiene autos. 
     */
    public Estacionamiento(String nombre, String direccion) {
        this.iniciar(nombre, direccion, "8:00", "21:00", 5, 10);
        //equivalene a: iniciar(...
    }

    /*
    c)	Implemente un segundo constructor que reciba nombre, dirección,  hora de apertura, hora de cierre, 
    el número de pisos (N)  y el número de plazas por piso (M) e inicie el  estacionamiento con los datos recibidos, 
    y sin autos. 
     */
    public Estacionamiento(String nombre, String direccion, String horaApertura, String horaCierre, int N, int M) {
        this.iniciar(nombre, direccion, horaApertura, horaCierre, N, M);
        //equivalene a: iniciar(...
    }

    private void iniciar(String nombre, String direccion, String horaApertura, String horaCierre, int N, int M) {
        this.nombre = nombre;
        this.direccion = direccion;
        this.horaApertura = horaApertura;
        this.horaCierre = horaCierre;
        this.conPiso = N;
        this.conPlaza = M;
        this.autos = new Auto[this.conPiso][this.conPlaza];

        for (int i = 0; i < this.conPiso; i++) {
            for (int j = 0; j < this.conPlaza; j++) {
                autos[i][j] = null;
            }
        }

    }

    // a) Provea getters/setters adecuados.
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getHoraApertura() {
        return horaApertura;
    }

    public void setHoraApertura(String horaApertura) {
        this.horaApertura = horaApertura;
    }

    public String getHoraCierre() {
        return horaCierre;
    }

    public void setHoraCierre(String horaCierre) {
        this.horaCierre = horaCierre;
    }

    public int getConPiso() {
        return conPiso;
    }

    public int getConPlaza() {
        return conPlaza;
    }
  
    /* Dado un auto A, un número de piso X y un número de plaza Y, registrar al auto en el  estacionamiento  en  el  lugar  X,Y.
    Suponga  que  X,  Y  son  válidos  y  que  el  lugar está desocupado. */
    // Para la OPCION 1 del programa principal
    public void registrar(int nroPiso, int nroPlaza, Auto auto) {
        autos[nroPiso][nroPlaza] = auto;
    }
    // Para la OPCION 2 del programa principal
//    public void registrarAuto(Auto a, int piso, int plaza) {
//        autos[piso - 1][plaza - 1] = a;  //Agrego los -1 porque los pisos van de 1..N y las plazas de 1..M
//    }

    
    /*
    Dada  una  patente,  obtener  un  String  que  contenga  el  número  de  piso  y  plaza 
donde  está  dicho  auto.  En  caso  de  no encontrarse, retornar el mensaje “Auto 
Inexistente”.
     */
    //OPCION 1 (sale con el "return" cuando lo encuentra)
    public String buscarAuto(int patente) {
        int piso = 0;
        int plaza = 0;

        while (piso < this.conPiso) {
            while (plaza < this.conPlaza) {
                if (autos[piso][plaza] != null && autos[piso][plaza].getPatente() == patente) { // NO es lo mismo "&" que "&&" 
                    return "El auto se ubica en el piso: " + (piso + 1) + ", plaza: " + (plaza + 1); //Agrego los +1 porque los pisos van de 1..N y las plazas de 1..M
                } else {
                    plaza++;
                }
            }
            plaza = 0;
            piso++;
        }
        return "Auto inexistente";
    }
    //OPCION 2 (retorna al final del método)
    public String buscarAutoPorPatente(int unaPatente) {
        int i = 0, j = 0;
        boolean encontre = false;
        while (i < this.conPiso & !encontre) {
            j = 0;
            while (j < this.conPlaza & !encontre) {
                if (this.autos[i][j] != null && this.autos[i][j].getPatente() == unaPatente) { // NO es lo mismo "&" que "&&" 
                    encontre = true;
                } else { // si no hay auto o no lo encontré, avanzo
                    j++;
                }
            }
            if (!encontre) {
                i++;
            }
        }
        String msg = "Auto inexistente";
        if (encontre) {
            msg = "Auto existente con patente " + unaPatente + ". Está en el piso " + (i + 1) + " , plaza " + (j + 1);  // para imprimir mostramos los indices incrementados
        }

        return msg;
    }

    // Obtener un String con la representación del estacionamiento. Ejemplo: “Piso 1 
//Plaza 1: libre Piso 1 Plaza 2: representación del auto ... Piso 2 Plaza 1: libre ... etc”
    @Override
    public String toString() {
        String aux = " ";
        for (int i = 0; i < conPiso; i++) {
            for (int j = 0; j < conPlaza; j++) {
                aux += "Piso: " + (i + 1) + " Plaza: " + (j + 1);
                if (autos[i][j] == null) {
                    aux += " = Libre \n"; // "aux += ..." es equivalente a "aux = aux + ..."
                } else {
                    aux += " " + autos[i][j].toString() + "\n"; // \n representa un salto de línea
                }
            }
        }
        return aux;
    }

}
```
Ejercicio_3_Teoria
==================
```Java
package teoria;
import PaqueteLectura.Lector;

public class Clase2 {

    public static void main(String[] args) {

        int piso, plaza, patente;
        String nom;
        Estacionamiento estacionamiento;
        Auto auto;
        estacionamiento = new Estacionamiento("ABC", "12 e/ 45 y 46", "6:00", "22:00", 3, 3);
        // ó en una sola línea: Estacionamiento estacionamiento = new Estacionamiento("ABC", "12 e/ 45 y 46", "6:00", "22:00", 3, 3);
        
        for (int i = 0; i < 3; i++) {
            System.out.println("Ingrese el nombre del dueño del auto");
            nom = Lector.leerString();
            System.out.println("Ingrese la patente");
            patente = Lector.leerInt();
            System.out.println("Ingrese el piso");  // 1 .. 3
            piso = Lector.leerInt();
            System.out.println("Ingrese la plaza");  // 1 .. 3
            plaza = Lector.leerInt();
            auto = new Auto(patente, nom);
            
            // se muestran dos opciones para registrar un auto (teniendo en cuenta que los índices de la matriz inician en 0)
            estacionamiento.registrar(piso - 1, plaza - 1 , auto);  //OPCIÓN 1
           // estacionamiento.registrarAuto(auto, piso, plaza); // OPCIÓN 2: decrementando en el registrar
        }
        System.out.println(estacionamiento.toString());
        System.out.println("Ingrese la patente a buscar");
        patente = Lector.leerInt();
        System.out.println(estacionamiento.buscarAuto(patente));
        System.out.println(estacionamiento.buscarAutoPorPatente(patente));
    }
}
```


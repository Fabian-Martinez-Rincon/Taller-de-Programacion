<h1 align="center">☕Java (Practica) </h1>


Indice
======
  
   * [Ingreso de datos desde teclado](#Ingreso_de_datos_desde_teclado)
   * [Generacion de datos aleatoria](#Generacion_de_datos_aleatoria) 
   * [Incluido en Java](#Incluido_En_Java)
   * [Desarrollo de Clases](#Desarrollo_de_Clases)
   * [Herencia](#Herencia)

Ingreso_de_datos_desde_teclado
==============================

```Java
package practica1;

import PaqueteLectura.Lector; 	

public class Pruebas {
    public static void main(String[] args) {
    String nombre = Lector.leerString();   
    boolean trabaja = Lector.leerBoolean();
    int edad = Lector.leerInt();   
    double sueldo = Lector.leerDouble();   
        
    System.out.println("N:" + nombre + " T:" + trabaja + " E:" + edad + " S:" + sueldo );
    }
}
```
Generacion_de_datos_aleatoria
=============================

```Java
package practica1;

import PaqueteLectura.GeneradorAleatorio;

public class Pruebas {
    public static void main(String[] args) {
    GeneradorAleatorio.iniciar();                               //inicia el generador aleatorio
    int valor1 = GeneradorAleatorio.generarInt(10);    		//genera un int entre 0 y 9
    double valor2 = GeneradorAleatorio.generarDouble(10); 	//genera un double entre 0 y 9
    boolean valor3 = GeneradorAleatorio.generarBoolean();  	//genera un boolean
    String valor4= GeneradorAleatorio.generarString(4);  	//genera un string de long. 4
    }
}
```
## Arreglos
```Java
int [] contador = new int[10];
for (int i = 0; i < 10; i++) {
        contador[i] = i;
    }
```
## Matrices
```Java
int[][] tabla = new int[10][10];
for (i=0;i<x;i++)  
    for(j=0;j<y;j++)
	tabla[i][j] = j;  
```

Incluido_en_Java
================
  - ```String saludo = "hola";```
  - ```String saludo = new String("hola");```

- Informacion de Cadenas.
```Java
cadena.length(); 	
cadena charAt(nro); 	
```
- Comparación de Cadenas.
```Java
cadena.equals(cadena2) 		  
cadena.toUpperCase();  	 	  
cadena.toLowerCase();  		 
cadena.equalsIgnoreCase(cadena2);
```

Desarrollo_de_Clases
====================
### Sintaxis.
```Java
public class NombreDeClase { 
     /* Declaración del estado del objeto*/
     /* Declaración de constructor(es) */
     /* Declaración de métodos que implementan acciones */
}
```
### Ejemplo Completo
```Java
package practica2;
public class Circulo {
    private double radio;
    //__________________________________
    //Zona de constructores
    public Circulo(double radio) {
        this.radio = radio;
    }
    public Circulo(){
    }
    //__________________________________
    //Zona de gets
    public double getRadio() {
        return this.radio;
    }
    //__________________________________
    //Zona de sets
    public void setRadio(double unRadio) {
        this.radio = unRadio;
    }
    //____________________________________
    //Zona de comportamiento
    public double calcularArea() {
        return (Math.PI)*(Math.pow(this.radio,2));
    }
    public double calcularPerimetro() {
        return 2*(Math.PI)*this.radio;
    }
}
```
### Programa principal
```Java
double lado1 =(GeneradorAleatorio.generarDouble(10));
double lado2 = (GeneradorAleatorio.generarDouble(10));
double lado3 = (GeneradorAleatorio.generarDouble(10));
String color = (GeneradorAleatorio.generarString(5));
String linea = (GeneradorAleatorio.generarString(5));

Triangulo triangulo_1 = new Triangulo(lado1,lado2,lado3,color,linea);
```
Herencia
========

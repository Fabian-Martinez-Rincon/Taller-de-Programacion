<h1 align="center">☕Java (Practica) </h1>


Indice
======
  
   * [Ingreso de datos desde teclado](#Ingreso_de_datos_desde_teclado)
   * [Generacion de datos aleatoria](#Generacion_de_datos_aleatoria) 
   * [Incluido en Java](#Incluido_En_Java)
   * [Desarrollo de Clases](#Desarrollo_de_Clases)
   * [Herencia](#Herencia)
   * [Clases y métodos Abstractos](#Clases_y_métodos_Abstractos)
   * [Ejemplo Completo](#Ejemplo_Completo)

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

<table>
<tr>
<td> Ejemplo Parte 1 </td> <td> Ejemplo Parte 2 </td>
</tr>
<tr>
<td>
 
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
	
</td>
<td>
 

```Java
double radio =(GeneradorAleatorio.generarDouble(10));

Circulo circulo = new Circulo(3.2);
```
 
</td>
</tr>
 
</table>

Herencia
========

<table>
<tr>
<td> Super Clase o Clase Padre </td> <td> SubClase de A </td>
</tr>
<tr>
<td>
 
```Java
public class ClaseA{
     /* Definir atributos propios */ 
     /* Definir constructores propios */ 
     /* Definir métodos propios */
}
```
	
</td>
<td>
 

```Java
public class ClaseB extends ClaseA{
     /* Definir atributos propios */ 
     /* Definir constructores propios */ 
     /* Definir métodos propios */
}
```
 
</td>
</tr>
 
</table>

Clases_y_métodos_Abstractos
===========================
<table>
<tr>
<td> Super Clase</td> <td> SubClase </td>
</tr>
<tr>
<td>
 
```Java
public abstract class Figura{   
  private String colorRelleno, colorLinea;

  public String getColorRelleno(){
    return colorRelleno; 
  }
  public void setColorRelleno(String unColor){
    colorRelleno = unColor; 
  }      

  public abstract double calcularArea(); 
  public abstract double calcularPerimetro(); 
} 

```
	
</td>
<td>
 

```Java
public class Cuadrado extends Figura{   
   private double lado;
  /*Constructores*/
  public Cuadrado(double unLado, String unColorR, String unColorL){
    setLado(unLado);
    setColorRelleno(unColorR);
    setColorLinea(unColorL);
  }
	
/* Metodos getLado y setLado  */
//.....	
  public double calcularPerimetro(){
    return getLado()*4;
  }

  public double calcularArea(){
    return getLado()*getLado();
  }
} 
```
 
</td>
</tr>
 
</table>

Ejemplo_Completo
================

<table>
<tr>
<td> Super Clase</td> <td> SubClase Cuadrado</td> <td>SubClase Circulo</td>
</tr>
<tr>
<td>
 
```Java
public abstract class Figura{   
    private String colorRelleno, colorLinea;

    public Figura(String unCR, String unCL){
           setColorRelleno(unCR);
           setColorLinea(unCL);
    }
    public String toString(){
      String aux = "Area:"+ this.calcularArea() +
                    "CR:" + getColorRelleno() + 
                    "CL:" + getColorLinea();             
      return aux;
    }
    public String getColorRelleno(){
        return colorRelleno; 
    }
    public void setColorRelleno(String unColor){
        colorRelleno = unColor; 
    }      
    …
    public abstract double calcularArea(); 
    public abstract double calcularPerimetro(); 
} 


```
	
</td>
<td>
	
```Java
public class Cuadrado extends Figura{   
  private double lado;

  /*Constructores*/
  public Cuadrado(double unLado,
                  String unColorR, 
                  String unColorL){
     super(unColorR,unColorL);
     setLado(unLado);
   }

   /* Metodos getLado y setLado*/
   
   /* Métodos calcularArea y 
      calcularPerimetro */

   public String toString(){
     String aux = super.toString()+ 
               "Lado:" + getLado();
     return aux;
   }
} 

```
 
</td>
<td>
	
```Java
public class Circulo extends Figura{   
  private double radio;

  /*Constructores*/
  public Circulo(double unRadio,
                  String unColorR, 
                  String unColorL){
     super(unColorR,unColorL);
     setRadio(unRadio);
   }

  /* Metodos getRadio y setRadio*/
  
  /* Métodos calcularArea y 
      calcularPerimetro */

   public String toString(){
     String aux = super.toString()+
             "Radio:" + getRadio();
       return aux;
   }
} 	
```
</td>
</tr>
 
</table>

```Java
Cuadrado c = new Cuadrado(10,"rojo","negro");
System.out.println(c.toString());
Circulo c2 = new Circulo(5,"verde","azul");
System.out.println(c2.toString());

```

<h1 align="center">☕Java (Practica) </h1>
<div align="center">
<img src="https://media.giphy.com/media/1U4S8219ByoGk/giphy.gif"/>
 </div>
<br>

Indice
======
  
   * [Ingreso de datos desde teclado](#Ingreso_de_datos_desde_teclado)
   * [Generacion de datos aleatoria](#Generacion_de_datos_aleatoria) 
   * [Programacion Orientada a Objetos](#Programacion_Orientada_A_Objetos)
   * [Incluido en Java](#Incluido_En_Java)
   * [Desarrollo de Clases](#Desarrollo_de_Clases)






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

Programacion_Orientada_A_Objetos
================================
- GETTERS: 
```Java
public String getApellidoPaterno () {
    return apellidoPaterno;
}
```
- SETTERS: 
```Java
public void setApellidoPaterno(String apellido) {
    apellidoPaterno = apellido;
}
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

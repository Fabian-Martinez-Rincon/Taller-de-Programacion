<h1 align="center">☕Java (Teoria) </h1>


Indice
======
   * [Java y Matrices](#Java_Y_Matrices)
     * [Ingreso de datos desde teclado](#Ingreso_de_datos_desde_teclado)
     * [Generacion de datos aleatoria](#Generacion_de_datos_aleatoria) 
   * [Programacion Orientada a Objetos](#Programacion_Orientada_A_Objetos)
     * [Conceptos Basicos](#Conceptos_Basicos)
     * [Incluido en Java](#Incluido_En_Java)
   * [Desarrollo de Clases](#Desarrollo_de_Clases)

Java_Y_Matrices
===============

## Caracteristicas


#### 1)  Java es un lenguaje de propósito general.
#### 2) Permite generar aplicaciones multiplataforma.
#### 3) Plataforma Java
- Plataforma de desarollo : ***JDK***
- Plataforma de Ejecucion: ***JRE***

## Programa principal

#### 1) ***Main*** = "Programa principal". ***{ }*** delimita el cuerpo
#### 2) Sentencias de codigo separado por punto y coma ***( ; )***
#### 3) Se recomienda identar el codigo para facilitar su lectura.
#### 4) Comentarios :
- De lineas múltiples /* Esto es un comentario */
- De linea única //Esto es un comentario
#### 5) Case-sensitive(Sensible a las mayúsculas y minúsculas)

## Declaracion de variables

#### 1) Se declaran en la zona del codigo
- Tipo nombre Variable;  (Opcional: dar valor inicial)
#### 2) Convención de nombres: Comenzar con minúscula, luego cada palabra en mayúscula (CamelCase)



<img src="https://user-images.githubusercontent.com/55964635/134816601-9d9dba32-6229-4ca6-ada3-ab914b33993e.png" width="300"/>


#### 3) Asignación: nombreVariable = valor;
#### 4) Tipos primitivos: La variable almacena un valor

| Tipo Primitivo | Ejemplo |
| ------------- | ------------- |
| Boolean  | true false  |
| Char  | 'a' '0'  |
| int  | 102  |
| double  | 123,4  |

#### 5) String para manipular cadenas. Ejemplo "esto es un string"

### Manipulación de variables 


<table>

<td> 

**Operadores aritmeticos (Tipos de datos numericos)**

```+ Suma```
	
```- Resta```
	
```* Multiplicación```
	
```/ División```
	
```% Resto```

</td>
<td>

**Operadores unarios aritmeticos (Tipos de datos numericos)**

```++ (operador de ingremento)```
	
```-- (operador de decremento)```
	
	
</td>
 </tr>
 <tr>
 <td>
	 
**Operadores Relacionales (Tipos de datos primitivos)**

```== Igual```
	 
```!= Distinto```

```> Mayor```
	
```>= Mayor Igual```
	 
```< Menor```
	     
```<= Menor Igual```
	 
  </td>
 
 <td>
  
**Operadores condicionales**

```&& AND```
	 
```|| OR```
	 
```! NOT```
  
**Operador de concatenación para String**
	
```+ Operador de concatenación de Strings```
	 
 </td>
</tr>
</table>

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
## Estructuras de control
```Java
	if () {
	}
	while(){
	}
	for (int i = 0; i < 10; i++) {
        }
	do{
	}while()
```
## Arreglos
- Almacenan un número fijo de valores primitivos u Objetos (del mismo tipo)
- Acceso de forma directa a las posiciones
- Dimensión física: Se establece al crearlo
- Índice: entero, comenzando en 0.
- Declararcion ```int [] contador = new int[10];```
- Carga
```Java
for (int i = 0; i < 10; i++) {
        contador[i] = i;
    }
```
## Matrices
- Colección ordenada e indexada de elementos.
- Estructura de datos compuesta que se puede acceder utilizando ***dos índices (filas y columnas)***
- Caracteristicas
  - Homogénea
  - Estática
  - Indexada
  - Lineal
- Elementos Primitivos u objetos (del mismo tipo) 
- Declaracion ```int[][] tabla = new int[10][10];```
- Carga
```Java
for (i=0;i<x;i++)  
    for(j=0;j<y;j++)
	tabla[i][j] = j;  
```


Programacion_Orientada_A_Objetos
================================

Conceptos_Basicos
=================


![java-class-objects](https://user-images.githubusercontent.com/55964635/134823251-cd574cc8-b3ea-41e5-a48e-f4801a03d65c.png)

```Objeto```: Todo objeto tiene dos componentes, las caracteristicas (Atributos) y comportamiento (Metodos).

``Abstracción``: Un objeto del mundo real, definiendo qué lo caracteriza (Estado interno) y que acciones sabe realizar (Comportamiento)

```Estado Interno```: Compuesto por datos/atributos que caracterizan al objeto y relaciones con otros objetos con los cuales colabora. Se implementan a través de ***variables de instancia***

```Comportamiento```: Acciones o servicios a los que sabe responder el objeto. Se implementan a través de ```métodos de instancia``` que operan sobre el estado interno y los servicios que ofrece al exterior.

```Encapsulamiento ```: Que nadie se meta donde no le llaman :D (Los atributos internos de un objeto tienen que ser inaccesibles desde fuera).


```Abstraccion```

```Mensajes``` : proboca la ejecución del método indicado por el nombre del mensaje.
- Puede llevar datos (parámetros del método)
- Puede devolver un dato (resultado del método) 

```Clase```: Una clase es una plantilla que define la forma de un objeto, en ella se agrupan atributos y métodos que operarán sobre esos datos (Es como un molde).

```Cracion```: Se crea a partir de una clase (El objeto es un organismo de una clase)

```Instanciación```: Se realiza enviando un mensaje de creación a la clase

  - Reserva de espacio para un objeto.
  - Ejecución de código inicializador o ***constructor***  ```new Triangulo(10,10,10,"amarillo","violeta")``` 
- Devuelve la referencia al objeto.
- Asocia la referencia a una variable (A través de ella podemos enviarle mensajes al objeto)

```Metodo```: (Comportamiento)

![image](https://user-images.githubusercontent.com/55964635/134822834-9c6cd0e7-f760-4ad4-ad11-7f209d0e7f63.png)

```Acceso```: Los atributos (también llamados variables) de una clase generalmente son privados por lo tanto para acceder a ellos necesitamos de ciertos métodos, los métodos que nos permiten este acceso son los métodos getters y setters también llamados métodos de acceso.

- GETTERS: Son los encargados de acceder (recuperar u obtener) un valor ya asignado a un atributo y utilizarlo para cierto método, estos métodos siempre retornan un valor y el tipo de valor de retorno del método variara dependiendo del tipo del atributo al que se accede.
```Java
public String getApellidoPaterno () {
    return apellidoPaterno;
}
```

- SETTERS: Son los encargados de asignar un valor  a un atributo, estos métodos nunca retornaN un valor, es decir, siempre son de tipo void, y solo permiten dar acceso a ciertos atributos que el usuario puede modificar.
```Java
public void setApellidoPaterno(String apellido) {
    apellidoPaterno = apellido;
}
```


Incluido_en_Java
================

- Java incluye bibliotecas de clases que permiten crear objetos de uso común.
- Ej: clase String, clase Point2D.Double, clase Dato, colecciones,...
- En general se crean enviando un mensaje de creacción a la clase (new).
- En java los strings son objetos, tenemos dos formas de inicializarlo.
  - ```String saludo = "hola";```
  - ```String saludo = new String("hola");```

- Informacion de Cadenas.
```Java
cadena.length(); 	//Nos devuelve el tamaño que tiene la cadena
cadena charAt(nro); 	//Devuelve el caracter indicado por el índice
```
- Comparación de Cadenas.
```Java
cadena.equals(cadena2) 		  //Compara dos cadenas y retorna true si son iguales
cadena.toUpperCase();  	 	  //Convierte la cadena en mayusculas
cadena.toLowerCase();  		  //Convierte la cadena en minusculas
cadena.equalsIgnoreCase(cadena2); //Compara dos cadenas omitiendo si los carecteres están en mayúsculas o en minúsculas.
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
### Declaración del estado
```Java
public class Libro {
   /* Declaración del estado */
   private String titulo;
   private String primerAutor; 
   private String editorial;
   private int añoEdicion;
   private String ISBN; 
   private double precio;  
}
```

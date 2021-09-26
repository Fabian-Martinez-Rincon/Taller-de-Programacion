<h1 align="center">☕Java </h1>
<div align="center">
<img src="https://media.giphy.com/media/eMm0dTIwACfRVeZTly/giphy.gif?cid=ecf05e47do6ipo17lhxb28y01yb2rqxyumdqzzodwqaz6und&rid=giphy.gif&ct=g"/>
 </div>
<br>



## Caracteristicas


#### 1)  Java es un lenguaje de propósito general.
#### 2) Permite generar aplicaciones multiplataforma.
#### 3) Plataforma Java
- Plataforma de desarollo : ***JDK***
- Plataforma de Ejecucion: ***JRE***

## Programa principal

#### 1) ***Main*** = "Programa principal". ***{ }*** delimita el cuerpo
#### 2) Sentencias de codigo separado por punto yu coma ***( ; )***
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

## Ingreso de datos desde teclado

```Java
package practica1;

import PaqueteLectura.Lector; 	

public class Pruebas {
    public static void main(String[] args) {
    System.out.println("Ingrese nombre");
    String nombre = Lector.leerString();    //Lee y devuelve el string ingresado antes del enter
    System.out.println("Ingrese si trabaja (true/false)");  
    boolean trabaja = Lector.leerBoolean(); //Lee y devuelve el boolean ingresado antes del enter
    System.out.println("Ingrese edad");
    int edad = Lector.leerInt();            //Lee y devuelve el int ingresado antes del enter
    System.out.println("Ingrese sueldo");
    double sueldo = Lector.leerDouble();    //Lee y devuelve el double ingresado antes del enter
        
    System.out.println("N:" + nombre + " T:" + trabaja + " E:" + edad + " S:" + sueldo );
    }
}
```
## Generación de datos aleatoria
```Java
package practica1;

import PaqueteLectura.GeneradorAleatorio;

public class Pruebas {
    public static void main(String[] args) {
    GeneradorAleatorio.iniciar();                             //inicia el generador aleatorio
    int valor1 = GeneradorAleatorio.generarInt(10);    //genera un int entre 0 y 9
    double valor2 = GeneradorAleatorio.generarDouble(10); //genera un double entre 0 y 9
    boolean valor3 = GeneradorAleatorio.generarBoolean();  //genera un boolean
    String valor4= GeneradorAleatorio.generarString(4);  //genera un string de long. 4
    }
}
```

Indice
=================

```Java
+,-,*,/,%,++,--,==,!=,>,>=,<,<=, &&, ||,!
import PaqueteLectura.GeneradorAleatorio;
GeneradorAleatorio.iniciar();
import PaqueteLectura.Lector;
int edad = GeneradorAleatorio.generarInt(10);
int edad = Lector.leerInt();
int [] contador = new int[10];
int [][] tabla = new int[3][4];
Persona persona1 = new Persona();
int alturas[]=new int[dimF];

getNombre() retorna el nombre (String) de la persona
getDNI() retorna el dni (int) de la persona
getEdad() retorna la edad (int) de la persona
setNombre(X) modifica el nombre de la persona al “String” pasado por parámetro (X)
setDNI(X) modifica el DNI de la persona al “int” pasado por parámetro (X)
setEdad(X) modifica la edad de la persona al “int” pasado por parámetro (X)
toString() retorna un String que representa al objeto. Ej: “Mi nombre es Mauro, mi DNI es 
11203737 y tengo 70 años” 

== Compara referencias de objetos (Como las direcciones)
```


Cargar_Matriz
=============

```Java
package practica1;
import PaqueteLectura.GeneradorAleatorio;
public class Ejercicio4 {
    public static void main(String[] args) {
        GeneradorAleatorio.iniciar();
        int x=10,y = 10;
        int[][] tabla = new int[x][y];
        int i, j;
	
        for (i=0;i<x;i++)  //Cargar Matriz
            for(j=0;j<y;j++)
                tabla[i][j] = GeneradorAleatorio.generarInt(10);    
        
        for (i=0;i<x;i++){  //Imprimir Matriz
            for(j=0;j<y;j++)
                System.out.print(tabla[i][j] + " ");
            System.out.println();
        }
    }
}
```

Inicializar_Matriz
==================
```Java
for (piso = 0; piso < filas; piso++) {
   for (plaza = 0; plaza < cols; plaza++) {
      estacionamiento[piso][plaza] = null;  //inicializo el estacionamiento vacio
   }
}
```


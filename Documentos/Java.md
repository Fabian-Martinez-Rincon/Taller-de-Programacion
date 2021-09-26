<h1 align="center">☕Java </h1>
<div align="center">
<img src="https://media.giphy.com/media/eMm0dTIwACfRVeZTly/giphy.gif?cid=ecf05e47do6ipo17lhxb28y01yb2rqxyumdqzzodwqaz6und&rid=giphy.gif&ct=g"/>
 </div>
<br>

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


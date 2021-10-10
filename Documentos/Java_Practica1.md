<h1 align="center">Practica 1</h1>

<br>

Preguntas
=========
1 ) Escriba un programa que imprima en consola el factorial de un número N (ingresado por teclado, N > 0). Ejemplo: para N = 5 deberia imprimir ```5! = 120```. [Resolución](#Ejercicio_1)

2 ) Escriba un programa que imprima en consola el factorial de todos los números entre 1 y 9 ¿Qué modificación debe hacer para imprimir el factorial de los números impares solamente?. [Resolución](#Ejercicio_2)

3 ) Escriba un programa que lea las alturas de los 15 jugadores de un equipo de básket y las almacene en un vector. Luego informe. [Resolución](#Ejercicio_3)
  - La altura promedio
  - La cantidad de jugadores con altura por encima del promedio

4 ) Escriba un programa que defina una matriz de enteros de tamaño 10x10. Inicialice la matriz con números aleatorios entre 0 y 200. [Resolución](#Ejercicio_4)

Luego realice las siguientes operaciones.
- Mostrar el contenido de la matriz en consola.
- Calcular e informar la suma de todos los elementos almacenados entre las filas 2 y 9 y las columnas 0 y 3
- Generar un vector de 10 posiciones donde cada posición i contiene la suma de los elementos de la columna i de la matriz.
- Lea un valor entero e indique si se encuentra o no en la matriz. En caso de encontrarse indique su ubicación (fila y columna) en caso contrario imprima "No se encontró el elemento".

5 )  Un edificio de oficinas está conformado por 8 pisos y 4 oficinas por piso. Realice un programa que permita informar la cantidad de personas que concurrieron a 
cada oficina de cada piso. Para esto, simule la llegada de personas al edificio de la siguiente manera: a cada persona se le pide el nro. de piso y nro. de oficina a la cual 
quiere concurrir. La llegada de personas finaliza al indicar un nro. de piso 9. Al finalizar la llegada de personas, informe lo pedido. [Resolución](#Ejercicio_5)

6 ) Escriba un programa que simule el ingreso de personas a un banco. Cada persona que ingresa indica la operación que desea realizar (0: “cobro de cheque” 1: 
“depósito/ extracción en cuenta” 2: “pago de impuestos o servicios” 3: “cobro de jubilación” 4: “cobro de planes”). La recepción de personas culmina cuando un 
empleado ingresa la operación 5 (cierre del banco). Informar la cantidad de personas atendidas por cada operación y la operación más solicitada. [Resolución](#Ejercicio_6)

<h1 align="center">Parte 2</h1>

1 ) Se dispone de una clase Persona (ya implementada en la carpeta tema2). Un objeto persona puede crearse sin valores iniciales o enviando en el mensaje de creación el nombre, DNI y edad (en ese orden). Un objeto persona responde a los siguientes mensajes: 

```
getNombre() retorna el nombre (String) de la persona
getDNI() retorna el dni (int) de la persona
getEdad() retorna la edad (int) de la persona
setNombre(X) modifica el nombre de la persona al “String” pasado por parámetro (X)
setDNI(X) modifica el DNI de la persona al “int” pasado por parámetro (X)
setEdad(X) modifica la edad de la persona al “int” pasado por parámetro (X)
toString() retorna un String que representa al objeto. Ej: “Mi nombre es Mauro, mi DNI es 
11203737 y tengo 70 años
```

Realice un programa que cree un objeto persona con datos leídos desde teclado. Luego muestre en consola la representación de ese objeto en formato String. 

Piense y responda: ¿Qué datos conforman el estado del objeto persona? ¿Cómo se implementan dichos datos? ¿Qué ocurre cuando se le envía un mensaje al objeto?

2 ) Realice un programa que cree un objeto persona con datos leídos desde teclado. Luego muestre en consola la representación de ese objeto en formato String. 
Piense y responda: ¿Qué datos conforman el estado del objeto persona? ¿Cómo se implementan dichos datos? ¿Qué ocurre cuando se le envía un mensaje al objeto?
- Informe la cantidad de personas mayores de 65 años.
- Muestre la representación de la persona con menor DNI

3 )  Indique qué imprimen los siguientes programas. Responda: ¿Qué efecto tiene la asignación utilizada con objetos? ¿Qué se puede concluir acerca de la comparación con == 
y != utilizada con objetos? ¿Qué retorna el mensaje equals cuando se le envía a un String?

![image (2)](https://user-images.githubusercontent.com/55964635/136676882-ddb5b385-d184-4577-96d4-d454b17262f3.png)

4- Se realizará un casting para un programa de TV. El casting durará a lo sumo 5 días y en 
cada día se entrevistarán a 8 personas en distinto turno.

- Simular el proceso de inscripción de personas al casting. A cada persona se le pide nombre, DNI y edad y se la debe asignar en un día y turno de la siguiente manera: las
personas primero completan el primer día en turnos sucesivos, luego el segundo día y así siguiendo. La inscripción finaliza al llegar una persona con nombre “ZZZ” o al cubrirse los 40 cupos de casting.

```Una vez finalizada la inscripción:``` 

- Informar para cada día y turno el nombre de la persona a entrevistar. 

NOTA: utilizar la clase Persona y pensar en la estructura de datos a utilizar.

5 )  Realice un programa que cargue un vector con 10 strings leídos desde teclado. El vector generado tiene un mensaje escondido que se forma a partir de la primera letra de cada string. Muestre el mensaje escondido en consola.
```
NOTA: La primera letra de un string se obtiene enviándole el mensaje charAt(0) al objeto string. 
Probar con: humo oso lejos ala menos usado nene de ocho ! Debería imprimir: holamundo!
```
6 ) Se dispone de la clase Partido (ya implementada en la carpeta tema2). Un objeto partido representa un encuentro entre dos equipos (local y visitante). Un objeto partido 
puede crearse sin valores iniciales o enviando en el mensaje de creación el nombre del equipo local, el nombre del visitante, la cantidad de goles del local y del visitante (en ese orden). Un objeto partido sabe responder a los siguientes mensajes:

```
getLocal() retorna el nombre (String) del equipo local
getVisitante() retorna el nombre (String) del equipo visitante
getGolesLocal() retorna la cantidad de goles (int) del equipo local
getGolesVisitante() retorna la cantidad de goles (int) del equipo visitante
setLocal(X) modifica el nombre del equipo local al “String” pasado por parámetro (X)
setVisitante(X) modifica el nombre del equipo visitante al “String” pasado por parámetro (X)
setGolesLocal(X) modifica la cantidad de goles del equipo local “int” pasado por parámetro (X)
setGolesVisitante(X) modifica la cantidad de goles del equipo visitante “int” pasado por parámetro (X)
hayGanador() retorna un boolean que indica si hubo (true) o no hubo (false) ganador
getGanador() retorna el nombre (String) del ganador del partido (si no hubo retorna un String 
vacío). 
hayEmpate() retorna un boolean que indica si hubo (true) o no hubo (false) empate
```

Implemente un programa que cargue un vector con a lo sumo 20 partidos disputados en el campeonato. La información de cada partido se lee desde teclado hasta ingresar uno con 
nombre de visitante “ZZZ” o alcanzar los 20 partidos. Luego de la carga informar:
- La cantidad de partidos que ganó River.
- El total de goles que realizó Boca jugando de local.
- El porcentaje de partidos finalizados con empate.

<h1 align="center">Teoria</h1>

<h1 align="center">Resoluciones</h1>

Ejercicio_1
===========
```Java
package practica1;

public class Ejercicio1 {

    public static void main(String[] args) {
        int num = 5;
        System.out.println("!"+num);
        int factorial = 1;
        for (int i = 1; i <= num; i++) {
            factorial = factorial * i; 
        }
        System.out.println("!"+factorial);
    }
}
```
Ejercicio_2
===========
```Java
package practica1;
public class Pruebas {
    public static void main(String[] args) {
        int num = 1;
        int num2 = 9;
        int factorial = 1;
        for (int i = num; i <= num2; i++) {
            System.out.print("Numero: !"+i);
            for (int j = 1; j <= i; j++) {
                factorial = factorial * j;
            }
            System.out.print(" = "+factorial);
            System.out.println("");
            factorial = 1;
        }
    }
}
```
Ejercicio_3
===========
```Java
package practica1;
import PaqueteLectura.GeneradorAleatorio;
public class Pruebas {
    public static void main(String[] args) {
        int dimF = 15;
        int [] jugadores = new int[dimF];
        int altura;
        int total = 0;
        double promedio;
        GeneradorAleatorio.iniciar(); 

        for (int i = 0; i < dimF; i++) {
            altura = GeneradorAleatorio.generarInt(10);
            jugadores[i] = altura;
            total = total + jugadores[i];
        }
        promedio = total / dimF;
        System.out.println("La altura promedio es: "+ promedio);
        total = 0;
        
        for (int i = 0; i < dimF; i++) {
            if (jugadores[i]>promedio){
                total++;
            }
        }
        System.out.println("La cantidad de jugadores que superan el promedio es : "+ total);
    }
}
```
Ejercicio_4
===========
```Java
package practica1;
import PaqueteLectura.GeneradorAleatorio;
import PaqueteLectura.Lector;
public class Pruebas {
    public static void main(String[] args) {
        GeneradorAleatorio.iniciar();
        //1. definir la matriz de enteros de tamaño 10x10 e iniciarla con números aleatorios entre 0 y 200 
        int x=10,y = 10;
        int[][] tabla = new int[x][y];
        int i= 0, j = 0;
        for (i=0;i<x;i++)
            for(j=0;j<y;j++)
                tabla[i][j] = GeneradorAleatorio.generarInt(10); 
        
        //2. mostrar el contenido de la matriz en consola
        for (i=0;i<x;i++){
            for(j=0;j<y;j++){
                System.out.print(tabla[i][j] + " ");
            }
            System.out.println();
        }
        
        //3. calcular e informar la suma de todos los elementos almacenados entre las filas 2 y 9 y las columnas 0 y 3
        int suma = 0;
        System.out.println("____________________");
        
        for (i=2;i<9;i++){
            for(j=0;j<3;j++){
                System.out.print(tabla[i][j] + " ");
                suma = suma + tabla[i][j];
            }
            System.out.println();
        }
        System.out.println("La suma es: "+ suma);
        System.out.println("____________________");
        
        //4. generar un vector de 10 posiciones donde cada posición i contiene la suma de la columna i de la matriz 
        int [] nuevo = new int[10];
        for (i = 0; i < 10; i++) {  
            suma = 0;
            for(j=0;j<10;j++){
                suma = suma + tabla[j][i];
            }
            nuevo[i] = suma;
            System.out.print(nuevo[i]+",");
        }
        System.out.println();
        System.out.println("_______________________");
        //5. lea un valor entero e indique si se encuentra o no en la matriz. En caso de encontrarse indique su ubicación (fila y columna)
        //   y en caso contrario imprima "No se encontró el elemento".
        System.out.println("Ingrese un numero: ");
        int numero = Lector.leerInt();
        boolean encontro = false;
        int fila = 0;  //Java cuenta las posiciones a partir del 0
        int columna = 0;
        i = 0;
        while ((encontro == false) && (i<x)) {   
            j = 0;
            while ((encontro == false) && (j<y)){
                if (tabla[i][j] == numero){
                    encontro = true;
                    fila = i;
                    columna = j;
                }
                j++;
            }
            i++;
        }
        if (encontro == true){
            System.out.print("Se encuentra en la fila "+ fila+ " columna "+ columna);
        }
        else 
            System.out.println("No se encontro el elemento");
        System.out.println();
    }
}
```

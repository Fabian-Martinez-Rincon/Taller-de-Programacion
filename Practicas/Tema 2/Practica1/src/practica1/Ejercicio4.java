/*
4- Escriba un programa que defina una matriz de enteros de tamaño 10x10. 
Inicialice la matriz con números aleatorios entre 0 y 200. 
Luego realice las siguientes operaciones: 
- Mostrar el contenido de la matriz en consola. 
- Calcular e informar la suma de todos los elementos almacenados entre las 
filas 2 y 9 y las columnas 0 y 3
- Generar un vector de 10 posiciones donde cada posición i contiene la suma 
de los elementos de la columna i de la matriz.
- Lea un valor entero e indique si se encuentra o no en la matriz. En caso de 
encontrarse indique su ubicación (fila y columna) en caso contrario 
imprima “No se encontró el elemento”.
NOTA: Dispone de un esqueleto para este programa en Ej04Matrices.java
 */
package practica1;
import PaqueteLectura.GeneradorAleatorio;
import PaqueteLectura.Lector;
public class Ejercicio4 {
    public static void main(String[] args) {
        GeneradorAleatorio.iniciar();
        int x=10,y = 10;
        int[][] tabla = new int[x][y];
        int i, j;
        /*
        int numero = Lector.leerInt();
        int[][] posicion = new int[1][1];*/
        
        for (i=0;i<x;i++)
            for(j=0;j<y;j++)
                tabla[i][j] = GeneradorAleatorio.generarInt(10); 
        
        
        for (i=0;i<x;i++){
            for(j=0;j<y;j++){
                System.out.print(tabla[i][j] + " ");
                /*if (tabla[i][j] == numero){
                    posicion[1][1] = tabla[i][j] ; 
                }*/
            }
            System.out.println();
        }
        
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
        
    }
}


/**
 * Ejemplo de operaciones típicas con matrices: inicializar, recorrer, sumar, imprimir
 */

package tema1;
import PaqueteLectura.GeneradorAleatorio;

public class Demo08Matrices {

public static void main(String[] args) {
    int[][] tabla = new int[3][4];
    int i, j;
    
    /* Inicializamos la matriz */
    for (i=0;i<3;i++)
        for(j=0;j<4;j++)
            tabla[i][j] = GeneradorAleatorio.generarInt(10);
    
    /* Imprimimos la matriz de manera más clara **/
    System.out.println("Elementos de la matriz numeros: ");
    for (i = 0; i < 3; i++) {
      for (j = 0; j < 4; j++) {
        System.out.print(tabla[i][j] + " ");
      }
      System.out.println();
    }
    
    /* Imprimimos una columna completa **/
    int columna = 1;
    System.out.println();
    System.out.print("Elementos de la columna "+columna+": ");
    for(i=0;i<3;i++)
           System.out.print(tabla[i][columna]+ " ");
    System.out.println();

    /* Sumamos los elementos de la fila 2 */
    int fila = 2, suma=0;
    for(j=0;j<4;j++)
        suma = suma + tabla[fila][j]; 
    System.out.print("La suma de la fila "+ fila + " es: " + suma);
    
    System.out.println();
    
 }

}


/*
2- a) Realice un nuevo programa considerando que ahora el estacionamiento está 
dividido en 5 pisos y cada piso tiene 10 plazas. Por cada patente generada, debe 
ingresar por teclado el número de piso y número de plaza donde debe estacionar el 
auto, debiendo marcar ese lugar como ocupado en una estructura de datos adecuada. 
Nota: considere que el lugar ingresado (número de piso, número de plaza) está 
desocupado y dichos números son válidos.
 b) Informe cuál es el piso más ocupado.
*/
package practica1;
import PaqueteLectura.GeneradorAleatorio;

public class problema2 {
    public static void main(String[] args) {
        int maximo = -1;
        final int PISO = 5, PLAZA = 4;
        int[][] A = new int[PISO][PLAZA]; //Se crea una matriz de 5 filas y 4 columnas
        int i,j;
        System.out.println("Lectura de elementos de la matriz: ");
        for (i = 0; i < PISO; i++) {
            for (j = 0; j < PLAZA; j++) {
                A[i][j] = GeneradorAleatorio.generarInt(10);
                System.out.println("A[" + i + "][" + j + "]= "+ A[i][j]);
            }
        }
        //Mostrar por pantalla los valores que contiene la matriz
        System.out.println("valores introducidos:");
        for (i = 0; i < A.length; i++) { 
            for (j = 0; j < A[i].length; j++) {
                if (A[i][j]> maximo) {
                    maximo = A[i][j] ;
                }
                System.out.print(A[i][j] + " ");
            }
            System.out.println();
        }
        System.out.println("El maximo es: "+ maximo);
    }
}

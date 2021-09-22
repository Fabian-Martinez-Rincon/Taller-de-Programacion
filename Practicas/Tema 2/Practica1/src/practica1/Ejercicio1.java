/*
1- Escriba un programa que imprima en consola el factorial de un número N 
(ingresado por teclado, N > 0). Ejemplo: para N=5 debería imprimir 5! = 120
 */
package practica1;

public class Ejercicio1 {

    public static void main(String[] args) {
        int num = 5;
        System.out.println("!"+num);
        int contador = num;
        int factorial = 1;
        for (int i = 0; i < num; i++) {
            factorial = factorial * contador; 
            contador--;
        }
        System.out.println("!"+factorial);
    }
    
}

/*
2- Escriba un programa que imprima en consola el factorial de todos los números 
entre 1 y 9. ¿Qué modificación debe hacer para imprimir el factorial de los 
números impares solamente?

 */
package practica1;

public class Ejercicio2 {
    public static void main(String[] args) {
        int num = 1;
        int num2 = 9;
        int contador = num;
        int factorial = 1;
        for (int i = num; i <= num2; i++) {
            System.out.println("Numero: "+i);
            contador = i;
            for (int j = 0; j < i; j++) {
                factorial = factorial * contador; 
                contador--;
            }
            System.out.println("!"+factorial);
            factorial = 1;
        }
        
    }
}

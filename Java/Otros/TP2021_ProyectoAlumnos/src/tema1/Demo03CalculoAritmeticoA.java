/*
Ejemplo operadores aritméticos
 */
package tema1;

/**
 *
 * @author vsanz
 */

class Demo03CalculoAritmeticoA {
    public static void main (String[] args) {
        int result = 1 + 2;        // result es 3
        System.out.println("1 + 2 = " + result);

        int original_result = result;
        result = result - 1;       // result es 2
        System.out.println(original_result + " - 1 = " + result);

        original_result = result;
        result = result * 2;       // result es 4
        System.out.println(original_result + " * 2 = " + result);

        original_result = result;
        result = result / 2;       // result es 2
        System.out.println(original_result + " / 2 = " + result);

        original_result = result;
        result = result % 2;       // result es 0
        System.out.println(original_result + " % 2 = " + result);
  
    }
}



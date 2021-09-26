/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package practica1;

public class Pruebas {
    public static void main(String[] args) {
        String cadena = new String("Cadena de Texto");
        String cadena2 = new String("cadena de Texto");
        System.out.println(cadena.charAt(2));  // Devuelve la letra 'd'
        System.out.println(cadena.length());  
        System.out.println(cadena.charAt(2));  
        System.out.println(cadena.toUpperCase());  
        System.out.println(cadena.toLowerCase());  
        System.out.println(cadena.equalsIgnoreCase(cadena2));

    }
}


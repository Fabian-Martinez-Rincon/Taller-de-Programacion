/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package practica1;

import PaqueteLectura.GeneradorAleatorio;

public class Pruebas {
    public static void main(String[] args) {
    GeneradorAleatorio.iniciar();                             //inicia el generador aleatorio
    System.out.println(GeneradorAleatorio.generarInt(10));    //genera un int entre 0 y 9
    System.out.println(GeneradorAleatorio.generarDouble(10)); //genera un double entre 0 y 9
    System.out.println(GeneradorAleatorio.generarBoolean());  //genera un boolean
    System.out.println(GeneradorAleatorio.generarString(4));  //genera un string de long. 4
    }
}

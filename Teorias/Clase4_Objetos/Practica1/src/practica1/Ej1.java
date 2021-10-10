/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


 /*1-  Realice  un  programa  que  genere  aleatoriamente  números  (patentes)  hasta  el  0.  Por 
cada una debe informar en consola si el auto tiene o no permitido el paso (solo pasan los 
autos con patentes de números pares). */

import PaqueteLectura.GeneradorAleatorio; //para generar valores aleatorios

public class Ej1 {
    public static void main(String[] args) { 
        GeneradorAleatorio.iniciar(); // sin esta línea, se generarán siempre los mismos valores

        int patente = GeneradorAleatorio.generarInt(1000); //genera un numero de 0 a 999
        while (patente != 0) {
            if (patente % 2 == 0) {
                System.out.println("el auto con patente: " + patente + " tiene  permitido el paso");
            } else {
                System.out.println("el auto con patente: " + patente + " no tiene  permitido el paso");
            }
            patente = GeneradorAleatorio.generarInt(1000);
        }
    }
}

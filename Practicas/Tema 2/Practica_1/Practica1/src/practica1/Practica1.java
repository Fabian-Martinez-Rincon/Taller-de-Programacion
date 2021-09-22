/*1- Realice un programa que genere aleatoriamente números (patentes) hasta el 0. Por 
cada una debe informar en consola si el auto tiene o no permitido el paso (solo pasan los 
autos con patentes de números pares).*/
package practica1;
import PaqueteLectura.Lector; 
import PaqueteLectura.GeneradorAleatorio;
public class Practica1 {
  
    public static void main(String[] args) {
        // TODO code application logic here
        GeneradorAleatorio.iniciar();                   
        System.out.println(GeneradorAleatorio.generarInt(10));    
        int num = GeneradorAleatorio.generarInt(10);
        while (num != 0) {
            System.err.println("Numero: "+ num);
            if ((num % 2)==0) {
                System.err.println("El auto tiene permitido el paso :D ");
            }
            else
                System.err.println("No tiene permitido el paso :( ");
            num = GeneradorAleatorio.generarInt(10);
            
        }
        }
}

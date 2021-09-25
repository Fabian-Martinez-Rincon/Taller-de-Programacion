/*
6- Escriba un programa que simule el ingreso de personas a un banco. Cada 
persona que ingresa indica la operación que desea realizar (0: “cobro de cheque” 1: 
“depósito/ extracción en cuenta” 2: “pago de impuestos o servicios” 3: “cobro de 
jubilación” 4: “cobro de planes”). La recepción de personas culmina cuando un 
empleado ingresa la operación 5 (cierre del banco). Informar la cantidad de 
personas atendidas por cada operación y la operación más solicitada. 
 */
package practica1;

import PaqueteLectura.GeneradorAleatorio;
public class Ejercicio6 {
    public static void main(String[] args) {
        GeneradorAleatorio.iniciar();
        int nro;
        int [] contador = new int[4];
        boolean cumple = false;
        while (cumple == false) {  
            nro = 1+(GeneradorAleatorio.generarInt(5));
            System.out.println("nro: "+ nro);
            switch (nro) 
            {
            case 1:   System.out.println("Cobro de cheque"); contador[0]++;
                     break;
            case 2:   System.out.println("Deposito / Extraccion de cuenta");contador[1]++;
                     break;
            case 3:   System.out.println("Pago de impuestos o servicios");contador[2]++;
                     break;
            case 4:   System.out.println("Cobro de jubilacion");contador[3]++;
                     break;
            case 5:   cumple = true;
                     break;
            default:  System.out.println("Numero invalido ");
                     break;
            }            
        }
        int maxima = -1;
        int posMaxima = -1;
        for (int i = 0; i < 4; i++) {
            System.out.println("Vector: "+i+" Cantidad: " + contador[i]);
            if (contador[i] > maxima){
                maxima = contador[i];
                posMaxima = i;
            }
        }
        posMaxima++; //Pongo esto, para que sea acorde a los numeros impuestos por el enunciado :D
        System.out.println("La opcion mas elegida es : "+ posMaxima);
        
    }
    
}

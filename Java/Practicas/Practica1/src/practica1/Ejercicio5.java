/*
5- Un edificio de oficinas está conformado por 8 pisos y 4 oficinas por piso. Realice 
un programa que permita informar la cantidad de personas que concurrieron a 
cada oficina de cada piso. Para esto, simule la llegada de personas al edificio de la 
siguiente manera: a cada persona se le pide el nro. de piso y nro. de oficina a la cual 
quiere concurrir. La llegada de personas finaliza al indicar un nro. de piso 9. Al 
finalizar la llegada de personas, informe lo pedido.
 */
package practica1;


import PaqueteLectura.GeneradorAleatorio;

public class Ejercicio5 {
    public static void main(String[] args) {
        GeneradorAleatorio.iniciar();
        
        int x=8,y = 4;
        int[][] edificio = new int[x][y];
	
        int nro_piso = GeneradorAleatorio.generarInt(9); //El 9 es solo por el corte
        System.out.println("Piso: "+ nro_piso);
        int nro_oficina = GeneradorAleatorio.generarInt(4); //Oficinas de 0 a 3 (es implicito por el vector)
        System.out.println("Oficina: "+ nro_oficina);
        
        while (nro_piso != 8) { //El 8 seria una representacion del 9 si contamos la planta 0
            edificio[nro_piso][nro_oficina]++;
            nro_piso = GeneradorAleatorio.generarInt(9);
            System.out.println("Piso: "+ nro_piso);
            nro_oficina = GeneradorAleatorio.generarInt(4);
            System.out.println("Oficina: "+ nro_oficina);
        }        
        
        System.out.println("______________________");
 
        for (int i=0;i<x;i++){  //Imprimir Matriz
            for(int j=0;j<y;j++)
                System.out.print(edificio[i][j] + " ");
            System.out.println();
        }
            
    }
}
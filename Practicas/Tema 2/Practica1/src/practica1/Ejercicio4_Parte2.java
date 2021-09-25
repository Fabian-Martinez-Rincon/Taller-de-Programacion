/*
4- Se realizará un casting para un programa de TV. El casting durará a lo sumo 5 días y en 
cada día se entrevistarán a 8 personas en distinto turno.
a) Simular el proceso de inscripción de personas al casting. A cada persona se le pide
nombre, DNI y edad y se la debe asignar en un día y turno de la siguiente manera: las
personas primero completan el primer día en turnos sucesivos, luego el segundo día y así 
siguiendo. La inscripción finaliza al llegar una persona con nombre “ZZZ” o al cubrirse los 
40 cupos de casting.
Una vez finalizada la inscripción: 
b) Informar para cada día y turno el nombre de la persona a entrevistar.
NOTA: utilizar la clase Persona y pensar en la estructura de datos a utilizar.
 */
package practica1;
import PaqueteLectura.GeneradorAleatorio;

public class Ejercicio4_Parte2 {
    public static void main(String[] args) {
        GeneradorAleatorio.iniciar();
        int dias= 5, entrevistas= 8;
        String nom;
        Persona [][] inscripciones= new Persona[dias][entrevistas];
        int i= 0,j;
        nom= GeneradorAleatorio.generarString(5);
        
        while (!nom.equals("ZZZ")&&(i<dias)) {
            j = 0;
            while (!nom.equals("ZZZ")&&(j<entrevistas)) {
                inscripciones[i][j]= new Persona();
                inscripciones[i][j].setNombre(nom);
                inscripciones[i][j].setDNI(GeneradorAleatorio.generarInt(10));
                inscripciones[i][j].setEdad(GeneradorAleatorio.generarInt(10));
                j++;
            }
            i++;
            nom= GeneradorAleatorio.generarString(5);
        }
        for (i=0;i<dias;i++){  //Imprimir Matriz
            System.out.println("Semana : " + (i+1));
            for(j=0;j<entrevistas;j++)
                System.out.println("Para el dia "+ (j+1) +" de la semana "+ (i+1)+" se entevista a "+inscripciones[i][j].getNombre() ); 
        }
    }
}

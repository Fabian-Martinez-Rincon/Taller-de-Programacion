/*2- Utilizando la clase Persona (ya implementada). Realice un programa que almacene en 
un vector 15 personas. La información de cada persona debe leerse de teclado. Luego de 
almacenar la información:
 - Informe la cantidad de personas mayores de 65 años.
 - Muestre la representación de la persona con menor DNI.
*/
package practica1;

import PaqueteLectura.GeneradorAleatorio;

public class Ejercicio2_Parte2 {
    public static void main(String[] args) {
        GeneradorAleatorio.iniciar();
        
        int cant= 15, edad= 65;
        Persona [] vp= new Persona[cant];
        int i;
        for (i=0; i<cant; i++){
            vp[i]= new Persona();
            vp[i].setNombre(GeneradorAleatorio.generarString(5));
            System.out.println("Nombre: " + vp[i].getNombre()); 
            vp[i].setDNI(GeneradorAleatorio.generarInt(10));
            System.out.println("DNI: " + vp[i].getDNI()); 
            vp[i].setEdad(GeneradorAleatorio.generarInt(100));
            System.out.println("Edad: "+ vp[i].getEdad()); 
            System.out.println("_______________________________");
        }
        
        int superan_65= 0;
        
        //Para calcular a la persona con menor dni
        int min=999;
        int min_pos = 0;
        for (i=0; i<cant; i++){
            if (vp[i].getEdad()>edad) {
                superan_65++;
            }
            if (vp[i].getDNI()<min) {
                min= vp[i].getDNI();
                min_pos = i;
            }
        }
        System.out.println("La cantidad de personas con mas de 65 años es: " + superan_65); 
        System.out.println(vp[min_pos].toString());
    }
}

/*
5- Realice un programa que cargue un vector con 10 strings leídos desde teclado. El vector 
generado tiene un mensaje escondido que se forma a partir de la primera letra de cada 
string. Muestre el mensaje escondido en consola.
NOTA: La primera letra de un string se obtiene enviándole el mensaje charAt(0) al objeto 
string. Probar con: humo oso lejos ala menos usado nene de ocho ! Debería imprimir: 
holamundo!

 */
package FABIAN_SEGUNDO_SEMESTRE;
import PaqueteLectura.Lector;
public class Ejercicio5_Parte2 {
    public static void main(String[] args) {
        String mensajes[]=new String[10];  
        for (int i = 0; i < 10; i++) {
            mensajes[i]=String.valueOf(Lector.leerString().charAt(0)); //Saco el primer digito y como me lo pasa a tipo char
            System.out.println(mensajes[i]);                           //Lo tengo que pasar a string otra vez (por eso el valueof)
        }
        for (int i = 0; i < 10; i++) {
            System.out.print(mensajes[i]);  //Hola mundo ! omg que originales
        }
        System.out.println();
    }
}

//FIJATE QUE PRIMERO DEBERIAS CARGAR EL VECTOR DE STRINGS CON PALABRAS ENTERAS
// Y DESPUES RECORRER EL VECTOR AGARRANDO SOLO EL PRIMER CARACTER DE CADA POSICION
// EN JAVA PODES CONCATENAR STRINGS USANDO EL +

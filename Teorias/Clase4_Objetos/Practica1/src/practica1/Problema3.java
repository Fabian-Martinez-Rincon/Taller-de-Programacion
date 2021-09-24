
/*
3- a) Utilizando la clase Auto dada por la cátedra. Un objeto auto se crea sin valores 
iniciales. Un objeto auto responde a los siguientes mensajes: 
getPatente() retorna la patente (int) del auto
getDueño() retorna el nombre del dueño (String) del auto
setPatente(X) modifica el número de patente al “int” pasado por parámetro (X)
setDueño(X) modifica el nombre del dueño al “String” pasado por parámetro (X)
toString() retorna un String que representa al objeto. Ej: “Patente 111222 Dueño Carla 
Perez” 
Modifique el ejercicio 2 para almacenar en la estructura de datos el auto que ocupa cada 
plaza.
b) A partir de la estructura de autos, informar para cada número de piso y número de 
plaza ocupado, la representación del auto que la ocupa.
 */
package practica1;
import PaqueteLectura.GeneradorAleatorio;

public class Problema3 {
    public static void main(String[] args) {
        int dimF = 15;
        int [] jugadores = new int[dimF];
        int altura;
        int total = 0;
        int numero = GeneradorAleatorio.generarInt(100);
        System.err.println("Random: "+ numero);
        for (int i = 0; i < dimF; i++) {
            altura = GeneradorAleatorio.generarInt(10);
            jugadores[i] = altura;
            System.err.println("Altura: "+ jugadores[i]);
            total = total + jugadores[i];
        }
        System.err.println("La altura promedio es: "+ total/dimF);
    }
}

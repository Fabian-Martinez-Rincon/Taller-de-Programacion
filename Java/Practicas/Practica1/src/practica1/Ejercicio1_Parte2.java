/*
1 – Se dispone de una clase Persona (ya implementada en la carpeta tema2). Un objeto 
persona puede crearse sin valores iniciales o enviando en el mensaje de creación el 
nombre, DNI y edad (en ese orden). Un objeto persona responde a los siguientes mensajes: 
getNombre() retorna el nombre (String) de la persona
getDNI() retorna el dni (int) de la persona
getEdad() retorna la edad (int) de la persona
setNombre(X) modifica el nombre de la persona al “String” pasado por parámetro (X)
setDNI(X) modifica el DNI de la persona al “int” pasado por parámetro (X)
setEdad(X) modifica la edad de la persona al “int” pasado por parámetro (X)
toString() retorna un String que representa al objeto. Ej: “Mi nombre es Mauro, mi DNI es 
11203737 y tengo 70 años” 
Realice un programa que cree un objeto persona con datos leídos desde teclado. Luego 
muestre en consola la representación de ese objeto en formato String. 
Piense y responda: ¿Qué datos conforman el estado del objeto persona? ¿Cómo se 
implementan dichos datos? ¿Qué ocurre cuando se le envía un mensaje al objeto
 */
package practica1;
import PaqueteLectura.GeneradorAleatorio;
public class Ejercicio1_Parte2 {
    public static void main(String[] args) {
        GeneradorAleatorio.iniciar();
        Persona p = new Persona();
        p.setNombre(GeneradorAleatorio.generarString(5));
        p.setDNI(GeneradorAleatorio.generarInt(10));
        p.setEdad(GeneradorAleatorio.generarInt(10));
        System.out.println(  "Nombre: " + p.getNombre() + ", DNI: " + p.getDNI() + ", edad: " + p.getEdad());
    }
}
/*Los datos que conforman al objeto persona son:
    Nombre
    DNI
    edad
Los objetos interactúan enviándose mensajes unos a otros.
Tras la recepción de un mensaje el objeto actuará. La acción puede ser el envío 
de otros mensajes, el cambio de su estado, o la ejecución de cualquier otra tarea
que se requiera que haga el objeto.
*/
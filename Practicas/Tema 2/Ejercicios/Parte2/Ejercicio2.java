/*2- Utilizando la clase Persona (ya implementada). Realice un programa que almacene en 
un vector 15 personas. La información de cada persona debe leerse de teclado. Luego de 
almacenar la información:
 - Informe la cantidad de personas mayores de 65 años.
 - Muestre la representación de la persona con menor DNI.
*/
package practica2;

import PaqueteLectura.GeneradorAleatorio;

public class Ejercicio2 {
    public static void main(String[] args) {
        GeneradorAleatorio.iniciar();
        
        Persona persona1 = new Persona();
        Persona contador[]=new Persona[15];
        int menor_dni = 999;
        Persona persona_menor = new Persona();
        int cantidad_personas = 0;
        
        for (int i = 0; i < 15; i++) {
            persona1.nombre = GeneradorAleatorio.generarString(5);
            persona1.DNI = GeneradorAleatorio.generarInt(10);
            persona1.edad = 40+(GeneradorAleatorio.generarInt(65));
            if (persona1.edad > 65){
                cantidad_personas++;
            }
            if (persona1.DNI < menor_dni){
                menor_dni = persona1.DNI;
                persona_menor = new Persona(persona1.nombre,persona1.DNI,persona1.edad); //Cambiamos los datos de la persona con menor dni
            }
            System.out.println(persona1.getNombre());
            System.out.println(persona1.getDNI());
            System.out.println(persona1.getEdad());
            System.out.println("_________________________");
            contador[i] = new Persona(persona1.nombre,persona1.DNI,persona1.edad); //Guardamos los datos
        }
        System.out.println("La cantidad de personas mayores de 65 es : "+cantidad_personas);
        System.out.println("Persona con menor DNI: ");
        System.out.println(persona_menor.toString());
        System.out.println("Menor DNI: "+ menor_dni);
        System.out.println("Imprimo vector: ");
        for (int i = 0; i < 15; i++) {
            System.out.println(contador[i].toString());
        }
    }
}

package practica3pro;

//3) B- Genere un programa que instancie una persona y un trabajador con datos leídos de teclado y muestre la representación de cada uno en consola.
import PaqueteLectura.Lector;

public class Ej03Personas {

    public static void main(String[] args) {

        System.out.println("Ingrese el nombre de la persona: ");
        String nombre = Lector.leerString();
        System.out.println("Ingrese su dni: ");
        int dni = Lector.leerInt();
        System.out.println("Ingrese su edad: ");
        int edad = Lector.leerInt();

        Persona persona = new Persona(nombre, dni, edad);

        System.out.println("Ingrese el nombre del trabajador: ");
        nombre = Lector.leerString();
        System.out.println("Ingrese su dni: ");
        dni = Lector.leerInt();
        System.out.println("Ingrese su edad: ");
        edad = Lector.leerInt();
        System.out.println("Ingrese la tarea que realiza en el predio: ");
        String tarea = Lector.leerString();

        Trabajador trabajador = new Trabajador(tarea, nombre, dni, edad);

        System.out.println(persona.toString());
        System.out.println(trabajador.toString());

    }

}
 
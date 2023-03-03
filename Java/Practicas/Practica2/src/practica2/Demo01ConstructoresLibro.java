/*
Demo que crea objetos Libro invocando a los constructores definidos. Tema 4.
 */
package practica2;

/**
 *
 * @author vsanz
 */
public class Demo01ConstructoresLibro {

    
    public static void main(String[] args) {
        
        Autor a = new Autor("pepe", "Paso frio");
        
        Libro libro1= new  Libro( "Java: A Beginner's Guide",   
                                 "Mcgraw-Hill", 2014,   
                                 a, "978-0071809252", 21.72);
        Libro libro2= new Libro("Learning Java by Building Android Games",  "CreateSpace Independent Publishing", a, "978-1512108347");
        System.out.println(libro1.toString());
        System.out.println(libro2.toString());
        System.out.println("Precio del libro2: " +libro2.getPrecio());
        System.out.println("Año edición del libro2: " +libro2.getAñoEdicion());
        Libro libro3= new Libro(); 
    }
    
}

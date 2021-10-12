/*
Demo que crea objetos Libro invocando a los constructores definidos. Tema 4.
 */
package practica_pruebas;

import PaqueteLectura.Lector;

public class Demo01ConstructoresLibro {

    public static void main(String[] args) {
        System.out.println("Ingrese el titulo del libro: ");
        String titulo = Lector.leerString();
        System.out.println("Ingrese el nombre del autor: ");
        String nombre = Lector.leerString();
        System.out.println("Ingrese la biografia del autor: ");
        String biografia = Lector.leerString();
        System.out.println("Ingrese la editorial: ");
        String editorial = Lector.leerString();
        System.out.println("Ingrese el anio de edicion: ");
        int anioEdicion = Lector.leerInt();
        System.out.println("Ingrese el ISBN: ");
        String ISBN = Lector.leerString();
        System.out.println("Ingrese el precio del libro: ");
        double precio = Lector.leerDouble();
        
        Autor autor = new Autor(nombre, biografia);
        Libro libro1= new  Libro(titulo, editorial, anioEdicion, autor, ISBN, precio);
        
        Libro libro2= new Libro(titulo, editorial, autor, ISBN);
        
        System.out.println(libro1.toString());
        System.out.println(libro2.toString());
        System.out.println("Precio del libro2: " +libro2.getPrecio());
        System.out.println("Año edición del libro2: " +libro2.getAñoEdicion());
        
        Libro libro3= new Libro(); 
        
        
        //libro1.getNombreAutor() //mal
        //libro1.getPrimerAutor().getNombre() //bien
        
    }
}

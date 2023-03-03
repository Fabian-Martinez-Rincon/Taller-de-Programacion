
package parcial10;

import PaqueteLectura.Lector;

public class Parcial10 {

    public static void main(String[] args) {
        Electronico le = new Electronico();
        System.out.println("Ingrese titulo del libro: ");
        le.setTitulo(Lector.leerString());
        System.out.println("Ingrese precio del libro: ");
        le.setPrecio(Lector.leerDouble());
        System.out.println("Ingrese tapa del libro: ");
        le.setFormato(Lector.leerString());
        System.out.println("Ingrese tamaño: ");
        le.setTamanio(Lector.leerDouble());
        
        for (int i = 0; i < 3; i++) {
            System.out.println("Ingrese un autor");
            le.agregarNombre(Lector.leerString());  
        }
        System.out.println(le.toString());
        
        Impreso li = new Impreso();
        System.out.println("Ingrese titulo del libro: ");
        li.setTitulo(Lector.leerString());
        System.out.println("Ingrese precio del libro: ");
        li.setPrecio(Lector.leerDouble());
        System.out.println("Ingrese tapa del libro: ");
        li.setTapaDura(Lector.leerBoolean());

        for (int i = 0; i < 3; i++) {
            System.out.println("Ingrese un autor");
            li.agregarNombre(Lector.leerString());  
        }
        System.out.println(li.toString());
    }
}

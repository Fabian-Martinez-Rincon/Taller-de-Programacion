/*
4-A- Generar una clase para representar círculos. Los círculos se caracterizan por su radio 
(double), el color de relleno (String) y el color de línea (String). El círculo debe saber: 
▪ Devolver/modificar el valor de cada uno de sus atributos (get# y set#)
▪ Calcular el área y devolverla. (método calcularArea)
▪ Calcular el perímetro y devolverlo. (método calcularPerimetro)
NOTA: la constante PI es Math.PI
 B- Realizar un programa principal que instancie un círculo, le cargue información leída 
de teclado e informe en consola el perímetro y el área.
 */
package practica2;
import PaqueteLectura.Lector; 

public class Ejercicio4_Practica2 {
    public static void main(String[] args) {
        System.out.println(Math.PI);
        Circulo c = new Circulo();
        
        double radio = Lector.leerDouble();
        
        System.out.println("Color de Relleno:");
        c.setColorRelleno(Lector.leerString());
        System.out.println("Color de Relleno: "+ c.getColorRelleno());
        
        System.out.println("Color de Linea:");
        c.setColorLinea(Lector.leerString());
        System.out.println("Color de Linea: "+ c.getColorLinea());
        
        
        
        
        System.out.println("Area: "+ c.calcularArea());
        System.out.println("Perimetro: "+ c.calcularPerimetro());
    }
}

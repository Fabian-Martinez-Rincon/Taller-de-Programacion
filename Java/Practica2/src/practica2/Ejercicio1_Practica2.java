/*
1- A- Definir una clase para representar triángulos. Un triángulo se caracteriza por el 
tamaño de sus 3 lados (double), el color de relleno (String) y el color de línea (String). 
El triángulo debe saber: 
▪ Devolver/modificar el valor de cada uno de sus atributos (métodos get# y set#) 
▪ Calcular el área y devolverla (método calcularArea)
▪ Calcular el perímetro y devolverlo (método calcularPerimetro)

B- Realizar un programa principal que instancie un triángulo, le cargue información leída 
desde teclado e informe en consola el perímetro y el área. 
 */
package practica2;
import PaqueteLectura.GeneradorAleatorio;
public class Ejercicio1_Practica2 {
    public static void main(String[] args) {
        GeneradorAleatorio.iniciar(); 
        double lado1 =(GeneradorAleatorio.generarDouble(10));
        double lado2 = (GeneradorAleatorio.generarDouble(10));
        double lado3 = (GeneradorAleatorio.generarDouble(10));
        String color = (GeneradorAleatorio.generarString(5));
        String linea = (GeneradorAleatorio.generarString(5));
        Triangulo triangulo_1 = new Triangulo(lado1,lado2,lado3,color,linea);
        System.out.println("El area es : " + triangulo_1.calcularArea()); //Por algun motivo, de vez en cuando tira valor NaN
        System.out.println("El perimetro es : " + triangulo_1.calcularPerimetro());
    }   
}

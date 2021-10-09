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
        Triangulo triangulo_1 = new Triangulo();
        triangulo_1.setLadoUno(GeneradorAleatorio.generarDouble(10));
        System.out.println(triangulo_1.getLadoUno());
        triangulo_1.setLadoDos(GeneradorAleatorio.generarDouble(10));
        System.out.println(triangulo_1.getLadoDos());   
        triangulo_1.setLadoTres(GeneradorAleatorio.generarDouble(10));
        System.out.println(triangulo_1.getLadoTres());
        triangulo_1.setRelleno(GeneradorAleatorio.generarString(5));
        triangulo_1.setLinea(GeneradorAleatorio.generarString(5));
        System.out.println("El area es : " + triangulo_1.calcularArea()); //Por algun motivo, de vez en cuando tira valor NaN
        System.out.println("El perimetro es : " + triangulo_1.calcularPerimetro());
        
    }
    
}

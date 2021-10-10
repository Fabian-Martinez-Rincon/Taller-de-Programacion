/*
3- A- Definir una clase para representar entrenadores de un club de fútbol. Un entrenador 
se caracteriza por su nombre, sueldo básico y la cantidad de campeonatos ganados.
▪ Defina métodos para obtener/modificar el valor de cada atributo.
▪ Defina el método calcularSueldoACobrar que calcula y devuelve el sueldo a cobrar por 
el entrenador. El sueldo se compone del sueldo básico, al cual se le adiciona un plus por 
campeonatos ganados (5000$ si ha ganado entre 1 y 4 campeonatos; $30.000 si ha 
ganado entre 5 y 10 campeonatos; 50.000$ si ha ganado más de 10 campeonatos).
B- Realizar un programa principal que instancie un entrenador, cargándole datos leídos 
desde teclado. Pruebe el correcto funcionamiento de cada método implementado.
 */
package practica2;
import PaqueteLectura.Lector; 

public class Ejercicio3_Practica2 {
    public static void main(String[] args) {
        
        Entrenador entrenador_1 = new Entrenador();
        System.out.println("Nombre:");
        entrenador_1.setNombre(Lector.leerString());  
        
        System.out.println("Sueldo Basico:");
        entrenador_1.setSueldo(Lector.leerDouble());
        
        System.out.println("Campeonatos Ganados:");
        entrenador_1.setCampeonatosGanados(Lector.leerInt());
        
        System.out.println("Sueldo a cobrar: "+ entrenador_1.SueldoaCobrar());
    }
}

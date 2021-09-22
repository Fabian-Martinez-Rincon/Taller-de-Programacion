
package practica1;
import PaqueteLectura.Lector; 
import PaqueteLectura.GeneradorAleatorio;
public class Practica1 {
  
    public static void main(String[] args) {
        // TODO code application logic here
        GeneradorAleatorio.iniciar();                   
        System.out.println(GeneradorAleatorio.generarInt(10));    
        System.out.println(GeneradorAleatorio.generarDouble(10)); 
        System.out.println(GeneradorAleatorio.generarBoolean());  
            System.out.println(GeneradorAleatorio.generarString(4)); 
        }
}

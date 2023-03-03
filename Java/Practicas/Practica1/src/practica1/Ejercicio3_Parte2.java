/*
3- Indique qué imprimen los siguientes programas. Responda: ¿Qué efecto tiene la 
asignación utilizada con objetos? ¿Qué se puede concluir acerca de la comparación con == 
y != utilizada con objetos? ¿Qué retorna el mensaje equals cuando se le envía a un String?
 */

/*
En primer lugar, hay que tener en cuenta que para establecer asignaciones de este tipo entre objetos debe haber coincidencia de tipos.
Al hacer una asignacion entre objetos, lo que hacemos es tener dos variables referenciadas con la misma informacion, lo que nos
lleva a que solo podemos acceder a un unico objeto. (Como tener dos nombres para un mismo objeto)
*/
/*
Para un objeto string, solo retornara true si el contenido de sus cadenas son iguales
*/

package practica1;
import PaqueteLectura.GeneradorAleatorio;

public class Ejercicio3_Parte2  {
    public static void main(String[] args) {
        System.out.println("Ej03QueImprimeA: ");
        String saludo1 = new String("hola");
        String saludo2 = new String("hola");
        System.out.println(saludo1 == saludo2);       //False
        System.out.println(saludo1 != saludo2);       //True
        System.out.println(saludo1.equals(saludo2));  //True
        //_______________________________________________________
        System.out.println("Ej03QueImprimeB: ");
        Persona p1; 
        Persona p2;
        p1 = new Persona();
        p1.setNombre("Pablo Sotile");
        p1.setDNI(11200413);
        p1.setEdad(40);
  
        p2 = new Persona();
        p2.setNombre("Julio Toledo");
        p2.setDNI(22433516);
        p2.setEdad(51);
        
        p1 = p2;
        
        p1.setEdad( p1.getEdad() + 1 );
        
        System.out.println(p2.toString()); //Mi nombre es Julio Toledo, mi DNI es 22433516 y tengo 52 años.
        System.out.println(p1.toString()); //Mi nombre es Julio Toledo, mi DNI es 22433516 y tengo 52 años.
        System.out.println( (p1 == p2) );  //True
    } 
}
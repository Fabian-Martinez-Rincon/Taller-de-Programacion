package practica3pro;

//Luego realice un programa que instancie un visor, guarde dos cuadrados y un rectángulo en el visor y por último haga que el visor muestre sus figuras.

public class Ej06VisorFigurasModificado {

    public static void main(String[] args) {
        
        VisorFigurasModificado visor = new VisorFigurasModificado();
        Cuadrado c1 = new Cuadrado(10, "Violeta", "Rosa");
        Rectangulo r = new Rectangulo(20, 10, "Azul", "Celeste");
        Cuadrado c2 = new Cuadrado(30, "Rojo", "Naranja");
        
        visor.guardar(c1);
        visor.guardar(r);
        visor.guardar(c2);
        
        visor.mostrar();
       
    }
    
}

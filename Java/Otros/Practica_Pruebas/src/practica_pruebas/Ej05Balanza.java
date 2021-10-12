package practica_pruebas;
import PaqueteLectura.Lector;
public class Ej05Balanza {

    public static void main(String[] args) {

        Balanza5 balanza = new Balanza5();
        balanza.iniciarCompra();

        double pesoEnKg;
        double precioPorKilo = 0;
        String descripcion = null;
        Producto producto = null;

        System.out.println("Ingrese el peso en kg del producto: ");
        pesoEnKg = Lector.leerDouble();
        if (pesoEnKg != 0) {
            System.out.println("Ingrese la descripcion del producto: ");
            descripcion = Lector.leerString();
            System.out.println("Ingrese el precio por kg del item: ");
            precioPorKilo = Lector.leerDouble();
            
            producto = new Producto(pesoEnKg, descripcion);
        }
        
        while (pesoEnKg != 0) {
            balanza.registrarProducto(producto, precioPorKilo);

            System.out.println("Ingrese el peso en kg del producto: ");
            pesoEnKg = Lector.leerDouble();
            if (pesoEnKg != 0) {
                System.out.println("Ingrese la descripcion del producto: ");
                descripcion = Lector.leerString();
                System.out.println("Ingrese el precio por kg del item: ");
                precioPorKilo = Lector.leerDouble();
                producto = new Producto(pesoEnKg, descripcion);
            }
        }
        System.out.println(balanza.devolverResumenDeCompra());
    }
}

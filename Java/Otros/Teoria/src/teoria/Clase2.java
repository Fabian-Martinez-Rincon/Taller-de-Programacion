package teoria;
import PaqueteLectura.Lector;

public class Clase2 {

    public static void main(String[] args) {

        int piso, plaza, patente;
        String nom;
        Estacionamiento estacionamiento;
        Auto auto;
        estacionamiento = new Estacionamiento("ABC", "12 e/ 45 y 46", "6:00", "22:00", 3, 3);
        // ó en una sola línea: Estacionamiento estacionamiento = new Estacionamiento("ABC", "12 e/ 45 y 46", "6:00", "22:00", 3, 3);
        
        for (int i = 0; i < 3; i++) {
            System.out.println("Ingrese el nombre del dueño del auto");
            nom = Lector.leerString();
            System.out.println("Ingrese la patente");
            patente = Lector.leerInt();
            System.out.println("Ingrese el piso");  // 1 .. 3
            piso = Lector.leerInt();
            System.out.println("Ingrese la plaza");  // 1 .. 3
            plaza = Lector.leerInt();
            auto = new Auto(patente, nom);
            
            // se muestran dos opciones para registrar un auto (teniendo en cuenta que los índices de la matriz inician en 0)
            estacionamiento.registrar(piso - 1, plaza - 1 , auto);  //OPCIÓN 1
           // estacionamiento.registrarAuto(auto, piso, plaza); // OPCIÓN 2: decrementando en el registrar
        }
        System.out.println(estacionamiento.toString());
        System.out.println("Ingrese la patente a buscar");
        patente = Lector.leerInt();
        System.out.println(estacionamiento.buscarAuto(patente));
        System.out.println(estacionamiento.buscarAutoPorPatente(patente));
    }
}

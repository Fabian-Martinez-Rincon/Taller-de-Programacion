package BRENDA.practica_2;

//Definir una clase para representar flotas de micros. Una flota se caracteriza por conocer a los micros que la componen (a lo sumo 15). 
public class Flota {

    private static final int DIMF = 15;
    private int cantidadMicros; //Es mi dimL
    private Micro[] flota;

    //Defina un constructor para crear una flota vacía (sin micros).
    public Flota() {
        this.flota = new Micro[DIMF];
        this.cantidadMicros = 0;

        for (int i = 0; i < DIMF; i++) {
            this.flota[i] = null;
        }
    }

    //Implemente métodos para: devolver si la flota está completa (es decir, si tiene 15 micros o no)
    public boolean estaCompleta() {
        return (this.cantidadMicros == DIMF);
    }

    //Implemente métodos para: agregar a la flota un micro recibido como parámetro
    public void agregarMicro(Micro micro) {
        if (!estaCompleta()) {
            int i = 0;
            while (this.flota[i] != null) {         //NO HACE FALTA RECORRER, PODES AGREGAR EN LA DIML
                i++;
            }
            this.flota[i] = micro;
            this.cantidadMicros++;
        }
    }

    //Implemente métodos para: eliminar de la flota el micro con patente igual a una recibida como parámetro, y retornar si la operación fue exitosa.
    public boolean eliminarMicro(String patente) {  //FALTA HACE CORRIMIENTO
        boolean encontre = false;
        int i = 0;
        while (i < DIMF && !encontre) {
            if (flota[i] != null && flota[i].getPatente().equals(patente)) {
                encontre = true;
                flota[i] = null;
                this.cantidadMicros--;
            }
            i++;
        }
        return encontre;
    }

    //Implemente métodos para: buscar en la flota un micro con patente igual a una recibida como parámetro y retornarlo (en caso de no existir dicho micro, retornar null).
    public Micro buscarMicroPorPatente(String patente) {
        int i = 0;
        while (i < DIMF) {
            if (flota[i] != null && flota[i].getPatente().equals(patente)) {
                return flota[i];        //PONER CORTE DE CONTROL CON BOOLEANO
            }
            i++;
        }
        return null;
    }

    //Implemente métodos para: buscar en la flota un micro con destino igual a uno recibido como parámetro y retornarlo (en caso de no existir dicho micro, retornar null).
    public Micro buscarMicroPorDestino(String destino) {
        int i = 0;
        while (i < DIMF) {
            if (flota[i] != null && flota[i].getDestino().equals(destino)) {
                return flota[i];        //PONER CORTE DE CONTROL CON BOOLEANO
            }
            i++;
        }
        return null;
    }
}

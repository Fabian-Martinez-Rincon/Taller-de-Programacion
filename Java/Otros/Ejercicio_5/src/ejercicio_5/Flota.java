package ejercicio_5;

//Definir una clase para representar flotas de micros. Una flota se caracteriza por conocer a los micros que la componen (a lo sumo 15). 
public class Flota {

    private static final int DIMF = 15;
    private int cantidadMicros; //Es mi dimL
    private final Micro [] flota;
    
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
            this.flota[cantidadMicros] = micro;
            this.cantidadMicros++;
        }
    }

    //Implemente métodos para: eliminar de la flota el micro con patente igual a una recibida como parámetro, y retornar si la operación fue exitosa.
    public boolean eliminarMicro(String patente) {  //FALTA HACER CORRIMIENTO
        boolean encontre = false;
        int i = 0;
        while (i < DIMF && !encontre) {
            if (flota[i] != null && flota[i].getPatente().equals(patente)) { 
                for (int j = i+1; j < cantidadMicros; j++) {
                    flota[j-1] = flota[j];
                }
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
  
        boolean encontre = false;
        while (i < DIMF && !encontre) {
            if (flota[i] != null && flota[i].getPatente().equals(patente)) {
                encontre = true;         
            }
            i++;
        }
        if (encontre){
            return flota[i];
        }
        else {
            return null;
        }  
    }

    //Implemente métodos para: buscar en la flota un micro con destino igual a uno recibido como parámetro y retornarlo (en caso de no existir dicho micro, retornar null).
    public Micro buscarMicroPorDestino(String destino) {
        int i = 0;
        boolean encontre = false;
        while (i < DIMF && !encontre) {
            if (flota[i] != null && flota[i].getDestino().equals(destino)) {
                encontre = true;
            }
            i++;
        }
        if (encontre){
            return flota[i]; 
        }
        else {
            return null;
        }
    }
}
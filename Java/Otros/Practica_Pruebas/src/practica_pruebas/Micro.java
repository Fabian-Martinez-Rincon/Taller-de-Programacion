package BRENDA.practica_2;

public class Micro {

    private static final int DIMF = 5;
    private String patente;
    private String destino;
    private String horaSalida;
    private boolean[] estadoAsientos = new boolean[DIMF];  //TRUE para ocupado y FALSE para desocupado
    private int cantAsientosOcupados;

    //4- a) Implemente un constructor que permita iniciar el micro con una patente, un destino y una hora de salida (recibidas por parámetro) y sin pasajeros.
    public Micro(String patente, String destino, String horaSalida) {
        this.patente = patente;
        this.destino = destino;
        this.horaSalida = horaSalida;
        this.cantAsientosOcupados = 0;
        for (int i = 0; i < DIMF; i++) {
            this.estadoAsientos[i] = false;
        }
    }

    //Implemente métodos para: i. devolver/modificar patente, destino y hora de salida
    public String getPatente() {
        return patente;
    }

    public String getDestino() {
        return destino;
    }

    public String getHoraSalida() {
        return horaSalida;
    }

    public void setPatente(String patente) {
        this.patente = patente;
    }

    public void setDestino(String destino) {
        this.destino = destino;
    }

    public void setHoraSalida(String horaSalida) {
        this.horaSalida = horaSalida;
    }

    //ii. devolver la cantidad de asientos ocupados
    public int getCantAsientosOcupados() {
        return this.cantAsientosOcupados;
    }

    //iii. devolver si el micro está lleno
    public boolean estaLleno() {
        return (this.cantAsientosOcupados == DIMF);
    }

    //iv. validar un número de asiento recibido como parámetro (es decir, devolver si está en rango o no)
    public boolean esValido(int asiento) {
        return ((asiento >= 1) && (asiento <= DIMF)); //porque los asientos arrancan desde 1..N
    }

    //v. devolver el estado de un nro. de asiento válido recibido como parámetro
    public boolean estaOcupado(int asiento) {
        return this.estadoAsientos[asiento-1]; //porque los asientos arrancan desde 1..N
    }

    //vi. ocupar un nro. de asiento válido recibido como parámetro
    public void ocuparAsiento(int asiento) {
        this.cantAsientosOcupados++;
        this.estadoAsientos[asiento-1] = true; //porque los asientos arrancan desde 1..N
    }

    //vii. liberar un nro. de asiento válido recibido como parámetro
    public void desocuparAsiento(int asiento) {
        this.cantAsientosOcupados--;
        this.estadoAsientos[asiento-1] = false; //porque los asientos arrancan desde 1..N
    }

    //viii. devolver el nro. del primer asiento libre
    public int primerAsientoLibre() {
        if (!this.estaLleno()) {
            int i = 0;
            while (this.estadoAsientos[i] != false) {
                i++;
            }
            return (i+1); //porque los asientos arrancan desde 1..N
        }
        return -1;
    }
}

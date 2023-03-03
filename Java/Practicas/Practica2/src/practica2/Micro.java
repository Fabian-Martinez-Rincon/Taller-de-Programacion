/*4-A- Definir una clase para representar micros. Un micro conoce su patente, destino, hora
salida, el estado de sus 20 asientos (es decir si está o no ocupado) y la cantidad de asientos
ocupados al momento. Lea detenidamente a) y b) y luego implemente.
a) Implemente un constructor que permita iniciar el micro con una patente, un destino y
una hora de salida (recibidas por parámetro) y sin pasajeros.
b) Implemente métodos para:
i. devolver/modificar patente, destino y hora de salida
ii. devolver la cantidad de asientos ocupados
iii. devolver si el micro está lleno
iv. validar un número de asiento recibido como parámetro (es decir, devolver si está
en rango o no)
v. devolver el estado de un nro. de asiento válido recibido como parámetro
vi. ocupar un nro. de asiento válido recibido como parámetro
vii. liberar un nro. de asiento válido recibido como parámetro
viii. devolver el nro. del primer asiento libre
*/
package practica2;

public class Micro {
    private String patente;
    private String destino;
    private String Hora_salida;
    private boolean vector_ocupados[];
    
    private final int cantTotalAsientos = 20; //DimF
    private int cantAsientosOcupados;
    
    //4A)a
    public Micro(String patente, String destino, String hora){
        this.patente = patente;
        this.destino = destino;
        this.Hora_salida = hora;
        this.cantAsientosOcupados = 0;
        this.vector_ocupados = new boolean[cantTotalAsientos];
        
        for (int i = 0; i < cantAsientosOcupados; i++){
            this.vector_ocupados[i] = false;
        }
    }
    
    //4A)b)i)devolver/modificar patente, destino y hora de salida
    public String getPatente() {
        return this.patente;
    }

    public String getDestino() {
        return this.destino;
    }

    public String getHora_salida() {
        return this.Hora_salida;
    }

    public void setPatente(String patente) {
        this.patente = patente;
    }

    public void setDestino(String destino) {
        this.destino = destino;
    }

    public void setHora_salida(String Hora_salida) {
        this.Hora_salida = Hora_salida;
    }
    
    //4A)b)ii)devolver la cantidad de asientos ocupados
    public int getCantAsientosOcupados() {
        return cantAsientosOcupados;
    }
    
    //4A)b)iii)devolver si el micro está lleno
    public boolean estaLleno(){
        return (this.cantAsientosOcupados == cantTotalAsientos);
    }
    
    //4A)b)iv)validar un número de asiento recibido como parámetro (es decir, devolver si está en rango o no)
    public boolean esValido(int asiento) {
        return ((asiento >= 1) && (asiento <= cantTotalAsientos)); 
    }
    
    //4A)b)v)devolver el estado de un nro. de asiento válido recibido como parámetro
     public boolean estaOcupado(int asiento) {
        return this.vector_ocupados[asiento-1]; //Comienza de 1 hasta x
    }
     
    //4A)b)vi)ocupar un nro. de asiento válido recibido como parámetro
     
     
    public void ocuparAsiento(int asiento) {
        this.cantAsientosOcupados++;
        this.vector_ocupados[asiento-1] = true; //porque los asientos arrancan desde 1..N
    }

    //vii. liberar un nro. de asiento válido recibido como parámetro
    public void desocuparAsiento(int asiento) {
        this.cantAsientosOcupados--;
        this.vector_ocupados[asiento-1] = false; //porque los asientos arrancan desde 1..N
    }

    //viii. devolver el nro. del primer asiento libre
    public int primerAsientoLibre() {
        if (!this.estaLleno()) {
            int i = 0;
            while (this.vector_ocupados[i] != false) {
                i++;
            }
            return (i+1); //porque los asientos arrancan desde 1..N
        }
        return -1; //-1 para el corte
    }
     
}

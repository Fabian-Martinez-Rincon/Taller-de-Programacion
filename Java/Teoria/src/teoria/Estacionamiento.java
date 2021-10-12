package teoria;
/**
 * Definir  una  clase  para  representar  Estacionamientos. Un  estacionamiento  conoce  su
 * nombre, dirección, hora de apertura y hora de cierre, y almacena para cada número de
 * piso (1..N) y número de plaza (1..M), el auto que ocupa dicho lugar.
 */
public class Estacionamiento {

    private String nombre;
    private String direccion;
    private String horaApertura;
    private String horaCierre;
    private int conPiso; // (1..N)
    private int conPlaza; // (1..M)
    private Auto[][] autos;

    /*
    b)  Implemente un constructor que reciba nombre y dirección, e inicie el estacionamiento con hora de apertura “8:00”, hora de cierre “21:00”, 
    y para 5 pisos y 10 plazas por piso. El estacionamiento inicialmente no tiene autos. 
     */
    public Estacionamiento(String nombre, String direccion) {
        this.iniciar(nombre, direccion, "8:00", "21:00", 5, 10);
        //equivalene a: iniciar(...
    }

    /*
    c)	Implemente un segundo constructor que reciba nombre, dirección,  hora de apertura, hora de cierre, 
    el número de pisos (N)  y el número de plazas por piso (M) e inicie el  estacionamiento con los datos recibidos, 
    y sin autos. 
     */
    public Estacionamiento(String nombre, String direccion, String horaApertura, String horaCierre, int N, int M) {
        this.iniciar(nombre, direccion, horaApertura, horaCierre, N, M);
        //equivalene a: iniciar(...
    }

    private void iniciar(String nombre, String direccion, String horaApertura, String horaCierre, int N, int M) {
        this.nombre = nombre;
        this.direccion = direccion;
        this.horaApertura = horaApertura;
        this.horaCierre = horaCierre;
        this.conPiso = N;
        this.conPlaza = M;
        this.autos = new Auto[this.conPiso][this.conPlaza];

        for (int i = 0; i < this.conPiso; i++) {
            for (int j = 0; j < this.conPlaza; j++) {
                autos[i][j] = null;
            }
        }

    }

    // a) Provea getters/setters adecuados.
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getHoraApertura() {
        return horaApertura;
    }

    public void setHoraApertura(String horaApertura) {
        this.horaApertura = horaApertura;
    }

    public String getHoraCierre() {
        return horaCierre;
    }

    public void setHoraCierre(String horaCierre) {
        this.horaCierre = horaCierre;
    }

    public int getConPiso() {
        return conPiso;
    }

    public int getConPlaza() {
        return conPlaza;
    }
  
    /* Dado un auto A, un número de piso X y un número de plaza Y, registrar al auto en el  estacionamiento  en  el  lugar  X,Y.
    Suponga  que  X,  Y  son  válidos  y  que  el  lugar está desocupado. */
    // Para la OPCION 1 del programa principal
    public void registrar(int nroPiso, int nroPlaza, Auto auto) {
        autos[nroPiso][nroPlaza] = auto;
    }
    // Para la OPCION 2 del programa principal
//    public void registrarAuto(Auto a, int piso, int plaza) {
//        autos[piso - 1][plaza - 1] = a;  //Agrego los -1 porque los pisos van de 1..N y las plazas de 1..M
//    }

    
    /*
    Dada  una  patente,  obtener  un  String  que  contenga  el  número  de  piso  y  plaza 
donde  está  dicho  auto.  En  caso  de  no encontrarse, retornar el mensaje “Auto 
Inexistente”.
     */
    //OPCION 1 (sale con el "return" cuando lo encuentra)
    public String buscarAuto(int patente) {
        int piso = 0;
        int plaza = 0;

        while (piso < this.conPiso) {
            while (plaza < this.conPlaza) {
                if (autos[piso][plaza] != null && autos[piso][plaza].getPatente() == patente) { // NO es lo mismo "&" que "&&" 
                    return "El auto se ubica en el piso: " + (piso + 1) + ", plaza: " + (plaza + 1); //Agrego los +1 porque los pisos van de 1..N y las plazas de 1..M
                } else {
                    plaza++;
                }
            }
            plaza = 0;
            piso++;
        }
        return "Auto inexistente";
    }
    //OPCION 2 (retorna al final del método)
    public String buscarAutoPorPatente(int unaPatente) {
        int i = 0, j = 0;
        boolean encontre = false;
        while (i < this.conPiso & !encontre) {
            j = 0;
            while (j < this.conPlaza & !encontre) {
                if (this.autos[i][j] != null && this.autos[i][j].getPatente() == unaPatente) { // NO es lo mismo "&" que "&&" 
                    encontre = true;
                } else { // si no hay auto o no lo encontré, avanzo
                    j++;
                }
            }
            if (!encontre) {
                i++;
            }
        }
        String msg = "Auto inexistente";
        if (encontre) {
            msg = "Auto existente con patente " + unaPatente + ". Está en el piso " + (i + 1) + " , plaza " + (j + 1);  // para imprimir mostramos los indices incrementados
        }

        return msg;
    }

    // Obtener un String con la representación del estacionamiento. Ejemplo: “Piso 1 
//Plaza 1: libre Piso 1 Plaza 2: representación del auto ... Piso 2 Plaza 1: libre ... etc”
    @Override
    public String toString() {
        String aux = " ";
        for (int i = 0; i < conPiso; i++) {
            for (int j = 0; j < conPlaza; j++) {
                aux += "Piso: " + (i + 1) + " Plaza: " + (j + 1);
                if (autos[i][j] == null) {
                    aux += " = Libre \n"; // "aux += ..." es equivalente a "aux = aux + ..."
                } else {
                    aux += " " + autos[i][j].toString() + "\n"; // \n representa un salto de línea
                }
            }
        }
        return aux;
    }

}

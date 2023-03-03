package practica3pro;

public class VisorFigurasModificado {

    private final int dimF = 5;
    private int guardadas;
    private Figura[] vector;

    public VisorFigurasModificado() {
        this.guardadas = 0;
        this.vector = new Figura[dimF];
        for (int i = 0; i < this.dimF; i++) {
            this.vector[i] = null;
        }
    }

    public void guardar(Figura f) {
        if (this.quedaEspacio()) {
            this.vector[guardadas] = f;
            this.guardadas++;
        }
    }

    public boolean quedaEspacio() {
        return (this.getGuardadas() < this.dimF);
    }

    public void mostrar() {
        for (int i = 0; i < this.getGuardadas(); i++) {
            System.out.println(this.vector[i].toString());
        }
    }

    public int getGuardadas() {
        return guardadas;
    }

}

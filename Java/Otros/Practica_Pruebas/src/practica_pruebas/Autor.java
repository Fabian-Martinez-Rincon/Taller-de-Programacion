package practica_pruebas;
public class Autor {

    private String nombre;
    private String biografia;

    public Autor(String nombre, String biografia) {
        this.nombre = nombre;
        this.biografia = biografia;
    }
    public Autor() {
    }
    public String getNombre() {
        return nombre;
    }

    public String getBiografia() {
        return biografia;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void setBiografia(String biografia) {
        this.biografia = biografia;
    }
}

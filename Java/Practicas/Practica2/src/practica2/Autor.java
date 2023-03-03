package practica2;


public class Autor {
    private String nombre;
    private String biografia;
    
    public Autor(String nombreAutor, String biografiaAutor){

        this.setNombre(nombreAutor);
        this.setBiografia(biografiaAutor);
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void setBiografia(String biografia) {
        this.biografia = biografia;
    }

    public String getNombre() {
        return nombre;
    }

    public String getBiografia() {
        return biografia;
    }
    
    
}

package representarfechas;
public class Alumno {
    
    private String nombre;
    private int dni;
    private int tema;
    
    public Alumno(String nombre, int dni){
        this.nombre = nombre;
        this.dni = dni;
        this.tema = -1;
    }
    
    public String getNombre(){
        return nombre;
    }
    
    public int getDni(){
        return dni;
    }
    
    public int getTema(){
        return tema;
    }
    
    public void setNombre(String nombre){
        this.nombre = nombre;
    } 
    
    public void setDni(int dni){
        this.dni = dni;
    }
    
    public void setTema(int tema){
        this.tema = tema;
    }
    
    public String toString(){
        return nombre + " " + dni;
    }
    
}
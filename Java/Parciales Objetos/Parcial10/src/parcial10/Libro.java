package parcial10;

public abstract class Libro {
    private String titulo;
    private double precio;
    private int dimL = 0;
    private final int dimF = 8;
    private String [] autores;
    //Fabo
    public Libro(){
        setTitulo(titulo);
        setPrecio(precio);
        autores = new String[dimF];
        for (int i = 0; i < dimF; i++) {
            autores[i] = null;
       }
    }
    public Libro (String titulo, double precio, String autores[]){ 
        setTitulo(titulo);
        setPrecio(precio);
        autores = new String[dimF];
        for (int i = 0; i < dimF; i++) {
            autores[i] = null;
        }
    }
      
    public String getTitulo(){
        return titulo;
    }
    public double getPrecio(){
        return precio;
    } 
  	public int getDimL(){
        return dimL;
    }
    
    public void setTitulo(String UnTitulo){
        titulo = UnTitulo;
    }
    public void setPrecio(double UnPrecio){
        precio = UnPrecio;
    }
  
  	public void agregarNombre (String nombre){

            this.autores[dimL] = nombre;
            dimL++;
    }
  
  	public abstract double precioFinal ();

    @Override
    public String toString() {
        return  "Titulo: " + this.getTitulo() + " primer_autor: " + this.autores[0];
    }
    
        
    
}
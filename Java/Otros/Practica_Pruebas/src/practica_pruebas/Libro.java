/*
Clase Libro vista en el tema 3. 

 */
package practica_pruebas;


/**
 *
 * @author vsanz
 */
public class Libro {
   private String titulo;
   private Autor primerAutor; 
   private String editorial;
   private int añoEdicion;
   private String ISBN; 
   private double precio; /*en dolares*/

    public Libro(String titulo, Autor primerAutor, String editorial, int añoEdicion, String ISBN, double precio) {
        this.titulo = titulo;
        this.primerAutor = primerAutor;
        this.editorial = editorial;
        this.añoEdicion = añoEdicion;
        this.ISBN = ISBN;
        this.precio = precio;
    }

    public Libro() {
    }
     
    public String getTitulo(){
        return titulo;
    }
  
    public String getEditorial(){
        return editorial;
    }
    public int getAñoEdicion(){
        return añoEdicion;
    }

    public String getPrimerAutor(){
        return primerAutor;
    } 
    public String getISBN(){
        return ISBN;
    } 
    public double getPrecio(){
        return precio;
    }
   
    
    public void setTitulo(String unTitulo){
        titulo = unTitulo;
    }
 
    public void setEditorial(String unaEditorial){
         editorial = unaEditorial;
    }
    public void setAñoEdicion(int unAño){
         añoEdicion = unAño;
    }
  
    public void setPrimerAutor(String unPrimerAutor){
         primerAutor=unPrimerAutor;
    } 
    public void setISBN(String unISBN){
         ISBN=unISBN;
    } 
    public void setPrecio(double unPrecio){
         precio=unPrecio;
    }
   
    
   @Override
    public String toString(){
        String aux; // Variable auxiliar utilizada por el metodo. No es parte del estado
        aux=titulo + " por " + primerAutor + " - " + añoEdicion + " - ISBN: " + ISBN;
       return ( aux);
    }
        
}

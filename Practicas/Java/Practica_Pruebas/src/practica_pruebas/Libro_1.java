/*
Clase Libro a la cual se agregaron constructores. Tema 4.
 */
package practica_pruebas;

public class Libro_1 {

    private String titulo;
    private Autor primerAutor;
    private String editorial;
    private int añoEdicion;
    private String ISBN;
    private double precio;

    public Libro_1(String unTitulo, String unaEditorial,int unAñoEdicion, Autor unPrimerAutor, String unISBN, double unPrecio) {
        titulo = unTitulo;
        editorial = unaEditorial;
        añoEdicion = unAñoEdicion;
        primerAutor = unPrimerAutor;
        ISBN = unISBN;
        precio = unPrecio;
    }

    public Libro_1(String unTitulo, String unaEditorial, Autor unPrimerAutor, String unISBN) {
        titulo = unTitulo;
        editorial = unaEditorial;
        añoEdicion = 2015;
        primerAutor = unPrimerAutor;
        ISBN = unISBN;
        precio = 100;
    }

    public Libro_1() {

    }

    public String getTitulo() {
        return titulo;
    }

    public String getEditorial() {
        return editorial;
    }

    public int getAñoEdicion() {
        return añoEdicion;
    }

    public Autor getPrimerAutor() {
        return primerAutor;
    }

    public String getISBN() {
        return ISBN;
    }

    public double getPrecio() {
        return precio;
    }

    public void setTitulo(String unTitulo) {
        titulo = unTitulo;
    }

    public void setEditorial(String unaEditorial) {
        editorial = unaEditorial;
    }

    public void setAñoEdicion(int unAño) {
        añoEdicion = unAño;
    }

    public void setPrimerAutor(Autor unPrimerAutor) {
        primerAutor = unPrimerAutor;
    }

    public void setISBN(String unISBN) {
        ISBN = unISBN;
    }

    public void setPrecio(double unPrecio) {
        precio = unPrecio;
    }

    @Override
    public String toString() {
        String aux;
        aux = titulo + " por " + primerAutor.getNombre() + " - " + añoEdicion + " - " + " ISBN: " + ISBN;
        return (aux);
    }
}

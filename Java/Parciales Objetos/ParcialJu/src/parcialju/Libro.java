/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MatrizDevuelvoUnLibro;

/**
 *
 * @author Lucia
 */
public class Libro {
    private String titulo;
    private String autor;
    private int peso;
    
    public Libro(){
        
    }

    public Libro(String titulo, String autor, int peso) {
        this.titulo = titulo;
        this.autor = autor;
        this.peso = peso;
    }

    public String getTitulo() {
        return titulo;
    }

    public String getAutor() {
        return autor;
    }

    public int getPeso() {
        return peso;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public void setAutor(String autor) {
        this.autor = autor;
    }

    public void setPeso(int peso) {
        this.peso = peso;
    }
    
    public String toString(){
       return "Se saco el libro con el Titulo "+this.getTitulo()+" Autor "+this.getAutor()+" Peso "+this.getPeso();
   }
}

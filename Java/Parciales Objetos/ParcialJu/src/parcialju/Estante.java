/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MatrizDevuelvoUnLibro;

public class Estante {
    private Libro [][] est;
    
    public Estante(){
        int i;
        int j;
        this.est = new Libro[5][3];
        for(i=0; i<5; i++){
            for(j=0; j<3; j++){
                this.est[i][j]= null;
            }
        }        
    }

    public Estante(int x, int y) {
        int i;
        int j;
        this.est = new Libro[x][y];
        for(i=0; i<x; i++){
            for(j=0; j<y; j++){
                this.est[i][j]= null;
            }
        }        
    }
    
    public void almacenar(Libro l,int i, int j){
        this.est[i][j]= l;
    }
    
    public Libro sacarLibro(int estante, int lugar){
        Libro aux= this.est[estante][lugar];
        this.est[estante][lugar]= null;
        return aux;
    }
    
    public int cantidadDeLibros(String name){
        int i;
        int j;
        int cantidad=0;
        for (i=0; i<5; i++){
            for(j=0; j<3; j++){
                if( (this.est[i][j] != null) && (this.est[i][j].getAutor().equals(name))){
                    cantidad++;
                }
            }
        }
        return cantidad;
    }
}

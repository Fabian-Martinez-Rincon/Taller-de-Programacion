/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MatrizDevuelvoUnLibro;
import PaqueteLectura.Lector;

public class MatrizDevuelvoUnLibro {
    public static void main(String[] args) {
        
        Estante e = new Estante();    
        
        int i=0;
        
        int j;
        
        int total=0;
        
              
        while((i<5) && (total < 3)){
            j=0;
            while ((j<3) && (total < 3)){
                Libro l= new Libro();
                System.out.println("Ingrese titulo");
                l.setTitulo(Lector.leerString());
                System.out.println("Ingrese autor ");
                l.setAutor(Lector.leerString());
                System.out.println("Ingrese peso");
                l.setPeso(Lector.leerInt());
                e.almacenar(l, i, j);   // 0,0   1,0    2,0   
                j++;
                total++;                
            }
            i++;
        }
       
        Libro aux;
        
        aux= e.sacarLibro(0, 1);
        
        System.out.println(aux);
        
        System.out.println("Cantida de libros de Borges "+e.cantidadDeLibros("BORGES"));
        
       
    }
    
}

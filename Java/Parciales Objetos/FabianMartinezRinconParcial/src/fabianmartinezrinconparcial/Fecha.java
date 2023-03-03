/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fabianmartinezrinconparcial;

//import PaqueteLectura.GeneradorAleatorio;

public class Fecha {
    private Sala vectorSalas[];
    private int df;
    private int dl; 
    
    
    public Fecha(int n, int m){ //n = salas y m = alumnos x sala
        df = n;
        vectorSalas = new Sala[df];
        for(int i=0; i<n; i++) //Recorro las salas
            vectorSalas[i] = new Sala(m);     
    }    
    
    public void agregarAlumno(Alumno a,int x){ //Agregar fulanito a la sala x   
        vectorSalas[x].agregarAlumnoSala(a);   //Asumimos que x es valido y tenemos lugar para el      
    }

    
    public void asignarTema(){
        for (int i = 0; i < df; i++) {
            vectorSalas[i].asignarTema();         
        }    
    }
       
    public String toStringInscriptos(int t){ //Punto C
        String aux = "";
        System.out.println("Alumnos inscriptos con el tema: " + t);
        for(int i=0;i < df;i++){
            for(int j =0;j<vectorSalas[i].getDl();j++)
                if(vectorSalas[i].getNroTema(j) == t)   //Comparo con el tema "t"
                    aux = aux + vectorSalas[i].toStringAlumnos(j);
        }
        return aux;
    }
    
    
}
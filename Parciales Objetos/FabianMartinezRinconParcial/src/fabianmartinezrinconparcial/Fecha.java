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
    
    
    public Fecha(int n, int m){
        df = n;
        vectorSalas = new Sala[df];
        for(int i=0; i<n; i++)
            vectorSalas[i] = new Sala(m);     
    }    
    
    public void agregarAlumno(Alumno a,int x){         
        vectorSalas[x].agregarAlumnoSala(a);         
    }

    
    public void asignarTema(){
        for (int i = 0; i < df; i++) {
            vectorSalas[i].asignarTema(i);         
        }    
    }
       
    public String toStringInscriptos(int t){
        String aux = "";
        System.out.println("Alumnos inscriptos con el tema: " + t);
        for(int i=0;i < df;i++){
            for(int j =0;j<vectorSalas[i].getDl();j++)
                if(vectorSalas[i].getNroTema(j) == 2)
                    aux = aux + vectorSalas[i].toStringAlumnos(j);
        }
        return aux;
    }
    
    
}
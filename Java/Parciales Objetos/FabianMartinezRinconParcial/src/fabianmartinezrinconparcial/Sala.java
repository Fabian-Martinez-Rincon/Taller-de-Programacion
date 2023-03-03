package fabianmartinezrinconparcial;

import PaqueteLectura.GeneradorAleatorio;


public class Sala {
    private Alumno vectorAlumnos[];
    private int dl;
    private int df;
    
    public Sala (int m){
        this.df = m; //Maximo de alumnos
        vectorAlumnos = new Alumno[df];
        dl = 0;           
    }
        
    
    public void agregarAlumnoSala(Alumno a){
        vectorAlumnos[dl] = a;
        dl++;     
    }
      
    
    public void asignarTema(){  
        GeneradorAleatorio.iniciar();
        int nro;
        for (int j = 0; j <dl ; j++) {
            nro = GeneradorAleatorio.generarInt(df); 
            vectorAlumnos[j].setNroTemaAsignado(nro);
        }   
        
    }
    
    
    public String toStringAlumnos(int n){
        String aux = "";
        aux = "\n" + vectorAlumnos[n];       
        return aux;
    }
    
    public int getDl(){
        return dl;
    }
    
    public int getNroTema(int n){
        int aux =0;
        aux =  vectorAlumnos[n].getNroTemaAsignado();       
        return aux;
    }
   
      
}
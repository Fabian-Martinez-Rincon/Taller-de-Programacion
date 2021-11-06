package representarfechas;

import PaqueteLectura.GeneradorAleatorio;

public class Sala {
    
    private Alumno alumnos[];
    private int df;
    private int dl;
    
    public Sala(int m){
        this.df = m;
        this.dl = 0;
        alumnos = new Alumno[df];
    }
    
    public void AgregarAlumno(Alumno a){
        alumnos[dl] = a;
        dl++;
    }
    
    public int getCant(){
        return dl;
    }
    
    public void asignarTema(){
        GeneradorAleatorio.iniciar();
        for(int i=0; i<dl; i++)
            alumnos[i].setTema(GeneradorAleatorio.generarInt(df));
    }
    
    public String toString(int t){
        String aux="";
        for(int i=0; i<dl; i++){
            if(alumnos[i].getTema() == t)
                aux = aux + alumnos[i] + " ";
        }
        return aux;
    }
    
}
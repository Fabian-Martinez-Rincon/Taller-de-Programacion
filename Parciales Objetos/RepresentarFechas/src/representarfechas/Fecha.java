package representarfechas;

import PaqueteLectura.GeneradorAleatorio;

public class Fecha {
    
    private Sala salas[];
    private int df;
    
    public Fecha(int n, int m){
        this.df = n;
        salas = new Sala[df];
        for(int i=0; i<df; i++)
            salas[i] = new Sala(m);
    }
    
    public void AgregarAlumno(Alumno a, int x){
        salas[x].AgregarAlumno(a);
    }
    
    public void AsignarTema(){
        int j;
        for(int i=0; i<df; i++){
            salas[i].asignarTema();
        }
    }
    
    public String toString(int t){
        String aux="";
        for(int i=0; i<df; i++){
            aux = aux + "\n" + salas[i].toString(t);
        }
        return aux;
    }
    
}
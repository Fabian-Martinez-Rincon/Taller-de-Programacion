/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package finalesObjetos;

/**
 *
 * @author Lucia
 */
public class Agenda {
    private Paciente [][] turnos;

public Agenda() {
   int i;
   int j;
   this.turnos= new Paciente[5][6];
}
    
public void agendarPaciente (Paciente p, int dia, int hora){
    this.turnos[dia][hora]= p;
}

public void liberarTurno (String nombre){
    int i;
    int j;
    for(i=0; i<5; i++){
        for(j=0; j<6; j++){
          if ((this.turnos[i][j] != null) && (this.turnos[i][j].getNombre().equals(nombre))){
              this.turnos[i][j]=null;
          }          
        }
    }    
}

public boolean turnoAgendado(String nombre, int dia){
    int i=0;
    boolean tiene=false;
    while ((i<6) && !(tiene)){
      if ((this.turnos[dia][i] != null) && (this.turnos[i][dia].getNombre().equals(nombre))){
          tiene=true;
      }else {
          i++;
      }        
    }    
    return tiene;
}


    

    
    
    
    
}

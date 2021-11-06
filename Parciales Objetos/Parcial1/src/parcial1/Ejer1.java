/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package finalesObjetos;
import PaqueteLectura.Lector;
public class Ejer1 {

    public static void main(String[] args) {
        
        int i;
        int horario;
        int dia;
        String nombre = new String();
        Agenda agenda =new Agenda();
          
        for (i=0; i<2; i++){
          System.out.println("ingrese dia");
          dia= Lector.leerInt();
          System.out.println("Ingrese hora");
          horario= Lector.leerInt();
          Paciente p= new Paciente();
          System.out.println("Ingrese nombre del paciente");
          p.setNombre(Lector.leerString());
          System.out.println("Ingrese si tiene obra social");
          p.setObraSocial(Lector.leerBoolean());
          System.out.println("Ingrese monto de sesion");
          p.setMonto(Lector.leerInt());
          agenda.agendarPaciente(p, dia,horario);
        }
        agenda.liberarTurno("JUAN");        
        if (agenda.turnoAgendado("CAMILA", 4)){
            System.out.println("Se libero el turno de camila");
        }else{
            System.out.println("Camila no tenia turnos");
        }            
    }    
}

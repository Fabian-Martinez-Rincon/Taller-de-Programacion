public class Flota_Joa {
    
    private Micro_Joa [] microsFlota;
    private int cantMicros;
    
    
//------------------------------------------------------------------------------ constructores 
    
    public Flota_Joa(){ 
        cantMicros =0;
        microsFlota = new Micro_Joa[15];
        for (int i=0; i<15; i++){
            microsFlota[i] = null;                                              
        }
    }
//------------------------------------------------------------------------------ Metodos
    
 public boolean flotaCompleta (){
     boolean aux=false;
     if(cantMicros == 15)
         aux=  true;
    return aux;
 }   
    
 public void agregar (Micro_Joa micro){
     if(cantMicros<15){
        microsFlota[cantMicros] = micro;
        cantMicros++; 
     }
 }   
    
public boolean eliminar(String patente){  //FALTA HACER CORRIMIENTO
    boolean aux=false;
    int i=0;
    while((i<15)&&(!microsFlota[i].getPatente().equals(patente))){              // Error en esta linea cuando pongo una patente que no 
        i++;
    }
    if(i != 15){
        aux=true;
        microsFlota[i] = null;
        cantMicros--;
    }
    return aux;
} 
    
public Micro_Joa buscarPatente(String patente){                                     
    int i = 0;
    while((i<15)&&(microsFlota[i].getPatente().equals(patente))){
        i++;
    }
    if(i != 15){
        return microsFlota[i];
    }
    return null;
}   
    
 public Micro_Joa buscarDestino (String destino){ 
    Micro_Joa aux = null;       //NO HACE FALTA
    int i = 0;
    while((i<15)&&(!microsFlota[i].getDestino().equals(destino))){
        i++;
    }
    if(i != 15){
        aux = microsFlota[i];
    }
    return aux;
 }       
}
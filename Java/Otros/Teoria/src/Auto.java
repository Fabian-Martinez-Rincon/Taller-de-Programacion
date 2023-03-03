
public class Auto {
    private int patente;
    private String dueño;

    public Auto() {
    }

    // Provea un constructor para iniciar los autos a partir de nombre de dueño y patente. 
     public Auto(int patente, String dueño) {
        this.patente = patente;
        this.dueño = dueño;
    }
    
    public int getPatente() {
        return patente;
    }

    public void setPatente(int patente) {
        this.patente = patente;
    }

    public String getDueño() {
        return dueño;
    }

    public void setDueño(String dueño) {
        this.dueño = dueño;
    }
    

    @Override
    public String toString() {
        return "Patente: "+patente+ " Dueño: "+dueño; //To change body of generated methods, choose Tools | Templates.
    }
    
    
    
}

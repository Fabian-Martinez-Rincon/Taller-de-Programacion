package representarfechas;

public class representarfechas {
    
    public static void main(String[] args) {
        
        Fecha f = new Fecha(2,4);
        
        Alumno a1 = new Alumno("Juan",604);
        f.AgregarAlumno(a1,1);
        
        Alumno a2 = new Alumno("Sofia",287);
        f.AgregarAlumno(a2,1);
        
        Alumno a3 = new Alumno("Mariangeles",407);
        f.AgregarAlumno(a3,0);
        
        Alumno a4 = new Alumno("Lucas",324);
        f.AgregarAlumno(a4,0);
        
        Alumno a5 = new Alumno("Luciano",285);
        f.AgregarAlumno(a5,1);
        
        Alumno a6 = new Alumno("Natalia",923);
        f.AgregarAlumno(a6,0);
        
        f.AsignarTema();
        
        int nroTema = 2;
        System.out.println("Alumnos con el tema " + nroTema + " " + f.toString(nroTema));
        
    }
    
}

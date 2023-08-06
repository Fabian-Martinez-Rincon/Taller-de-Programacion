package fabianmartinezrinconparcial;

public class FabianMartinezRinconParcial {

    public static void main(String[] args) {
        
        Fecha f1= new Fecha(2,4);   
        
        Alumno a1 = new Alumno("Juan",604);
        f1.agregarAlumno(a1,0);   
        Alumno a2 = new Alumno("Matias",306);
        f1.agregarAlumno(a2,0);
        Alumno a3 = new Alumno("Aaron",407);
        f1.agregarAlumno(a3,1); 
        Alumno a4 = new Alumno("Marian",347);
        f1.agregarAlumno(a4,1);
        Alumno a5 = new Alumno("luciano",816);
        f1.agregarAlumno(a5,0); 
        Alumno a6 = new Alumno("Sofia",287);
        f1.agregarAlumno(a6,0);
        f1.asignarTema();
        System.out.println(f1.toStringInscriptos(2));
    }
}

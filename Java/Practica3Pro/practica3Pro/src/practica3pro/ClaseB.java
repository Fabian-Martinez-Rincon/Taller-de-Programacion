package practica3pro;

public class ClaseB extends ClaseA{
 
    public int dos(){
        return 5;
    }
 
    public int cuatro(){
        return this.dos() + super.tres(); 
    }
 
    public int seis(){
        return this.dos();
    }
}

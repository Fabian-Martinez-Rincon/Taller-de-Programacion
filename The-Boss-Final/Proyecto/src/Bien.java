import javax.management.Descriptor;

public class Bien {
    private String description;
    private Integer cantidad;
    private double costoUnitario;

    public Bien(String description, Integer cantidad, double costoUnitario){
        this.description = description;
        this.cantidad = cantidad;
        this.costoUnitario = costoUnitario;
    }
}

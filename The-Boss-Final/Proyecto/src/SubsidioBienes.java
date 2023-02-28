public class SubsidioBienes extends Subsidio {
    private Bien[] bienes;
    private Integer dimF;
    private Integer dimL;

    public SubsidioBienes(Integer N, String nombreInv, String nombrePlan, String fecha){
        super(nombreInv, nombrePlan, fecha);
        this.dimF = N;
        this.dimL = 0;
        this.bienes = new Bien[N];
        for(Integer i = 0; i < N; i++){
            this.bienes[i] = null;
        }
    }

    public void agregarBien(Bien bien){
        this.bienes[this.dimL] = bien;
        this.dimL++;
    }
}

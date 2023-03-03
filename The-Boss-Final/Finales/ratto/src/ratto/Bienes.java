/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ratto;

/**
 *
 * @author alumnos
 */
public class Bienes extends Subsidios {

    private Bien bienes[];
    private int dimF;
    private int cantBienes;

    public Bienes(int N, String nombreInves, String nombrePlan, String fecha) {
        super(nombreInves, nombrePlan, fecha);
        this.dimF = N;
        this.bienes = new Bien[N];
        for (int i = 0; i < dimF; i++) {
            this.bienes[i] = null;
        }
        this.cantBienes = 0;
    }

    public void agregarBien(Bien b) {
        this.bienes[this.cantBienes] = b;
        this.cantBienes++;
    }

    public Bien obtenerBien(int i) {
        return this.bienes[i];
    }

    @Override
    public double devolverMontoTotal() {
        double costoFinal = 0;
        for (int i = 0; i < cantBienes; i++) {
            costoFinal += obtenerBien(i).getCantidad() * obtenerBien(i).getCostoXunidad();
        }
        return costoFinal;
    }

    public String devolverDescrip() {
        String aux = "";
        for (int i = 0; i < cantBienes; i++) {
            aux += " Bien: " + (i + 1) + this.bienes[i].getDescripcion();
        }
        return aux;
    }

    public String toString() {
        return super.toString() + " Descripcion de los biene solicitacitados : " + devolverDescrip();
    }

}

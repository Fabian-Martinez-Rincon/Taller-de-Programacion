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
public class Ratto {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Bienes b = new Bienes(3, " Investigador Bienes ", " Plan bienes ", " 8/9 ");
        Bien bien = new Bien(" Un bien 1 ", 3, 100);
        Bien bien2 = new Bien(" Otro bien 2", 3, 100);
        b.agregarBien(bien);
        b.agregarBien(bien2);
        System.out.println(b.toString());
        Estadias e = new Estadias(" Lobos ", 10, 10, 10, " nombre investigador estadia ", " nombre plan estadia ", " 15/9 ");
        Estadias e1 = new Estadias("la pampa", 10, 1, 10, "nombre 2", "plancito ", "5/10");
        System.out.println(e.toString());
        System.out.println(e1.toString());
    }

}

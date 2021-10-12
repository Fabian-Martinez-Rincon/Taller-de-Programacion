/*
6- Se dispone de la clase Partido (ya implementada en la carpeta tema2). Un objeto 
partido representa un encuentro entre dos equipos (local y visitante). Un objeto partido 
puede crearse sin valores iniciales o enviando en el mensaje de creación el nombre del 
equipo local, el nombre del visitante, la cantidad de goles del local y del visitante (en ese 
orden). Un objeto partido sabe responder a los siguientes mensajes:

getLocal() retorna el nombre (String) del equipo local
getVisitante() retorna el nombre (String) del equipo visitante
getGolesLocal() retorna la cantidad de goles (int) del equipo local
getGolesVisitante() retorna la cantidad de goles (int) del equipo visitante
setLocal(X) modifica el nombre del equipo local al “String” pasado por parámetro (X)
setVisitante(X) modifica el nombre del equipo visitante al “String” pasado por parámetro (X)
setGolesLocal(X) modifica la cantidad de goles del equipo local “int” pasado por parámetro (X)
setGolesVisitante(X) modifica la cantidad de goles del equipo visitante “int” pasado por parámetro (X)
hayGanador() retorna un boolean que indica si hubo (true) o no hubo (false) ganador
getGanador() retorna el nombre (String) del ganador del partido (si no hubo retorna un String 
vacío). 
hayEmpate() retorna un boolean que indica si hubo (true) o no hubo (false) empate

Implemente un programa que cargue un vector con a lo sumo 20 partidos disputados en el 
campeonato. La información de cada partido se lee desde teclado hasta ingresar uno con 
nombre de visitante “ZZZ” o alcanzar los 20 partidos. Luego de la carga informar:
- La cantidad de partidos que ganó River.
- El total de goles que realizó Boca jugando de local.
- El porcentaje de partidos finalizados con empate. 
 */
package FABIAN_SEGUNDO_SEMESTRE;
import PaqueteLectura.GeneradorAleatorio;

public class Ejercicio6_Parte2 {
    public static void main(String[] args) {
        GeneradorAleatorio.iniciar();
        int cantidad = 0;
        Partido partidos[]=new Partido[20];  
        String nom;
        nom= GeneradorAleatorio.generarString(5);
        
        while (!nom.equals("ZZZ")&&(cantidad<20)){
            partidos[cantidad]= new Partido();
            partidos[cantidad].setLocal(GeneradorAleatorio.generarString(5));
            partidos[cantidad].setVisitante(nom);
            partidos[cantidad].setGolesLocal(GeneradorAleatorio.generarInt(10));
            partidos[cantidad].setGolesLocal(GeneradorAleatorio.generarInt(10));
            nom = GeneradorAleatorio.generarString(5);
            cantidad++;
        }
        
        int River = 0;
        int Goles_Boca = 0;
        int empates = 0;
        for (int j = 0; j < cantidad; j++) {
            if (partidos[j].getGanador().equals("River")) {
                River++;
            }
            if (partidos[j].getLocal().equals("Boca")) {
                Goles_Boca+=partidos[j].getGolesLocal();
            }
            if (partidos[j].hayEmpate()){               //-----------> SI EL IF DE ARRIBA DA TRUE OSEA QUE HAY GANADOR, OSEA QUE ESTA PREGUNTA ESTARIA DE MAAS
                empates++;
            }
        }
        System.out.println("Goles de River: " + River);
        System.out.println("Goles de Boca, siendo de local: "+ Goles_Boca);
        System.out.println("El porcentaje de partidos que termiron en empate es: " + (empates/cantidad));
        
    }
}

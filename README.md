<div align="center">

[![contributions welcome](https://img.shields.io/badge/contributions-welcome-brightgreen.svg?style=flat)](https://github.com/Nomadiix/Taller-de-Programacion)
[![GitHub stars](https://img.shields.io/github/stars/Nomadiix/Taller-de-Programacion)](https://github.com/FabianMartinez1234567/Taller-de-Programacion/stargazers/)
[![GitHub repo size in bytes](https://img.shields.io/github/repo-size/Nomadiix/Taller-de-Programacion)](https://github.com/Nomadiix/Taller-de-Programacion)

<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&size=30&duration=1200&pause=1000&color=F7F123&center=true&width=475&lines=👾 Taller de Programación"/>

---

<a title="" href="https://youtu.be/a00alSeeu70?si=7S-22NfZSq9Uvwjr"><img src="/Documentos/image.png" width="550px"  /></a>

 </div>







<img src= 'https://i.gifer.com/origin/8c/8cd3f1898255c045143e1da97fbabf10_w200.gif' height="20" width="100%"> 

> [!IMPORTANT]  
> Si encuentran algun link roto o tienen alguna duda, no duden en decirme por mail fabianmartinezrincon.123@gmail.com

- [Clases Grabadas](https://drive.google.com/drive/folders/1FPR0cU_LpLG3NTRA6Q9EmkIbzBSK64Ao)
- Para R-INFO
  - [Visual Studio](https://code.visualstudio.com/download)
  - [R-INFO](/r-Info-2.9.jar)
- Para Java
  - [Java](https://www.java.com/es/)
  - [Java JDK](https://www.oracle.com/java/technologies/downloads/#jdk17-windows)
  - [Netbeans](https://netbeans.apache.org/)
- Para Pascal
  - Geany
- [🧾 Listas ](/Documentos/Listas.md)
- [📚 Vectores ](/Documentos/Vectores.md)
- [🌳 Arboles ](/Documentos/Arboles.md)
- [EJercicio Con Merge](/Pascal/Practica/Semana_3/11.pas)
- [Ejercicio Con Merge Acumulador](/Pascal/Practica/Semana_3/12.pas)
- [☕ Java (Teoria) ](/Documentos/Java.md)
- [☕ Java (Codigos)](/Documentos/Java2.md)
  - [Practica 1 ](/Documentos/Java_Practica1.md)
  - [Practica 2 ](/Documentos/Java_Practica2.md)
  - [Practica 3 ](/Documentos/Java_Practica3.md)
  - [Practica de Repaso ](/Documentos/Java_Practica4.md)
  - [Parciales Objetos](/Documentos/ParcialesObjetos.md)
- [🤖 R-Info ](/Documentos/RInfo.md)
  - [Practica 1 ](/Documentos/Rinfo_Practica1.md)
  - [Practica 2 ](/Documentos/Rinfo_Practica2.md)
  - [Practica 3 ](/Documentos/Rinfo_Practica3.md)
  - [Parciales Concurrente](/Documentos/ParcialesConcurrente.md)
- [Parciales Imperativo](/Documentos/ParcialesImperativo.md)
- [Parciales Teoricos](/Documentos/Teoria.md)
- [Programas](/Documentos/programas.md)
- [Finales](/Documentos/Finales.md)
- [Parciales Cuarentena](/Documentos/Parciales.md)

<img src= 'https://i.gifer.com/origin/8c/8cd3f1898255c045143e1da97fbabf10_w200.gif' height="20" width="100%">

<details><summary>CheatSheet</summary>

![WhatsApp Image 2023-03-12 at 23 45 32](https://github.com/Fabo-University/Taller-de-Programacion/assets/55964635/5efa3799-b506-4d23-a1a7-e25a131b93f4)
</details>




En esta página voy a tratar de explicar todo lo que se necesita para aprobar el final independientemente del tema. Hay muchas cosas que uno lo puede deducir, pero en esta cátedra el más mínimo error es motivo para un 2(dos).

# 💀 Final Taller de Programación

## Final Pascal

- [Video para instalar pascal en vs-code](https://www.youtube.com/watch?v=kN9NGex2-yg&ab_channel=Cio)

Si te toca este final, tenes 2 opciones nada más. 
- Merge acumulador
- Arboles

Para ambos temas te tenes que saber si o si:
- Agregar Adelante
- Agregar Atras
- Insertar Ordenado

#### Agregar Adelante

```pascal
Procedure AgregarAdelante (var L:lista; x:integer);
Var 
    nue:Lista;
Begin  
    New(nue);  
    nue^.datos:=x;  
    nue^.sig:=L;  
    L:=nue; 
End;    
```

#### Agregar Atras

```pascal
procedure AgregarAlFinal(var l,ult:lista;x:integer); 
var  
    nue : lista;
begin 
    new (nue);
    nue^.dato:= x;
    nue^.sig := NIL;
    if l <> Nil then 
        ult^.sig := nue
    else 
        l := nue;
    ult := nue;
end;
```

#### Insertar Ordenado

```pascal
Procedure InsertarElemento ( var pri: lista; x: Integer);
var 
    ant, nue, act: lista;
begin
    new (nue);
    nue^.dato := x;
    act := pri;
    ant := pri;
    while (act<>NIL) and (act^.dato < x) do 
    begin
        ant := act;
        act := act^.sig ;
    end;
    if (ant = act)  then 
        pri := nue   
    else  
        ant^.sig  := nue; 
    nue^.sig := act ;
end;
```

Mira, para probar los codigos yo lo que hago es hacer una lista de numeros enteros y, insertando lo que quiera probar y despues imprimo la lista para ver si esta bien. 

```pascal
procedure ImprimirLista (L:lista);
begin
    while (L <> nil) do 
    begin
        writeln (L^.dato);
        L:= L^.sig;
    end;
end;
```

> IMPORTANTE: Yo no avanzaria hasta saber bien estos codigos, ya que si tenes algun error en estos es causa de desaprobar :,(

Y con esto nos aseguramos de tener todo en orden.


Bien, una vez que sabemos que funcionan los codigos, vamos a resolver el siguiente final.

### Final Merge Acumulador

> En este final no me acordaba el insertar ordenado y el modulo recursivo del punto c, lo habia hecho mal

![image](https://github.com/Fabian-Martinez-Rincon/Fabian-Martinez-Rincon/assets/55964635/fa8d3aea-b55f-4814-b3bc-3afb4082798e)

Tenemos los datos relevantes con colores que seria **denuncia** que contiene lo siguiente:

- Categoria de denuncia 1..6
- DNI
- Direccion
    - Numero de calle
    - Numero de altura
- Mes
- Dia
- Hora

Bien una vez que tenemos estos datos, podemos empezar a ver los puntos dados.

#### Punto A
- Al decirnos que estan agrupadas por categoria nos indica que es un vector de listas (un vector de 6 agrupa las denuncias por categoria).
- Tambien nos dice que estan ordenadas por numero de calle, por lo que usaremos el proceso de **InsertarOrdenado**

#### Punto B

- Al decir que recibe un vector de listas y devuelve una sola lista nos indica que tenemos que usar un **merge** y por defecto usamos un **agregarAtras** en el modulo de minimo.
- Cuando nos dice que para cada nro de calle en especifica, ya sabemos que es un **merge acumulador** (un merge normal pero con un corte de control)
- Para los merges acumuladores es recomendable crear una estructura de datos aparte, que tenga los datos solicidatos, en este caso, **nro de calle**, **cantidad total de denuncias** y **cantidad de denuncias realizadas en el mes de julio**

#### Punto C
Bien, en este caso, yo lo que hago siempre es hacer el module en forma iterativa, para probar y despues lo paso a recursivo. Basicamente cambias el **while** por el **if** y despues llavas cambias en donde se incrementa la variable, por una llamada a la funcion con el incremento o modificación correspondiente.


### Codigo Completo (No lo probe)

```pascal
program imperativo;
const
    DIMF = 6;
type
    categoria = 1..DIMF;
    direccion = record
        nroCalle:integer;
        nroAltura:integer;
    end;
    denuncia = record
        cat:categoria;
        DNI:integer;
        dir:direccion;
        mes:integer;
        dia:integer;
        hora:integer;
    end;
    lista = ^nodo;
    nodo = record
        dato:denuncia;
        sig:lista;
    end;
    vectorContador = array [1..DIMF] of lista;

    datoNuevo = record
        nroCalle:integer;
        denunciasTotales:integer;
        denunciasJulio:integer;
    end;
    listaNueva = ^nodoNuevo;
    nodoNuevo = record
        dato:datoNuevo;
        sig:listaNueva;
    end;

procedure insertarOrdenado(var l:lista;d:denuncia);
var
    act,ant,nue:lista;
begin
    new(nue);
    nue^.dato:=d;
    act:=l;
    ant:=l;
    while (act <> nil) and (act^.dato.DNI < d.DNI) do
    begin
        ant:=act;
        act:=act^.sig;
    end;
    if (act = ant) then
        l:=nue
    else
        ant^.sig:=nue;
    nue^.sig:=act;
end;

procedure imprimirLista(l:lista);
begin
    while l <> nil do
    begin
        WriteLn(l^.dato.DNI);
        l:=l^.sig;
    end;
end;

procedure agregarAtras(var l,ult:listaNueva; nro:datoNuevo);
var
    nue:listaNueva;
begin
    new(nue);
    nue^.dato:=nro;
    nue^.sig:=nil;
    if (l = nil) then
        l:=nue
    else
        ult^.sig:=nue;
    ult:=nue;    
end;

procedure leerDenuncia(var d:denuncia);
begin
    
    writeln('Ingresar dni: '); ReadLn(d.DNI);

    if (d.DNI <> 0) then
    begin
        writeln('Ingresar categoria: '); ReadLn(d.cat);
        writeln('Ingresar nroCalle: '); ReadLn(d.dir.nroCalle);
        writeln('Ingresar nroAltura: '); ReadLn(d.dir.nroAltura);
        writeln('Ingresar mes: '); ReadLn(d.mes);
        writeln('Ingresar dias: '); ReadLn(d.dia);
        writeln('Ingresar hora: '); ReadLn(d.hora);
    end;
end;

procedure cargarDenuncias(var vc:vectorContador);
var
    d:denuncia;
begin
    leerDenuncia(d);
    while (d.DNI <> 0) do
    begin
        insertarOrdenado(vc[d.cat],d);
        leerDenuncia(d);
    end;
end;
procedure inicializarVector (var vc:vectorContador);
var
    i:integer;
begin
    for i:=1 to DIMF do
    begin
        vc[i]:=nil;
    end;
end;

procedure minimo(vc:vectorContador; var min:denuncia);
var
    posMin:integer;
    i:integer;
begin
    posMin:=-1;
    min.DNI:=9999;
    for i:=1 to DIMF do
    begin
        if (vc[i] <> nil) and (vc[i]^.dato.DNI < min.DNI) then
        begin
            min.DNI:=vc[i]^.dato.DNI;
            posMin:=i;
        end;
    end;
    if (posMin <> -1) then
    begin
        min:=vc[posMin]^.dato;
        vc[posMin]:=vc[posMin]^.sig;
    end;
end;
procedure mergeAcumulador(vc:vectorContador;var ln:listaNueva);
var
    min:denuncia;
    actual:datoNuevo;
    ult:listaNueva;
begin
    ult:=nil;
    minimo(vc,min);
    while (min.DNI <> 9999) do
    begin
        actual.nroCalle:=min.DNI;
        actual.denunciasTotales:=0;
        actual.denunciasJulio:=0;
        while (min.DNI <> 9999) and (actual.nroCalle = min.DNI)  do
        begin
            actual.denunciasTotales:=actual.denunciasTotales + 1;
            if (min.mes = 6) then
                actual.denunciasJulio:=actual.denunciasJulio + 1;
            minimo(vc,min);  
        end;
        agregarAtras(ln,ult,actual);
    end;
end;
procedure calleDenuncias(l:listaNueva;var nroCalle:integer;calleMax:integer);
begin
    if l <> nil then
    begin
        if (calleMax < l^.dato.denunciasTotales) then
        begin
            calleMax:=l^.dato.denunciasTotales;
            nroCalle:=l^.dato.nroCalle;
        end;
        calleDenuncias(l^.sig,nroCalle,calleMax)
    end;
end;
var
    vc:vectorContador;
    l:listaNueva;
    calleDenuncias:integer;
    calleMaxima:integer;
begin
    inicializarVector(vc);
    cargarDenuncias(vc);
    mergeAcumulador(vc,l);
    calleDenuncias:=0;
    calleMaxima:=-1;
    calleMasDenuncias(l,calleDenuncias,calleMaxima);
    writeln('La calle con mas denuncias es: ', calleDenuncias);
end.
```


---

### Final Arboles

> En este final tenia mal el recorrido del arbol, lo puse dos condicionales en la condicion base. (Y siempre va <> nil en la condicion base)

![image](https://github.com/Fabian-Martinez-Rincon/Fabian-Martinez-Rincon/assets/55964635/749e071a-179f-4db5-97f3-1c2ede2e5fb8)

> IMPORTANTE: Primero te diria que resuelvas este parcial con full enteros y despues le agregues los datos compuestos, ya que es mas facil/rapido de testear

En los teoricos suelen tomar el recorrido optimo del arbol

Tenemos **recital** con los siguientes datos

- Nombre de la Banda
- Fecha del recital
- Cantidad de canciones tocadas
- Monto recaudado por la venta de entradas

Bien, una vez que tenemos estos datos, podemos empezar a ver los puntos dados.

#### Punto A
- En el momento que nos dice que tienen que estar en **una estructura que permite el recorrido optimo** por **monto recaudado**, usamos un **arbol**

#### Punto B

- Mira, esta parte puede ser la menos intuitiva, ya que NO tenemos que recorrer el arbol completo, tenemos que recorrer las ramas, hasta estar en el rango de numeros
- Tenemos que usar un **agregarAtras**, ya que el arbol al estar ordenado, mantenemos el orden.

#### Punto C

- Aca simplemente hacemos el modulo iterativo, cambiamos el while por el if y despues cambiamos el incremento de la variable, por la llamada al proceso con el incremento como parametro.


#### Codigo Completo (No lo probe)

```pascal
program arboles;
type
    recital = record
        nombreBanda:String;
        fecha:String;
        cantTocadas:integer;
        montoRecaudado:real;
    end;
    arbol = ^nodo;
    nodo = record
        dato:recital;
        HI:arbol;
        HD:arbol;
    end;
    lista = ^nodoNuevo;
    nodoNuevo = record
        dato:recital;
        sig:lista;
    end;

procedure crearArbol(var abb:arbol;nro:recital);
begin
    if (abb = nil) then
    begin
        new(abb);
        abb^.dato:=nro;
        abb^.HI:=nil;
        abb^.HD:=nil;
    end
    else
        if (abb^.dato.montoRecaudado > nro.montoRecaudado) then
            crearArbol(abb^.HI,nro)
        else
            crearArbol(abb^.HD,nro);
end;

procedure leerRecital(var r:recital);
begin
    Write('Ingresar nombreBanda: '); ReadLn(r.nombreBanda);
    if (r.nombreBanda <> 'ZZZ') then
    begin
        Write('Ingresar fecha: '); ReadLn(r.fecha);
        Write('Ingresar cantTocadas: '); ReadLn(r.cantTocadas);
        Write('Ingresar monto Recaudado: '); ReadLn(r.montoRecaudado);
    end;
end;
procedure LeerRecitales(var abb:arbol);
var
    dato:recital;
begin
    leerRecital(dato);
    while dato.nombreBanda <> 'ZZZ' do
    begin
        crearArbol(abb,dato);
        leerRecital(dato);
    end;
end;
procedure agregarAdelante(var l:lista; r:recital);
var
    nue:lista;
begin
    new(nue);
    nue^.dato:=r;
    nue^.sig:=l;
    l:=nue;
end;

procedure entreRango(abb:arbol;nro1,nro2:integer;var l:lista);
begin
    if (abb <> nil)then
    begin
        if (abb^.dato.montoRecaudado < nro1) then
            entreRango(abb^.HD,nro1,nro2,l)
        else if (abb^.dato.montoRecaudado > nro2) then
            entreRango(abb^.HI,nro1,nro2,l)
        else
            begin
                entreRango(abb^.HI,nro1,nro2,l);
                agregarAdelante(l,abb^.dato);
                entreRango(abb^.HD,nro1,nro2,l);
            end;
    end;
end;
procedure recitalesMas12Canciones(l:lista; var cantMas12:integer);
begin
    if (l <> nil) then
    begin
        if (l^.dato.cantTocadas >= 12) then
          cantMas12:= cantMas12 + 1;
        recitalesMas12Canciones(l^.sig,cantMas12);
    end;    
end;
var
    abb:arbol;
    nro1,nro2:integer;
    l:lista;
    cantMas12:integer;
begin
    abb:=nil;
    LeerRecitales(abb);
    nro1:=3;
    nro2:=8;
    l:=nil;
    entreRango(abb,nro1,nro2,l);
    cantMas12:=0;
    recitalesMas12Canciones(l,cantMas12);
    WriteLn('La cantidad de recitales que tocaron mas de 12 canciones son:', cantMas12);
end.
```

---


## Final Objetos

- [Video para instalar Java](https://www.youtube.com/watch?v=MXHsvSvJpHI&ab_channel=TecnoTutoriales)

En todos los finales de objetos son mas o menos lo mismo, con resolver bien este final creo que abarcas todos los temas de objetos.

> Cuando rendi este final me dijieron que tenia un 10 en el practico, pero me fue mal en las preguntas teoricas.

![Objetos](https://github.com/Fabian-Martinez-Rincon/Fabian-Martinez-Rincon/assets/55964635/45f4d6a1-edba-4c42-9dfa-eb40fa405f33)

> IMPORTANTE en este tipo de finales NO tenes collecciones, nos manejamos siempre con arrays

Lo mas importante es identificar los objetos con sus atributos y herencias que tenemos.

- Tenista
    - Nombre
    - Cantidad de Partidos Ganados
    - Premios obtenidos en toda su carrera (un array de reales)
- Partido
    - Fecha (string)
    - Lugar
    - Resultado
        - SetsEquipo1
        - SetsEquipo2
- Partido Single (Heredan de Partido) 
    - 2 tenistas
- Partido Doble (Heredan de Partido)
    - 4 tenistas

Una vez que definimos todos los tipos de datos. Empezamos a ver los puntos y definimos los metodos segun el objeto.
- Cuando decimos que debe instanciarse con todos sus datos, nos referimos al constructor.

#### Main (Falta el de dobles pero me estoy durmiendo y no tengo muchas ganas)

```java
public class Ultimo {

    public static void main(String[] args) {

        Tenista t1 = new Tenista("Fabian",2,12);
        Tenista t2 = new Tenista("Fernando",1,1);
        
        String fecha = "1-1-2023";
        String lugar = "La Plata";
        
        Single partidoS = new Single(fecha,lugar,t1,t2); 
        partidoS.registrarResultado(1, 2);
        partidoS.registrarResultado(1, 2);
        partidoS.registrarResultado(1, 2);
        
        partidoS.otorgarPremio(100000);
    }
}
```


#### Tenista

```java
public class Tenista {
    private String nombre;
    private int partidosGanados;
    private double premios;
    
    public Tenista(String nombre, int partidosGanados, double premios){
        this.nombre = nombre;
        this.partidosGanados = partidosGanados;
        this.premios = premios;
    }
    
    public void ganoPartido(){
        this.partidosGanados++;
    }
    
    public void agregarPremio(double premio){
        this.premios = this.premios + premio;
    }
    
    public int getPartidosGanados(){
        return this.partidosGanados;
    }
}
```

#### Partido

```java
public abstract class Partido {
    private String fecha;
    private String lugar;
    private int lado1;
    private int lado2;
    
    public Partido(String fecha, String lugar){
        this.fecha = fecha;
        this.lugar = lugar;
        this.lado1 = 0;
        this.lado2 = 0;
    }
    
    public void registrarResultado(int lado1, int lado2){
        if (lado1 > lado2) {
            this.lado1++;
        }
        else{
            this.lado2++;
        }
    }
    
    public boolean finalizo(){
        if ((this.lado1 == 3) || (this.lado2 == 3)) {
            return true;
        }
        return false;
    }
    
    abstract public void otorgarPremio(double premio);
    
    public boolean ganoLado1(){
        if (this.lado1 == 3){
            return true;
        }
        return false;
    }
}
```

#### Single

```java
public class Single extends Partido {
    private Tenista t1;
    private Tenista t2;
    
    public Single(String fecha, String lugar,Tenista t1, Tenista t2){
        super(fecha,lugar);
        this.t1 = t1;
        this.t2 = t2;
    }

    @Override
    public void otorgarPremio(double premio) {
        //Suponemos que el partido termino (algun lado tiene 3 sets ganados)
        if (this.ganoLado1()){
            this.t1.ganoPartido();
            this.t1.agregarPremio(premio);
        }
        else{
            this.t2.ganoPartido();
            this.t2.agregarPremio(premio);
        }
    }
}
```

#### Doble

```java
public class Doble extends Partido {
    Tenista t1E1;
    Tenista t2E1;
    Tenista t1E2;
    Tenista t2E2;
    
    public Doble (String fecha, String lugar, Tenista t1E1, Tenista t2E1, Tenista t1E2, Tenista t2E2){
        super(fecha, lugar);
        this.t1E1 = t1E1;
        this.t2E1 = t2E1;
        this.t1E2 = t1E1;
        this.t2E2 = t1E2;
    }

    public double calcularPremio(int ganadosJ1, int ganadosJ2){
        return (ganadosJ1 / (ganadosJ1 + ganadosJ2));
    }
    @Override
    public void otorgarPremio(double premio) {
        double premio1,premio2 = 0;
        if (this.ganoLado1()){
            premio1 = premio * this.calcularPremio(this.t1E1.getPartidosGanados(), this.t2E1.getPartidosGanados());
            this.t1E1.agregarPremio(premio1);
            premio2 = premio * this.calcularPremio(this.t2E1.getPartidosGanados(), this.t1E1.getPartidosGanados());
            this.t2E1.agregarPremio(premio2);
        }
        else{
            premio1 = premio * this.calcularPremio(this.t1E2.getPartidosGanados(), this.t2E2.getPartidosGanados());
            this.t1E2.agregarPremio(premio1);
            premio2 = premio * this.calcularPremio(this.t2E2.getPartidosGanados(), this.t1E2.getPartidosGanados());
            this.t2E2.agregarPremio(premio2);
        }
    }
}   
```



### Final Concurrente

- [Archivo para programar](https://github.com/Fabo-University/Taller-de-Programacion/blob/main/r-Info-2.9.jar)

![concurrente](https://github.com/Fabian-Martinez-Rincon/Fabian-Martinez-Rincon/assets/55964635/3bca1075-53a7-4524-955d-bc41ca1af59a)

### El programa tiene la siguiente estructura:

- **programa NombrePrograma**
- **procesos**
    - **proceso x()**
- **areas**
    - **area1** : AreaP(5, 1, 5, 10) // Recorre la avenida 5, desde la calle 1 hasta la 10
- **robots**
    - **robot RECOLECTOR**
- **variables**
    - **R1** : RECOLECTOR
- **comenzar**
    - **AsignarArea**(R1, area1)
    - **Iniciar**(R1, 5, 1)
- **fin**

### Extraemos los datos del enunciado

```
programa final
procesos
  proceso VaciarBolsa
  comenzar
    mientras (HayFlorEnLaBolsa)
      depositarFlor
    mientras (HayPapelEnLaBolsa)
      depositarPapel
  fin
  proceso recorrerAvenida
  comenzar
    derecha
    mover
    repetir 18
      mover
      si HayFlorEnLaEsquina
        tomarFlor
  fin
  proceso depositarFlores
  variables
    av:numero
    ca:numero
  comenzar
    av:=PosAv
    ca:=PosCa
    mientras HayFlorEnLaBolsa
      BloquearEsquina(1,6)
      Pos(1,6)
      depositarFlor
      Pos(av,ca)
      LiberarEsquina(1,6)
  fin
areas
  area1: AreaP(1,1,20,1)
  area2: AreaP(1,2,20,2)
  area3: AreaP(1,3,20,3)
  area4: AreaP(1,4,20,4)
  area5: AreaP(1,5,1,5)
  areaMulti: AreaPC(1,6,1,6)
robots
  robot TIPO1
  variables
    av:numero
    ca:numero
    id:numero
  comenzar
    RecibirMensaje(id,RF)
    av:=PosAv
    ca:=PosCa
    VaciarBolsa
    recorrerAvenida
    depositarFlores
    EnviarMesanje(id,RF)
    Pos(av,ca)
  fin
  robot FISCALIZADOR
  variables
    idFinal1:numero
    idFinal2:numero
    id:numero
  comenzar
    EnviarMensaje(1,R1)
    EnviarMensaje(2,R2)
    EnviarMensaje(3,R3)
    EnviarMensaje(4,R4)

    RecibirMensaje(idFinal1,*)
    RecibirMensaje(idFinal2,*)
    RecibirMensaje(id,*)
    RecibirMensaje(id,*)

  fin
variables
  R1:TIPO1
  R2:TIPO1
  R3:TIPO1
  R4:TIPO1
  RF:FISCALIZADOR
comenzar
  AsignarArea(R1,area1)
  AsignarArea(R1,areaMulti)
  AsignarArea(R2,area2)
  AsignarArea(R2,areaMulti)
  AsignarArea(R3,area3)
  AsignarArea(R3,areaMulti)
  AsignarArea(R4,area4)
  AsignarArea(R4,areaMulti)
  AsignarArea(RF,area5)
  
  Iniciar(R1,1,1)
  Iniciar(R2,1,2)
  Iniciar(R3,1,3)
  Iniciar(R4,1,4)
  Iniciar(RF,1,5)
fin
```

> La primera parte la hice mas o menos asi, para simular cuando lleguen todos, se podria usar un repetir o un recibirMensaje en el fiscalizador 4 veces, para saber que estan todos listos

Hay varios parciales que son mas faciles en mi github

- [Link](https://github.com/Fabo-University/Taller-de-Programacion)


---

### Aprobe :D 8

En el teorico me preguntaron sobre el recorrido de un arbol de forma optima, que es lo que esta arriba y tambien que tenia mal el codigo de r-info (El robot jefe recibia el id y despues las flores o algo asi).

Bueno en cuanto a la practica hice tres objetos nada mas, sin herencia ni nada, un objeto **Sistema** con dos arreglos, uno para partidos y otro para apuestas (Partidos y Apuestas son los otros 2 objetos)

![image](https://github.com/Fabian-Martinez-Rincon/Fabian-Martinez-Rincon/assets/55964635/2bd33ac3-dcc6-4d6f-a465-ff86038e59c0)

<div align="center">

[![contributions welcome](https://img.shields.io/badge/contributions-welcome-brightgreen.svg?style=flat)](https://github.com/Nomadiix/Taller-de-Programacion)
[![GitHub stars](https://img.shields.io/github/stars/Nomadiix/Taller-de-Programacion)](https://github.com/FabianMartinez1234567/Taller-de-Programacion/stargazers/)
[![GitHub repo size in bytes](https://img.shields.io/github/repo-size/Nomadiix/Taller-de-Programacion)](https://github.com/Nomadiix/Taller-de-Programacion)

<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&size=30&duration=1200&pause=1000&color=F7F123&center=true&width=475&lines=👾 Taller de Programación"/>

 </div>


---

<a title="" href="https://youtu.be/a00alSeeu70?si=7S-22NfZSq9Uvwjr"><img src="/Documentos/image.png" alt="" /></a>




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





> En el final tenes que hacer todo perfecto

## Final 14/03/2023

De los **tenistas** se desea conocer su nombre, cantidad de partidos ganados y los premios (en pesos) obtenidos en toda su carrera. De los **partidos** interesa conocer la fecha (un string), el lugar del partido y el resultado del mismo (solo interesa contabilizar la cantidad de sets ganados por lado). Además, interesa poder representar **partidos singles** (dos tenistas, uno contra otro) y **partidos de dobles** (cuatro tenistas, dos juegan contra otros dos).

Declare las clases, contructores, atributos y métodos que considere necesario sabiendo que:
- Un **tenista** deberia instanciarse con todos sus datos
- Un **partido** deberia instanciarse con la fecha, el lugar y todos sus participantes (dos tenistas en el caso de singles, cuatro en el caso de dobles). Inicialmente el partido tiene el resultado 0 a 0.
- Durante el desarrollo del partido interesa ir almacenando el resultado parcial del mismo. Para eso es necesario un método que permita registrar el resultado de cada set finalizado. Este método debe recibir como parámetro los juegos (games) obtenidos por lado (dos numeros) y actualizar el resultado del partido como corresponda. 
> Por ejemplo : recibiendo 6 y 4, deberia sumar un set ganado más para el primer lado. Asuma que no hay empate
- Un partido deberia saber si finalizo o no. EL partido finaliza cuando el/los tenista/s de un lado consigue/n ganar tres sets. Para esto, es necesario un método que resuelva un booleano indicando si el partido finalizo o no.
- Al finalizar un partido, se otorgan los premios al lado ganador. Para esto, implemente un método que reciba el premio en pesos y actualice el atributo partidos ganados y premios obtenidos de los tenistas que corresponda. 
> Asuma que el partido finalizado. Tenga en cuenta que:
- En el caso de los singles, todo el premio se lo lleva el jugador ganador. En el caso de dobles, el premio se reparte entre los tenistas del lado ganador. La reparación se lleva a cabo de manera proporcional al historial de partidos ganados de cada jugador:

Premio_jugador = Premio_total * (partidos_ganados_jugador / partidos_ganados_jugador + partidos_ganados_compañero)


`2)` Implemente una función main que intancie un partido de singles y uno de dobles. Registre resultados de sets a ambos partidos hasta que finalicen. Finalmente, otorgue el premio de $100.000 al partido singles y de $500.000 al de dobles.

---

## Final 07/09/2023

> En esta fecha no se entendio un quinoto

El servicio meteorológico nacional necesita un sistema para sus estaciones que permite registrar la temperatura promedio mensual durante los últimos N años. Además, según la estación necesita dos versiones del sistema que permita o bien reportar el promedio historico por años, o bien reportar el promedio histórico por meses. Esto se detalla más adelante.

Todas las estaciones se caracterizan por un nombre y las cordenadas latitud y longitud donde se encuentra.

Implemente las clases, constructores y métodos que considere necesario para realizar lo siguiente:

**a)** Crear el sistema de registro/informes que permita almacenar la temperatura promedio de cada mes del año en los ultimos N años.

**b)** Registrar (almacenar) una temperatura de un mes y año recibidos por parámetro.

**c)** Devolver la temperatura de un determinado mes y año recibidos por parámetro.

**d)** Devolver un String que concatena el mes y año en que se registro la mayor temperatura. 
> Nota: Suponga que ya estarán las temperaturas de todos los meses y años

**e)** Devolver un String con el nombre de la estación, sus cordenadas y los promedios mensuales o anuales según corresponda.
  - **a)** La versión del sistema que reporta por años deberá calcular el promedio para cada año (el promedio del año A se calcula usando los datos mensuales de ese año) `Ej "La Plata (34.9214° S, 57.9544° O): Año 2020: 15.5, Año 2021: 16.2, Año 2022: 17.1"`
  - **b)** La versión del sistema que reporta por meses deberá calcular el promedio para cada mes (el promedio del mes M se calcula usando los datos de ese mes en todos los años)
  `Ej "La Plata (34.9214° S, 57.9544° O): Enero: 15.5, Febrero: 16.2, Marzo: 17.1"`

> Nota: Suponga que ya estarán registradas las temperaturas de todos los meses y años

**f)** Realice un programa principal que cree un Sistema con informe anual para los ultimos 3 años. Cargue todas las temperaturas (para todos los meses y años). Informe los promedios anuales, y el mes y año en que se registró la mayor temperatura.

Luego cree un Sistema con informe mensual para los ultimos 4 años. Cargue todas las temperaturas (para todos los meses y años). Informe los promedios mensuales, y el mes y año en que se registró la mayor temperatura.

---

## Final 04/08/2023

La municipalidad de la ciudad de La Plata necesita un sistema que le permita recolectar las denuncias realizadas por los ciudadanos. La denuncia la hace cualquier ciudadano y al hacerlo debe proporcionar la categoria de denuncia (1: corte de luz en la via publica; 2: auto mal estacionado; 3: recolección de reciduos; 4: Ruidos molestos; 5: Semáforo en malfuncionamiento; 6: bache en la calle), su DNI, la dirección  (número de calle y número de altura) y el mes, dia y hora.

Implemente en pascal:
- **a)** Un módulo que genere el alta de todas las denuncias almacenando toda la información en una estructura agrupada por categoría y ordenada por número de calle. La carga finaliza hasta leer el DNI igual a cero.
- **b)** Un módulo que reciba la estructura generada en a) y devuelva una lista de denuncias donde para cada nro de calle se contabilice cantidad de denuncias totales y cantidad de denuncias realizadas en el mes de julio.
- **c)** Un módulo recursivo que reciba la estructura generada en b) y devuelva el número de calle con mayor cantidad de denuncias

### Resolución

- Cuando dice que es agrupada por categorias, quiere que usemos un vector de listas
- Tambien dice que se ingresan ordena por algun criterio, si o si tenemos que usar el `insertar ordenado`

Cuando nos dan un examen asi recomiendo hacer de una el insertar ordenado y el agregar al final y probarlo solo con enteros, porque es medio tedioso probarlo con tantos campos

### Codigo

```pascal
program final;
const 
    DIMF=6;
type
    cat = 1..DIMF;
    dir = record
        calle:integer;
        nro:integer;
    end;
    fech = record
        mes:integer;
        dia:integer;
        hora:integer;
    end;
    denuncia = record
        categoria:cat;
        dni:integer;
        direccion:dir;
        fecha:fech;
    end;

    lista = ^nodo;
    nodo = record
        dato:denuncia;
        sig:lista;
    end;

    vectorDenuncias = array [cat] of lista;

    nuevo = record
        nroCalle:integer;
        totales:integer;
        julio:integer;
    end;
    listaNueva = ^nodoNuevo;
    nodoNuevo = record
        dato: nuevo;
        sig:listaNueva;
    end;

procedure imprimirLista(l:lista);
begin
    WriteLn('Imprimiendo lista: ');
    while l <> nil do
    begin
        writeln('------------');
        writeln('dni: ',l^.dato.dni);
        writeln('mes: ',l^.dato.fecha.mes);
        l:=l^.sig;
    end;
end;

procedure imprimirListaNueva(l:listaNueva);
begin
    WriteLn('Imprimiendo Nueva: ');
    while l <> nil do
    begin
        writeln('------------');
        writeln('nroCalle: ',l^.dato.nroCalle);
        writeln('Totales: ',l^.dato.totales);
        writeln('Julio: ',l^.dato.julio);
        l:=l^.sig;
    end;
end;

procedure insertarOrdenado(var l:lista;d:denuncia);
var
    act,ant,nue:lista;
begin
    new(nue);
    nue^.dato:=d;
    act:=l;
    ant:=l;
    while (act <> nil) and (act^.dato.direccion.nro < d.direccion.nro) do
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

procedure agregarAtras(var l,ult:listaNueva;n:nuevo);
var
    nue:listaNueva;
begin
    new(nue);
    nue^.dato:=n;
    nue^.sig:=nil;
    if (l = nil) then
        l:=nue
    else
        ult^.sig:=nue;
    ult:=nue;
end;

procedure inicializarDenuncias(var vd:vectorDenuncias);
var 
    i:cat;
begin
    for i:=1 to DIMF do
    begin
        vd[i]:=nil;
    end;
end;

procedure leerDenuncia(var d:denuncia);
begin
    WriteLn('Dni: '); ReadLn(d.dni);
    if (d.dni <> 0) then
    begin
        WriteLn('Categoria: '); ReadLn(d.categoria);
        WriteLn('Calle: '); ReadLn(d.direccion.calle);
        WriteLn('Nro: '); ReadLn(d.direccion.nro);
        WriteLn('Mes: '); ReadLn(d.fecha.mes);
        WriteLn('Dia: '); ReadLn(d.fecha.dia);
        WriteLn('Hora: '); ReadLn(d.fecha.hora);  
    end;
    
end;

procedure altaDenuncias(var vd:vectorDenuncias);
var
    d:denuncia;
begin
    leerDenuncia(d);
    while d.dni <> 0 do
    begin
        insertarOrdenado(vd[d.categoria],d);
        leerDenuncia(d);
    end;
end;

procedure inicializarMin(var min:denuncia);
begin
    min.dni:=9999;
    min.categoria:=1;
    min.direccion.calle:=9999;
    min.direccion.nro:=9999;
    min.fecha.mes:=9999;
    min.fecha.dia:=9999;
    min.fecha.hora:=9999;
end;

procedure minimo(var vd:vectorDenuncias; var min:denuncia);
var
    posMin:integer;
    i:cat;
begin
    posMin:=9999;
    inicializarMin(min);
    for i:=1 to DIMF do
    begin
        if (vd[i] <> nil) and (vd[i]^.dato.direccion.calle < min.direccion.calle) then
        begin
            posMin:=i;
            min:=vd[i]^.dato;
        end;
    end;
    if (posMin <> 9999) then
    begin
        vd[posMin]:=vd[posMin]^.sig;
    end;
end;

procedure mergeAcumulador(vd:vectorDenuncias; var l:listaNueva);
var
    min:denuncia;
    actual:nuevo;
    ult:listaNueva;
begin
    ult:=nil;
    minimo(vd,min);
    while min.direccion.calle <> 9999 do
    begin
        actual.nroCalle:=min.direccion.calle;
        actual.totales:=0;
        actual.julio:=0;
        while (actual.nroCalle = min.direccion.calle) do
        begin
            if (min.fecha.mes = 7) then
                actual.julio:=actual.julio+1;
            actual.totales:=actual.totales+1;
            minimo(vd,min);  
        end;
        agregarAtras(l,ult,actual);
    end;
end;

procedure imprimirDenuncias(var vd:vectorDenuncias);
var
    i:cat;
begin
    for i:=1 to DIMF do
    begin
        imprimirLista(vd[i]);
    end;
end;

procedure cantidadMax(l:listaNueva; var masDenuncias:nuevo);
begin
    if l <> nil then
    begin
        if (l^.dato.totales > masDenuncias.totales) then
        begin
            masDenuncias.totales:=l^.dato.totales;
            masDenuncias.nroCalle:=l^.dato.nroCalle;
        end;
        cantidadMax(l^.sig,masDenuncias);
    end;
end;

var 
    vd:vectorDenuncias;
    l:listaNueva;
    masDenuncias:nuevo;
begin
    inicializarDenuncias(vd);
    altaDenuncias(vd); //A
    imprimirDenuncias(vd);
    
    writeln('Punto B');
    l:=nil;
    mergeAcumulador(vd,l); //B
    imprimirListaNueva(l);

    masDenuncias.nroCalle:=0;
    masDenuncias.totales:=0;
    masDenuncias.julio:=0;

    cantidadMax(l,masDenuncias);
    WriteLn('Max Denuncias: ', l^.dato.nroCalle);
end.
```

---

## Final 12/10/2023 Imperativo

Un lugar nos ofrece sus instalaciones para que las bandas de música puedan dar sus recitales. De cada recital se conoce: El nombre de la banda, la fecha del recital, la cantidad de canciones tocadas y el monto recaudado por la venta de entradas.

- **a)** Implemente un módulo que lea registros de recitales de manera sucesiva hasta que se `ingrese ZZZ` como nombre de banda. Los recitales se pueden leer en cualquier orden. Todos los recitales leídos deben almacenarse en una estructura que permita el recorrido óptimo por monto recaudado.
- **b)** Implemente un módulo que reciba la estructura cargada y dos valores (ej 200 y 500) y devuelva una lista con todos los recitales cuyo monto recaudado se encuentra entre esos dos valores leidos (ambos inclusive). La lista resultante debe estar ordenada por monto de mayor a menor.
- **c)** Implemente un **módulo recursivo** que reciba la lista creada en b) y devuelva la cantidad de recitales que tocaron más de 12 canciones.



#### Resolución

![image](https://github.com/Fabian-Martinez-Rincon/Fabian-Martinez-Rincon/assets/55964635/a167ba07-8c99-46ac-8474-46e8757ec14e)

Para hacer la prueba mas rapido, en monto y cantidad ponia los mismos valores

> Valores del rango v1:=20 y v2:=45;

```
Recitales
------------
Lucas
Lucas
40
 4.0000000000000000E+001
------------
Otro
Otro
30
 3.0000000000000000E+001
------------
Fabian
Fabian
25
 2.5000000000000000E+001
La cantidad es: 3
```

### Codigo Completo

```pascal
program final;
type
    recital = record
        nombre:string;
        fecha:string;
        cantidad:integer;
        monto:real;
    end;
    
    arbol = ^nodo;
    nodo = record
        dato:recital;
        HI:arbol;
        HD:arbol;
    end;

    lista = ^nodo2;
    nodo2 = record
        dato:recital;
        sig:lista;
    end;

procedure leerRecital(var r:recital);
begin
    writeln('Nombre: '); ReadLn(r.nombre);
    if (r.nombre <> 'ZZZ') then
    begin
        writeln('Fecha: '); ReadLn(r.fecha);
        writeln('Cantidad: '); ReadLn(r.cantidad);
        writeln('Monto: '); ReadLn(r.monto);  
    end;
end;

procedure crearArbol(var abb:arbol; r:recital);
begin
    if (abb = nil) then
    begin
        new(abb);
        abb^.dato:=r;
        abb^.HI:=nil;
        abb^.HD:=nil;
    end
    else 
        if (abb^.dato.monto > r.monto) then
          crearArbol(abb^.HI,r)
        else
            crearArbol(abb^.HD,r)
end;

procedure cargarArbol(var abb:arbol);
var
    r:recital;
begin
    leerRecital(r);
    while (r.nombre <> 'ZZZ') do
    begin
        crearArbol(abb,r);
        leerRecital(r);
    end;
end;

procedure imprimirArbol(abb:arbol);
begin
    if (abb <> nil) then
    begin
        imprimirArbol(abb^.HI);
        writeln('Nombre: ', abb^.dato.nombre);
        writeln('Fecha: ', abb^.dato.fecha);
        writeln('Cantidad: ', abb^.dato.cantidad);
        writeln('Monto: ',abb^.dato.monto:3:3);
        imprimirArbol(abb^.HD);
    end;
end;

procedure agregarAdelante(var l:lista; r:recital);
var
    nue: lista;
begin
    new(nue);
    nue^.dato:=r;
    nue^.sig:=l;
    l:=nue;
end;

procedure filtrarRecitales(abb: arbol; var l: lista; v1: real; v2: real);
begin
    if abb <> nil then
    begin
        if abb^.dato.monto < v1 then
            filtrarRecitales(abb^.HD, l, v1, v2)
        else if abb^.dato.monto > v2 then
            filtrarRecitales(abb^.HI, l, v1, v2)
        else
        begin
            filtrarRecitales(abb^.HI, l, v1, v2);
            agregarAdelante(l, abb^.dato);
            filtrarRecitales(abb^.HD, l, v1, v2);
        end;
    end;
end;

procedure imprimirLista(l:lista);
begin
    writeln('Recitales ');
    while (l <> nil) do
    begin
        WriteLn('------------');
        writeln(l^.dato.nombre);
        writeln(l^.dato.fecha);
        writeln(l^.dato.cantidad);
        writeln(l^.dato.monto);
        l:=l^.sig;
    end;
end;

procedure masDe12Canciones(l:lista; var cantidad:integer);
begin
    if (l <> nil) then
    begin
        if (l^.dato.cantidad > 12) then
            cantidad:=cantidad+1;
        masDe12Canciones(l^.sig,cantidad);
    end;
end;

var
    abb:arbol;
    v1,v2:real;
    l:lista;
    cantidad:integer;
begin
    cargarArbol(abb); //A
    WriteLn('--------------');
    imprimirArbol(abb);

    v1:=20;
    v2:=45;
    l:=nil;

    filtrarRecitales(abb,l,v1,v2); //B
    imprimirLista(l);

    cantidad:=0;
    masDe12Canciones(l,cantidad); //C
    writeln('La cantidad es: ', cantidad)
end.
```

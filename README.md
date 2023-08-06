<div align="center">

[![contributions welcome](https://img.shields.io/badge/contributions-welcome-brightgreen.svg?style=flat)](https://github.com/Nomadiix/Taller-de-Programacion)
[![GitHub stars](https://img.shields.io/github/stars/Nomadiix/Taller-de-Programacion)](https://github.com/FabianMartinez1234567/Taller-de-Programacion/stargazers/)
[![GitHub repo size in bytes](https://img.shields.io/github/repo-size/Nomadiix/Taller-de-Programacion)](https://github.com/Nomadiix/Taller-de-Programacion)
 </div>

<h1 align="center"> 💻Taller De Programacion  </h1>
<div align="center">
  <img src="https://media.giphy.com/media/pVGsAWjzvXcZW4ZBTE/giphy.gif"/>
 </div>




<img src= 'https://i.gifer.com/origin/8c/8cd3f1898255c045143e1da97fbabf10_w200.gif' height="20" width="100%"> 

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

<img src= 'https://i.gifer.com/origin/8c/8cd3f1898255c045143e1da97fbabf10_w200.gif' height="20" width="100%">


<h1 align="center"> Parciales  Imperativo</h1>

![image](https://user-images.githubusercontent.com/55964635/140173507-610b7249-85fb-475e-afdf-f372ca615bd2.png)

<details><summary>Programa Completo</summary>

```pascal
program Fabian_Uno;
const
    cant = 20;
    dimF = 250;
type
    cat = 1..cant;
    Empleado = record
        legajo:integer;
        dni:integer;
        categoria:cat;
        ingreso:integer;
    end;
    Type
    arbol = ^nodo;
    nodo = record
        dato: Empleado;
        HI: arbol;
        HD: arbol;
    end;
    PuntoA = record
        Legajo_A:integer;
        Legajo_B:integer;
        categoria:cat;
    end;
    vector = array [1..dimF] of Empleado;
//_____________________________________________________
procedure Leer_Empleado(var e:Empleado);
begin
    ReadLn(e.legajo);
    WriteLn('Legajo: ',e.legajo);

    e.dni:=random(10);
    WriteLn('Dni: ',e.dni);

    e.categoria:=3; {para chequear}
    WriteLn('Categoria: ',e.categoria);
    
    e.ingreso:=2000+random(30);
    WriteLn('Ingreso: ',e.ingreso);
    WriteLn('______________________________');
end;
//_____________________________________________________
Procedure crear (var A:arbol; e:Empleado);
Begin
    if (A = nil) then
    begin
        new(A);
        A^.dato:= e; 
        A^.HI:= nil; 
        A^.HD:= nil;
    end
    else
        if (e.legajo < A^.dato.legajo) then 
            crear(A^.HI,e)
        else 
            crear(A^.HD,e)   
End;

//_____________________________________________________
procedure CargarArbol(var abb:arbol);
var
    e:Empleado;
begin
    WriteLn('______________________________');
    Leer_Empleado(e);
    while (e.legajo<>0)do
    begin
        crear(abb,e);
        Leer_Empleado(e);
    end;
end;

//_____________________________________________________
Procedure enOrden ( a : arbol );
begin 
    if ( a<> nil ) then begin
        enOrden (a^.HI);
        write (a^.dato.legajo,'|');
        enOrden (a^.HD);
    end;
end;

//_____________________________________________________
procedure Leer_Nuevo(var Datos:PuntoA);
begin
    Datos.Legajo_A:=1;
    WriteLn('Legajo A: ',Datos.Legajo_A);
    Datos.Legajo_B:=9;
    WriteLn('Legajo B: ',Datos.Legajo_B);
    Datos.categoria:=3;
    WriteLn('Categoria: ',Datos.categoria);
end;
//_____________________________________________________
Procedure CargarVector ( var v:vector;var dimL:integer;a:arbol;Datos:PuntoA );
begin 
    if ( a<> nil )  then begin
        if (a^.dato.legajo <= Datos.Legajo_A) then
            CargarVector (v,dimL,a^.HD,Datos)
        else
            if(a^.dato.legajo >= Datos.Legajo_B)then
                CargarVector (v,dimL,a^.HI,Datos)
            else begin
                    CargarVector (v,dimL,a^.HI,Datos);
                    if (a^.dato.legajo>datos.Legajo_A) and (a^.dato.legajo<Datos.Legajo_B) and (a^.dato.categoria = Datos.categoria) then
                    begin
                        dimL:=dimL+1;
                        v[dimL]:=a^.dato;
                    end;
                    CargarVector (v,dimL,a^.HD,Datos);
                end;
    end;
end;
//_____________________________________________________
procedure ImprimirVector(v:vector;dimL:Integer);
var
    i:integer;
begin
    for i:=1 to dimL do
    begin
        WriteLn('Legajo: ',v[i].legajo);
        WriteLn('Dni: ',v[i].dni);
        WriteLn('Categoria: ',v[i].categoria);
        WriteLn('Ingreso: ',v[i].ingreso);
        WriteLn('______________________________');
    end;
end;
//_____________________________________________________
procedure Calcular_Promedio(var total,cantidad:Integer; v:vector;dimL:integer);
begin
    if (dimL <> 0) then
    begin
        total:=total+v[dimL].dni;
        cantidad:=cantidad+1;
        Calcular_Promedio(total,cantidad,v,dimL-1);
    end;  
end;
//_____________________________________________________
procedure Calcular_DNI_Promedio(var dni_promedio:integer;v:vector;dimL:integer);
var
    total:integer;
    cantidad:integer;
begin
    total:=0;
    cantidad:=0;
    Calcular_Promedio(total,cantidad,v,dimL);
    if cantidad > 0 then
        dni_promedio:=total div cantidad
    else
        dni_promedio:=0;
end;
//_____________________________________________________
var
    abb:arbol;
    Datos:PuntoA;
    v:vector;
    dimL:integer;
    dni_promedio:integer;
begin
    abb:=nil;
    randomize;
    CargarArbol(abb);//Se dispone
    enOrden(abb); //Para Probar
 
    Leer_Nuevo(Datos);

    dimL:=0;
    CargarVector(v,dimL,abb,Datos); //A (Todo lo otro es relleno)

    WriteLn('DimL: ',dimL);
    WriteLn('______________________________');
    ImprimirVector(v,dimL); //Solo para verificar
    
    writeln();
    writeln('B): '); 
    dni_promedio:=0;
    Calcular_DNI_Promedio(dni_promedio,v,dimL); //B
    WriteLn('El dni promedio es: ',dni_promedio);
end.
```
</details>

---

![image](https://user-images.githubusercontent.com/55964635/139688955-b400c87a-b776-4224-b004-25e4c81d3044.png)

<details><summary>Programa Completo</summary>

```pascal
program Parcial;
const
    P = 5;
    dimF = 500;
type
    rango = 1..5;
    afilado = record     
        nro:integer;
        dni:Integer;
        plan:rango;
        anio:2000..2030;
    end;
    Type
    arbol = ^nodo;
    nodo = record
        dato: afilado;
        HI: arbol;
        HD: arbol;
    end;
    afi = record
        dni_1:integer;
        dni_2:integer;
        plan:rango;
    end;
    afiliado2 = record
        nroAfi:integer;
        dni:integer;        
    end;
    vector = array [1..dimF] of afiliado2;

//________________________________________________________________________________
procedure Leer_Empleado(var af:afilado);
begin
    af.nro:=random(10);
    WriteLn('nro: ',af.nro);
    af.dni:=random(10);
    WriteLn('Dni: ',af.dni);
    af.plan:=1+random(5);
    WriteLn('plan: ',af.plan);
    af.anio:=2000+random(30);
    WriteLn('Ingreso: ',af.anio);
    WriteLn('______________________________');
end;
//________________________________________________________________________________
Procedure crear (var A:arbol; af:afilado);
Begin
    if (A = nil) then
    begin
        new(A);
        A^.dato:= af; 
        A^.HI:= nil; 
        A^.HD:= nil;
    end
    else
        if (af.nro < A^.dato.nro) then 
            crear(A^.HI,af)
        else 
            crear(A^.HD,af)   
End;

//________________________________________________________________________________
procedure CargarArbol(var abb:arbol);
var
    af:afilado;
begin
    WriteLn('______________________________');
    Leer_Empleado(af);
    while (af.nro<>0)do
    begin
        crear(abb,af);
        Leer_Empleado(af);
    end;
end;

//________________________________________________________________________________
Procedure enOrden ( af : arbol );
begin 
    if ( af<> nil ) then begin
        enOrden (af^.HI);
        write (af^.dato.nro,'|');
        enOrden (af^.HD);
    end;
end;
//________________________________________________________________________________
procedure Leer_Nuevo(var Datos:afi);
begin
    Datos.dni_1:=random(3);
    WriteLn('nro A: ',Datos.dni_1);
    Datos.dni_2:=Datos.dni_1+random(10);
    WriteLn('nro B: ',Datos.dni_2);
    Datos.plan:=1+random(5);
    WriteLn('plan: ',Datos.plan);
end;
//________________________________________________________________________________
Procedure Seleccion ( var v: vector; dimL: Integer );
var 
    i, j, p: Integer;
    item:afiliado2;
begin
    for i:=1 to dimL-1 do 
    begin 
        p := i;
        for j := i+1 to dimL do
            if v[ j ].dni < v[ p ].dni then p:=j;

        item := v[ p ];   
        v[ p ] := v[ i ];   
        v[ i ] := item;
    end;
end;

//________________________________________________________________________________
Procedure CargarVector ( var v:vector;var dimL:integer;af:arbol;Datos:afi ;afi2:afiliado2);
begin 
    if ( af<> nil ) and (dimL < dimF) then begin
        CargarVector (v,dimL,af^.HI,Datos,afi2);
        if (af^.dato.nro>=datos.dni_1) and (af^.dato.nro<=Datos.dni_2) then
        begin
            dimL:=dimL+1;
            afi2.nroAfi:=af^.dato.nro;
            afi2.dni:=af^.dato.dni;
            v[dimL]:=afi2;
        end;
        CargarVector (v,dimL,af^.HD,Datos,afi2);
    end
        else 
            Seleccion(v,dimL);
end;

//________________________________________________________________________________
procedure ImprimirVector(v:vector;dimL:Integer);
var
    i:integer;
begin
    for i:=1 to dimL do
    begin
        WriteLn('nro: ',v[i].nroAfi);
        WriteLn('Dni: ',v[i].dni);
        WriteLn('______________________________');
    end;
end;
//________________________________________________________________________________
var
    abb:arbol;
    Datos:afi;
    v:vector;
    dimL:integer;
    dni_promedio:integer;
    afi2:afiliado2;
begin
    randomize;
    abb :=nil;
    CargarArbol(abb);//Se dispone
    enOrden(abb); //Para Probar
    WriteLn();
    Leer_Nuevo(Datos);
    WriteLn();
    dimL:=0;
    afi2.nroAfi:=0;
    afi2.dni:=0;
    CargarVector(v,dimL,abb,Datos,afi2); //A (Todo lo otro es relleno)
    WriteLn('DimL: ',dimL);
    WriteLn('______________________________');
    ImprimirVector(v,dimL); //Solo para verificar
end.
```

</details>

---

Una ciudad necesita un sistema para administrar la limpieza de sus esquinas. Para ello, el sistema necesita un módulo que lea la información de cada esquina que se limpia: número de calle, número de avenida, cantidad de objetos recolectados y número identificatorio del camión (1..10) que se encargó de la limpieza de la esquina. A partir de esa información, debe generar una estructura que almacene las esquinas agrupadas por número de camión. Para cada camión, las esquinas deben ordenarse por número de avenida. La lectura finaliza con el número de camión 0, el cual no se procesa.

Se pide implementar un programa en Pascal que incluya:


a) Un módulo Cargar que (de manera aleatoria) genere datos de las esquinas y los almacene en una estructura adecuada.

b) Un módulo que reciba la estructura generada en a) y (usando merge acumulador) obtenga para cada avenida el total de objetos recolectados (entre todos los
camiones). Genere un ABB que contenga número de avenida y el total de objetos recolectados en la avenida, ordenado por total de objetos recolectados.

<details><summary>Programa Completo</summary>


```pascal
program limpieza;
Uses crt;
const
  dimF = 10;
 type
   rango = 0..dimF;

   esquina = record
     calle : integer;
     avenida : integer;
     objetos : integer;
     camion : rango;
   end;

     lista = ^nodo;
      nodo = record
        dato : esquina;
        sig : lista;
      end;

      vector = array[rango] of lista;

      esquinaTotal = record
        avenida : integer;
        total : integer;
      end;

      arbol = ^nodoA;

      nodoA = record
        dato : esquinaTotal;
        hi : arbol;
        hd : arbol;
      end;
//__________________________________________________
procedure iniciarVector(var v : vector);
var
  i : rango;
begin
  for i := 1 to dimF do
    v[i] := nil;
end;
//__________________________________________________
procedure leer(var e : esquina);
begin
  e.camion := Random(10);
  if(e.camion <> 0) then begin
    e.calle := Random(50);
    e.avenida := Random(50);
    e.objetos := Random(30);
  end;
end;
//__________________________________________________
procedure agregarOrdenado(var l : lista; e : esquina);
var
  aux, ant, act : lista;
begin
  new(aux);
  aux^.dato := e;
  act := l;
  ant:= l;
  while(act <> nil) and (e.avenida > act^.dato.avenida) do begin
    ant := act;
    act := act^.sig;
  end;
  if(act = ant)  then
    l := aux
  else
    ant^.sig := aux;
  aux^.sig := act;
end;
//__________________________________________________
procedure cargarVector(var v : vector);
var
  e : esquina;
begin
   leer(e);
   while(e.avenida <> 0) do begin
     agregarOrdenado(v[e.camion],e);
     leer(e);
   end;
end;
//__________________________________________________
procedure determinarMinimo(var min : esquina; var pos : rango; var v : vector);
var
  i : rango;
begin
  min.avenida := 9999;

  for i := 1 to dimF do begin
    if(v[i] <> nil) then
      if(v[i]^.dato.avenida < min.avenida) then begin
        min := v[i]^.dato;
        pos := i;
      end;
  end;
  if(min.avenida <> 9999) then
  v[pos] := v[pos]^.sig;

end;
//__________________________________________________
procedure crearArbol(var a : arbol; act : esquinaTotal);
begin

  if(a = nil) then begin
    new(a);
    a^.dato := act;
    a^.hi := nil;
    a^.hd := nil;
  end
  else
    if(act.total < a^.dato.total) then
      crearArbol(a^.hi,act)
    else
      if(act.total > a^.dato.total) then
        crearArbol(a^.hd,act);

end;
//__________________________________________________
procedure mergeAcumulador(var a : arbol;  v : vector);
var
  minimo : esquina;
  pos : rango;
  act : esquinaTotal;
begin

  determinarMinimo(minimo,pos,v);
  while(minimo.avenida <> 9999) do begin
    act.avenida := minimo.avenida;
    act.total := 0;

    while(minimo.avenida = act.avenida) do begin
      act.total := act.total  + minimo.objetos ;
      determinarMinimo(minimo,pos,v);
    end;

    crearArbol(a,act);
  end;

end;
//__________________________________________________
procedure inOrden(a : arbol);
begin
  if(a <> nil) then begin
    inOrden(a^.hi);
    writeln('Avenida: ', a^.dato.avenida,' total ',a^.dato.total);
    inOrden(a^.hd);
  end;
end;
//__________________________________________________
var
  v : vector;
  a : arbol;
begin
  clrscr;
  iniciarVector(v);
  a := nil;
  Randomize;

  cargarVector(v);

  mergeAcumulador(a,v);

  inOrden(a);

  readln;
end.
```

</details>

---

![image](https://user-images.githubusercontent.com/55964635/139703862-88f0d90c-7dfe-4b8d-a62e-da9307aeb9e7.png)

[Programa Completo](/Pascal/Parciales%20Imperativo/Parcial11.pas)

---

![image](https://user-images.githubusercontent.com/55964635/139769845-faf1eaf3-a1bf-46a3-a49b-9dcc73221c87.png)

[Programa Completo](/Pascal/Parciales%20Imperativo/Parcial13.pas)

Un psicólogo necesita un sistema para administrar a sus pacientes. De cada paciente registra: dni, cód. de paciente, obra social (1: ioma 2: pami 3: osde 4: galeno 5: no tiene) y costo abonado por sesión. 

Implemente un programa que: 

a) Genere un ABB ordenado por dni. Para ello, genere información hasta el paciente con dni 0. A partir del ABB, realice módulos (uno por inciso) para:

b) Generar una estructura con dni y cód de paciente de los pacientes de ioma, ordenados por dni descendente.

c) Dado un dni, modificar la obra social de dicho paciente a una recibida. Considere que el paciente puede no existir. 

NOTA: Realice el programa principal que invoque a los módulos desarrollados.

[Programa Completo](/Pascal/Parciales%20Imperativo/ParcialRaro.pas)

![image](https://user-images.githubusercontent.com/55964635/139978268-16c92186-e810-489b-8ed4-536bc80c047f.png)

[Programa Completo](/Pascal/Parciales%20Imperativo/Parcial21.pas)




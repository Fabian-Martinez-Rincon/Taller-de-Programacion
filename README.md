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


<h1 align="center"> Parciales Imperativo</h1>

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

<details><summary>Programa Completo</summary>

```pascal
program Parcial;

type
    rangoObra = 1..5;
    paciente = record
        dni:integer;
        cod:integer;
        obra:rangoObra;
        costo:real;
    end;
    Type
    arbol = ^nodo;
    nodo = record
        dato: paciente;
        HI: arbol;
        HD: arbol;
    end;
    paciente2 = record
        dni:integer;
        cod:Integer;
    end;
    lista = ^nodo2;

    nodo2 = record
        dato:paciente2;
        sig:lista;
    end;
//____________________________________________
procedure LeerPaciente(var p:paciente);
begin
    p.dni:=random(5);
    if p.dni <> 0 then
    begin
        p.cod:=random(10);
        p.obra:=1+random(5);
        p.costo:=random(10);
    end;
end;
//____________________________________________
Procedure crear (var A:arbol; p:paciente);
Begin
    if (A = nil) then
    begin
        new(A);
        A^.dato:= p; 
        A^.HI:= nil; 
        A^.HD:= nil;
    end
    else
        if (p.dni < A^.dato.dni) then 
            crear(A^.HI,p)
        else 
            crear(A^.HD,p)   
End;
//____________________________________________
procedure CargarArbol(var abb:arbol);
var
    p:paciente;
begin
    LeerPaciente(p);
    while (p.dni<>0)do
    begin
        crear(abb,p);
        LeerPaciente(p);
    end;
end;
//____________________________________________
Procedure AgregarAdelante (var L:lista; x:integer;y:integer);
Var 
    nue:lista;
Begin  
    New(nue);  
    nue^.dato.dni:=x;
    nue^.dato.cod:=y;  
    nue^.sig:=L;  
    L:=nue;
End;
//____________________________________________
Procedure CargarLista ( a : arbol ; var l:lista);
begin 
    if ( a<> nil ) then begin
        CargarLista (a^.HD,l);
        if (a^.dato.obra = 5) then
        begin
            AgregarAdelante(l,a^.dato.dni,a^.dato.cod);
        end;
        CargarLista (a^.HI,l);
    end;
end;
//____________________________________________  
procedure ImprimirLista(l:lista);
begin
    while (l <> nil) do
    begin
        WriteLn('DNI: ',l^.dato.dni);
        {WriteLn('COD: ',l^.dato.cod);}
        l:=l^.sig;
    end;
end;
//____________________________________________
Procedure Modificar_Obra ( var a : arbol ; dni:integer;obra:integer;var existe:Boolean);
begin 
    if ( a<> nil ) and (not existe) and (dni<=a^.dato.dni) then begin
        Modificar_Obra (a^.HD,dni,obra,existe);
        if (a^.dato.dni = dni) then
        begin
            a^.dato.obra:=obra;
            existe:=True;
        end;
        Modificar_Obra (a^.HI,dni,obra,existe);
    end;
end;
//____________________________________________
Procedure enOrden ( a : arbol );
begin 
    if ( a<> nil ) then begin
        enOrden (a^.HI);
        writeln ('dni: ',a^.dato.dni);
        writeln ('cod: ',a^.dato.cod);
        writeln ('obra: ',a^.dato.obra);
        writeln ('costo: ',a^.dato.costo);
        enOrden (a^.HD);
    end;
end;
//____________________________________________
var
  abb:arbol;
  l:lista;
  dniNuevo:integer;
  existe:boolean;
begin
    randomize;
    existe:=False;
    l:=nil;
    dniNuevo:=4;
    CargarArbol(abb);
    CargarLista(abb,l);
    {ImprimirLista(l);}
    enOrden(abb);
    Modificar_Obra(abb,dniNuevo,4,existe);
    WriteLn('_________________');
    if existe then
        enOrden(abb);
end.
```
</details>

---

![image](https://user-images.githubusercontent.com/55964635/139769845-faf1eaf3-a1bf-46a3-a49b-9dcc73221c87.png)

> Este es igual a uno de arriba

---

Un psicólogo necesita un sistema para administrar a sus pacientes. De cada paciente registra: dni, cód. de paciente, obra social (1: ioma 2: pami 3: osde 4: galeno 5: no tiene) y costo abonado por sesión. 

Implemente un programa que: 

a) Genere un ABB ordenado por dni. Para ello, genere información hasta el paciente con dni 0. A partir del ABB, realice módulos (uno por inciso) para:

b) Generar una estructura con dni y cód de paciente de los pacientes de ioma, ordenados por dni descendente.

c) Dado un dni, modificar la obra social de dicho paciente a una recibida. Considere que el paciente puede no existir. 

NOTA: Realice el programa principal que invoque a los módulos desarrollados.



<details><summary>Programa Completo</summary>

```pascal
program Pacientes;
Uses crt;
const
  df = 5;

type

  rango = 1..df;

  paciente = record
    dni : integer;
    codPaciente : integer;
    codObraSoc : rango;
    costoSesion : real;
  end;

  arbol = ^nodo;

  nodo = record
    dato : paciente;
    hi : arbol;
    hd : arbol;
  end;

  pacientelista = record
    dni : integer;
    codigo : integer;
  end;

  lista = ^nodolista;

  nodolista = record
    dato : pacientelista;
    sig : lista
  end;

procedure leer(var p : paciente);
begin
  write('Ingresa dni ');
  readln(p.dni);
  if(p.dni <> 0) then begin
    write('Ingresar codigo de paciente ');
    readln(p.codPaciente);
    write('Ingresar obra social ');
    readln(p.codObraSoc);
    write('Ingrese costo de sesion ');
    readln(p.costoSesion);
  end;
end;

procedure crearArbol(var a : arbol; p  : paciente);
begin
  if(a = nil) then begin
    new(a);
    a^.dato := p;
    a^.hi := nil;
    a^.hd := nil;
  end
  else
    if(p.dni < a^.dato.dni) then
      crearArbol(a^.hi,p)
    else
      crearArbol(a^.hd,p);
end;

procedure cargarArbol(var a : arbol);
var
  p : paciente;
begin
  leer(p);
  while(p.dni <> 0) do begin
    crearArbol(a,p);
    leer(p);
  end;
end;

procedure agregarAdelante(var l : lista; p: paciente);
var
  aux : lista;
begin
  new(aux);
  aux^.dato.dni := p.dni;
  aux^.dato.codigo := p.codPaciente;
  aux^.sig := l;
  l := aux;
end;

procedure cargarlista(var l : lista; a : arbol);
begin
  if( a <> nil) then begin
    cargarlista(l,a^.hi);
    if(a^.dato.codObraSoc = 1) then
      agregarAdelante(l,a^.dato);
    cargarlista(l,a^.hd);
  end;
end;

procedure modificarObra(var a : arbol; d : integer; obraIng : integer) ;
begin

   if(a <> nil) then begin
     if(d = a^.dato.dni) then begin
       a^.dato.codObraSoc := obraIng;
     end
     else
      if(d < a^.dato.dni) then
        modificarObra(a^.hi,d,obraIng)
      else
        modificarObra(a^.hd,d,obraIng);
  end;
  
end;

var
  a : arbol;
  l : lista;
  dni, obra : integer;
begin
  clrscr;
  a := nil;
  l := nil;

  cargarArbol(a);

  cargarlista(l,a);

  writeln;
  write('Ingresar dni para cambiar la obra social ');
  readln(dni);
  write('Ingresar codigo de la obra nueva ');
  readln(obra);
  modificarObra(a,dni,obra);
  readln;
end.
```
</details>

---

![image](https://user-images.githubusercontent.com/55964635/139978268-16c92186-e810-489b-8ed4-536bc80c047f.png)

<details><summary>Programa Completo</summary>

```pascal
program Parcial21;
const
    dimF = 200;
    cant = 5;
    unidades = 500; //Para el punto B
type
    venta = record
        codigo:integer;
        cantidad:integer;
        monto:real;
    end;
    vector = array [1..dimF] of venta;
    
    regisVector = record
        v:vector;
        dimL:integer;
    end;
    vectorSucursal = array [1..cant] of regisVector;

    {A}
    nuevaVenta = record
        cantidadTotal:Real;
        codigo:integer;
    end;
    lista = ^nodo;
    nodo = record
        dato:nuevaVenta;
        sig:lista;
    end;

//___________________________________________________
procedure LeerVenta(var vent:venta);
begin
    writeln('Codigo: ');
    ReadLn(vent.codigo);
    if vent.codigo <> -1 then
    begin
        writeln('Cantidad: ');
        ReadLn(vent.cantidad);
        
        writeln('Monto: ');
        ReadLn(vent.monto);
    end;
end;
//___________________________________________________
procedure CargarVector(var rv:regisVector);
var
    vent:venta;
begin
    LeerVenta(vent);
    while (rv.dimL < dimF) and  (vent.codigo <> -1) do
    begin
        rv.dimL:=rv.dimL+1;
        rv.v[rv.dimL]:=vent;
        LeerVenta(vent);
    end;
    WriteLn('DimL: ',rv.dimL);
end;
//___________________________________________________
procedure Cargar_Vector_Sucursal(var vs:vectorSucursal);
var
    i:Integer;
begin
    for i:=1 to cant do
    begin
        vs[i].dimL:=0;
        CargarVector(vs[i]);
        WriteLn('_____________');
    end;
end;    
//___________________________________________________
Procedure BorrarPos (var rv: regisVector);
var 
    i: integer; 
Begin
    if (1 <= rv.dimL) then 
    begin
        for i:= 2 to rv.dimL  do
            rv.v [ i - 1 ]  :=  rv.v [ i ] ;
        rv.dimL := rv.dimL - 1 ;         
   end;
End;
//___________________________________________________
procedure minimo(var vs:vectorSucursal; var vent:nuevaVenta);
var 
  i, pos : integer;
begin
	vent.codigo := 9999;
	pos := -1;
	for i := 1 to cant do 
		if (vs[i].v[1].codigo <= vent.codigo ) and (vs[i].dimL>=1) then 
		begin
			pos := i;	
			vent.codigo := vs[i].v[1].codigo;	
		end;
        
	if (pos <> -1) then
	begin
        vent.cantidadTotal:=vs[pos].v[1].cantidad * vs[pos].v[1].monto;
		BorrarPos(vs[pos]);
	end;
end;
//___________________________________________________
procedure AgregarAlFinal2(var pri,ult:lista;x:nuevaVenta); 
var  
    nue : lista;
begin 
    new (nue);
    nue^.dato:= x;
    nue^.sig := NIL;
    if pri <> Nil then 
        ult^.sig := nue
    else 
        pri := nue;
    ult := nue;
end;
//___________________________________________________
procedure mergeAcumulador(var l :lista;vs:vectorSucursal) ;
var
	ult : lista;
	min, actual : nuevaVenta;
begin
    
	minimo(vs,min);	
	while (min.codigo <> 9999) do	
	begin
		actual.cantidadTotal := 0;	
		actual.codigo := min.codigo;	
		while (min.codigo <> 9999) and (min.codigo = actual.codigo) do begin
			actual.cantidadTotal:= actual.cantidadTotal + min.cantidadTotal;	
			minimo(vs,min);	
		end;
		AgregarAlFinal2(l,ult,actual);	
	end;
end;
//___________________________________________________
procedure ImprimirLista(l:lista);
begin
    while l <> nil do
    begin
        WriteLn('Codigo: ', l^.dato.codigo);
        WriteLn('Total: ', l^.dato.cantidadTotal:2:2);
        l:=l^.sig;    
    end;
end;
//___________________________________________________
procedure Supera500Unidades(L:lista;var superan:integer);
Begin
    if (L <> nil) then
    begin
        if (L^.dato.cantidadTotal > unidades) then
        begin
            superan:=superan+1;
        end;
        L:= L^.sig;
        Supera500Unidades(L,superan);
    end;
End;

//___________________________________________________
var
    vs:vectorSucursal;
    l:lista;
    Superan:integer;
begin
    Superan:=0;
    randomize;
    Cargar_Vector_Sucursal(vs); 
    l:=nil;
    mergeAcumulador(l,vs);
    ImprimirLista(l);
    Supera500Unidades(l,Superan);
end.
```
</details>

---

<h1 align="center">Parciales Concurrente</h1>

![image](https://user-images.githubusercontent.com/55964635/139561964-55572c5d-c0de-4525-958e-bfeb9f2f0a97.png)

[Programa Completo](https://github.com/Fabian-Martinez1/Taller-de-Programacion/blob/main/Parciales%20Concurrente/ParcialA.ri)

<details><summary>Programa Completo</summary>

```js
programa Parcial3fecha
procesos
{________________________________________________}
  proceso JuntarPapel(ES papel : numero)
  comenzar
    mientras (HayPapelEnLaEsquina) & (papel < 10)
      tomarPapel
      papel :=  papel + 1
  fin
{________________________________________________}
areas
  jardin : AreaC(5,5,5,5)
  deposito : AreaC(6,6,6,6)

  area1 : AreaP(1,1,1,1)
  area2 : AreaP(2,2,2,2)
{________________________________________________}
robots 
  robot RECOLECTOR1
  variables
    papel,av,ca : numero
    ok : boolean
  comenzar
    av := PosAv
    ca := PosCa
    ok := V
    mientras (ok)
      papel := 0
      BloquearEsquina(5,5)
      Pos(5,5)
      JuntarPapel(papel)
      si (papel = 0)
        ok := F
        Pos(av,ca)
        LiberarEsquina(5,5)
        EnviarMensaje(F,R2) {TERMINE}
      sino
        si papel < 10
          ok:=F
          EnviarMensaje(F,R2)
        sino
          EnviarMensaje(V,R2)
        BloquearEsquina(6,6)
        Pos(6,6)
        LiberarEsquina(5,5)
        repetir papel
          depositarPapel
        Pos(av,ca)
        LiberarEsquina(6,6)
  fin
{________________________________________________}
  robot RECOLECTOR2
  variables
    papel,av,ca : numero
    ok : boolean
  comenzar
    av := PosAv
    ca := PosCa
    RecibirMensaje(ok,R1)
    mientras (ok)
      papel := 0
      BloquearEsquina(5,5)
      Pos(5,5)
      JuntarPapel(papel)
      si(papel = 0)
        Pos(av,ca)
        LiberarEsquina(5,5)
        ok := F
      sino
        BloquearEsquina(6,6)
        Pos(6,6)
        LiberarEsquina(5,5)
        repetir papel
          depositarPapel
        Pos(av,ca)
        LiberarEsquina(6,6)
        si papel < 10
          ok:=F
  fin
{________________________________________________}     
variables 
  R1 : RECOLECTOR1
  R2 : RECOLECTOR2
comenzar 
  AsignarArea(R1,jardin)
  AsignarArea(R1,deposito)
  AsignarArea(R1,area1)

  AsignarArea(R2,jardin)
  AsignarArea(R2,deposito)
  AsignarArea(R2,area2)

  Iniciar(R1,1,1)
  Iniciar(R2, 2, 2)
fin
```

</details>


---

![image](https://user-images.githubusercontent.com/55964635/139564880-4e5006c8-c7c5-43a8-9a7b-0ff2193f8850.png)

[Programa Completo](https://github.com/Fabian-Martinez1/Taller-de-Programacion/blob/main/Parciales%20Concurrente/OtroParcialFecha2.ri)

<details><summary>Programa Completo</summary></details>

---

![image](https://user-images.githubusercontent.com/55964635/139567244-a2e8c3ef-8604-4861-81a3-3d6503d1c98b.png)

[Programa Completo](https://github.com/Fabian-Martinez1/Taller-de-Programacion/blob/main/Parciales%20Concurrente/Parcial%201.ri)

<details><summary>Programa Completo</summary></details>

---

![image](https://user-images.githubusercontent.com/55964635/139568404-7b27995d-cc88-4fdb-900c-8bc98be9d1bc.png)

[Programa Completo](https://github.com/Fabian-Martinez1/Taller-de-Programacion/blob/main/Parciales%20Concurrente/Parcial%202.ri)

<details><summary>Programa Completo</summary></details>

---

![image](https://user-images.githubusercontent.com/55964635/139593996-6ad1db51-25b4-4dc1-bc6f-7ff228f3bc3a.png)

[Programa Completo](https://github.com/Fabian-Martinez1/Taller-de-Programacion/blob/main/Parciales%20Concurrente/Parcial%203.ri)

<details><summary>Programa Completo</summary></details>

---

![image](https://user-images.githubusercontent.com/55964635/139596505-9e6db15e-b28a-48d9-96f1-05dc5cb12cec.png)

[Programa Completo](https://github.com/Fabian-Martinez1/Taller-de-Programacion/blob/main/Parciales%20Concurrente/Parcial4.ri)

<details><summary>Programa Completo</summary></details>

---

![image](https://user-images.githubusercontent.com/55964635/139596863-a9466a41-4072-4d3e-a512-485da09b3d6b.png)

[Programa Completo](https://github.com/Fabian-Martinez1/Taller-de-Programacion/blob/main/Parciales%20Concurrente/Parcial5.ri)

<details><summary>Programa Completo</summary></details>

---

![image](https://user-images.githubusercontent.com/55964635/139598426-32e90e1c-1609-4ddd-b512-44ab1bf35f88.png)

[Programa Completo](https://github.com/Fabian-Martinez1/Taller-de-Programacion/blob/main/Parciales%20Concurrente/Parcial6.ri)

<details><summary>Programa Completo</summary></details>

---

![image](https://user-images.githubusercontent.com/55964635/139601708-de783c04-5af1-4579-ba03-b88e9163a7ac.png)
![image](https://user-images.githubusercontent.com/55964635/139601717-14515c6d-314e-4124-9c41-7c0b45ff26a1.png)

> Igual a los otros

---


![image](https://user-images.githubusercontent.com/55964635/139605763-35fa58dd-c790-4a58-b874-90f0ba2f6f53.png)

[Programa Completo](https://github.com/Fabian-Martinez1/Taller-de-Programacion/blob/main/Parciales%20Concurrente/Parcial10.ri)

<details><summary>Programa Completo</summary></details>

---

![image](https://user-images.githubusercontent.com/55964635/139607385-f3619fc5-eb58-4c7b-bf5f-d036abbcf4b3.png)
![image](https://user-images.githubusercontent.com/55964635/139607414-bef24d5e-ba83-4cb7-bd19-46797cb49881.png)

[Programa Completo](https://github.com/Fabian-Martinez1/Taller-de-Programacion/blob/main/Parciales%20Concurrente/Parcial16.ri)

<details><summary>Programa Completo</summary></details>

---

![image](https://user-images.githubusercontent.com/55964635/139614826-3c64674d-36ea-4372-ac2f-1db6327e3ec4.png)
![image](https://user-images.githubusercontent.com/55964635/139614850-9c5c4c2d-0496-4cbe-a653-54a85c0b2361.png)

[Programa Completo](https://github.com/Fabian-Martinez1/Taller-de-Programacion/blob/main/Parciales%20Concurrente/Parcial21.ri)

<details><summary>Programa Completo</summary></details>

---

![image](https://user-images.githubusercontent.com/55964635/139620754-bdd45a61-cf68-432c-852d-eff3a64958a0.png)

[Programa Completo](https://github.com/Fabian-Martinez1/Taller-de-Programacion/blob/main/Parciales%20Concurrente/Parcial27.ri)

<details><summary>Programa Completo</summary></details>

---

![image](https://user-images.githubusercontent.com/55964635/140441420-71a48cd4-1412-4234-a022-5627ac7781ac.png)
![image](https://user-images.githubusercontent.com/55964635/140441455-ef971576-0b7f-4cb3-93b6-eb0b0b9097fb.png)

[Programa Completo](https://github.com/Fabian-Martinez1/Taller-de-Programacion/blob/main/Parciales%20Concurrente/Parcial7.ri)

<details><summary>Programa Completo</summary></details>
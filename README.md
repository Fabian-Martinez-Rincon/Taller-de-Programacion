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

<details><summary>Programa Completo</summary>

```js
programa Parcial2daFecha
procesos
{______________________________________________}
  proceso juntarF(ES flores:numero) 
  comenzar
    mientras HayFlorEnLaEsquina
      tomarFlor
      flores:=flores + 1
  fin
{______________________________________________}
  proceso juntarP (ES papeles:numero)
  comenzar
    mientras HayPapelEnLaEsquina
      tomarPapel
      papeles:=papeles + 1
  fin  
{______________________________________________}
  proceso RecorrerFlores(ES Flores:numero)
  variables
    av,ca:numero
  comenzar
    av := PosAv
    ca := PosCa
    repetir 9
      juntarF(Flores)
      mover
    juntarF(Flores)
    Pos(av,ca)
  fin
{______________________________________________}
  proceso RecorrerPapeles(ES Papeles:numero)
  variables
    av,ca:numero
  comenzar
    av := PosAv
    ca := PosCa
    repetir 9
      juntarP(Papeles)
      mover
    juntarP(Papeles)
    Pos(av,ca)
  fin
{______________________________________________}
areas 
  area1 : AreaP(5,1,5,10)
  area2 : AreaP(6,1,6,10)
  area3 : AreaP(7,1,7,10)
  areaF : AreaP(1,1,1,1)
  
robots
  robot RECOLECTOR
  variables
    Flores, Papeles, id, idMin : numero
  comenzar
    RecibirMensaje(id,RF)
    RecorrerFlores(Flores)

    EnviarMensaje(id,RF)
    EnviarMensaje(Flores,RF)
    
    RecibirMensaje(idMin,RF)

    si ~(idMin = id)
      RecorrerPapeles(Papeles)
      EnviarMensaje(id,RF) 
  fin
  
  robot JEFE
  variables
    Flores, id, min, idMin : numero
  comenzar
    Flores := 0
    min := 999
    EnviarMensaje(1,R1)
    EnviarMensaje(2,R2)
    EnviarMensaje(3,R3)
    
    repetir 3 {Busco el minimo}
      RecibirMensaje(id,*)
      si id = 1
        RecibirMensaje(Flores,R1)
      sino
        si id = 2
          RecibirMensaje(Flores,R2)
        sino
          RecibirMensaje(Flores,R3)
          
      si Flores < min
        min := Flores
        idMin := id
            
    EnviarMensaje(idMin,R1)
    EnviarMensaje(idMin,R2)
    EnviarMensaje(idMin,R3)
      
    RecibirMensaje(id,*)
    Informar('GanadorRobot',id)
    RecibirMensaje(id,*)
  fin
  
variables
  R1 : RECOLECTOR
  R2 : RECOLECTOR
  R3 : RECOLECTOR
  RF : JEFE
comenzar
  AsignarArea(R1, area1)
  AsignarArea(R2, area2)
  AsignarArea(R3, area3)
  AsignarArea(RF, areaF)
  
  Iniciar(R1,5,1)
  Iniciar(R2,6,1)
  Iniciar(R3,7,1)
  Iniciar(RF,1,1)
fin
```
</details>

---

![image](https://user-images.githubusercontent.com/55964635/139567244-a2e8c3ef-8604-4861-81a3-3d6503d1c98b.png)

<details><summary>Programa Completo</summary>

```js
programa Parcial
procesos
{______________________________________________}
  proceso juntarFlores(ES Flor:numero)
  comenzar
    mientras (HayFlorEnLaEsquina)
      tomarFlor
      Flor:= Flor + 1
  fin
{______________________________________________}
  proceso Juntar_Flores(ES Flores:numero)
  comenzar
    BloquearEsquina(50,50)
    Pos (50,50) 
    juntarFlores(Flores)
    Pos (2,2)
    LiberarEsquina(50,50)
  fin
{______________________________________________}
  proceso juntarPapeles(ES Papel:numero)
  comenzar
    mientras (HayPapelEnLaEsquina)
      tomarPapel
      Papel:= Papel + 1
  fin

{______________________________________________}
  proceso Juntar_Papeles(ES Papeles:numero)
  comenzar
    BloquearEsquina(50,50)
    Pos (50,50) 
    juntarPapeles(Papeles)
    Pos(3,3)
    LiberarEsquina(50,50)
  fin
{______________________________________________}
  proceso Procesar(E objetos:numero)
  comenzar
    Informar(objetos)
    Pos(1,5)
    derecha
    repetir objetos
      mover
  fin
{______________________________________________}
areas
  esquina: AreaC(50,50,50,50)

  esquinaR1: AreaP(2,2,2,2)
  esquinaR2: AreaP(3,3,3,3)

  area: AreaPC(1,5,100,5)

{______________________________________________}
robots
  robot TIPO1
  variables
    Flores:numero
    Papeles_Rival:numero
  comenzar
    
    Flores:=0
    Juntar_Flores(Flores)

    EnviarMensaje(Flores,R2)
    RecibirMensaje(Papeles_Rival,R2)

    si Flores > Papeles_Rival
      Procesar(Flores)

  fin
{______________________________________________}
  robot TIPO2
  variables
    Papeles:numero
    Flores_Rival:numero
  comenzar
    
    Papeles:=0
    Juntar_Papeles(Papeles)
    
    EnviarMensaje(Papeles,R1)
    RecibirMensaje(Flores_Rival,R1)

    si Papeles > Flores_Rival
      Procesar(Papeles)

  fin
{______________________________________________}
variables
  R1: TIPO1
  R2: TIPO2
comenzar
  AsignarArea (R1,esquina)
  AsignarArea (R1,esquinaR1)
  AsignarArea (R1,area)

  AsignarArea (R2,esquina)
  AsignarArea (R2,esquinaR2)
  AsignarArea (R2,area)
  
  Iniciar (R1,2,2)
  Iniciar (R2,3,3)
fin
```
</details>

---

![image](https://user-images.githubusercontent.com/55964635/139568404-7b27995d-cc88-4fdb-900c-8bc98be9d1bc.png)

<details><summary>Programa Completo</summary>

```js
programa Parcial
procesos
{___________________________________________________}
  proceso Juntar_Flores_Una(E av:numero; E ca:numero)
  comenzar
    BloquearEsquina(50,50)
    Pos(50,50)
    si HayFlorEnLaEsquina
      tomarFlor
    Pos(av,ca)
    LiberarEsquina(50,50)  
  fin
{___________________________________________________}
  proceso Identificar_Robots
  comenzar
    EnviarMensaje(1,R1)
    EnviarMensaje(2,R2)
    EnviarMensaje(3,R3)
    EnviarMensaje(4,R4)
  fin
{___________________________________________________}
  proceso avisarRobot 
  variables
    idRandom:numero
  comenzar
    Random(idRandom,1,4)
    si (idRandom=1)
      EnviarMensaje(V,R1)
      EnviarMensaje(F,R2)
      EnviarMensaje(F,R3)
      EnviarMensaje(F,R4)
    sino
      si (idRandom=2)
        EnviarMensaje(V,R2)
        EnviarMensaje(F,R1)
        EnviarMensaje(F,R3)
        EnviarMensaje(F,R4)
      sino
        si (idRandom=3)
          EnviarMensaje(V,R3)
          EnviarMensaje(F,R1)
          EnviarMensaje(F,R2)
          EnviarMensaje(F,R4)
        sino
          EnviarMensaje(V,R4)
          EnviarMensaje(F,R1)
          EnviarMensaje(F,R2)
          EnviarMensaje(F,R3)
  fin
{___________________________________________________}
areas
  esquina: AreaC(50,50,50,50)

  areaR1: AreaP(2,2,2,2)
  areaR2: AreaP(3,3,3,3)
  areaR3: AreaP(4,4,4,4)
  areaR4: AreaP(5,5,5,5)

  areaRJ: AreaP(1,1,1,1)
{___________________________________________________}
robots
  robot TIPO1
  variables
    id:numero
    aviso:boolean
    av,ca:numero
  comenzar
    RecibirMensaje(id,RJ)
    av:=PosAv
    ca:=PosCa
    repetir 5
      RecibirMensaje(aviso,RJ)
      si (aviso)
        Juntar_Flores_Una(av,ca)
  fin
{___________________________________________________}
  robot TIPOJ
  comenzar
    Identificar_Robots
    repetir 5
      avisarRobot
  fin
{___________________________________________________}
variables
  R1,R2,R3,R4: TIPO1
  RJ: TIPOJ
comenzar
  AsignarArea (R1,areaR1)
  AsignarArea (R1,esquina)

  AsignarArea (R2,areaR2)
  AsignarArea (R2,esquina)

  AsignarArea (R3,areaR3)
  AsignarArea (R3,esquina)

  AsignarArea (R4,areaR4)
  AsignarArea (R4,esquina)

  AsignarArea (RJ,areaRJ)
  
  Iniciar (R1,2,2)
  Iniciar (R2,3,3)
  Iniciar (R3,4,4)
  Iniciar (R4,5,5)
  Iniciar (RJ,1,1)
fin
```
</details>

---

![image](https://user-images.githubusercontent.com/55964635/139593996-6ad1db51-25b4-4dc1-bc6f-7ff228f3bc3a.png)

<details><summary>Programa Completo</summary>

```js
programa Parcial
procesos
{____________________________________________________}
  proceso Identificar_Robots
  comenzar
    EnviarMensaje(1,R1)
    EnviarMensaje(2,R2)
    EnviarMensaje(3,R3)
    EnviarMensaje(4,R4)  
  fin
{____________________________________________________}
  proceso Juntar_Objetos(ES Flor:numero;ES Tiene_Objetos:boolean)
  variables
    av,ca:numero
  comenzar
    av:= PosAv
    ca:= PosCa
    BloquearEsquina(30,30)
    Pos(30,30)
    si HayFlorEnLaEsquina
      tomarFlor
      Flor:=Flor+1
    sino
      si HayPapelEnLaEsquina
        tomarPapel
      sino
        Tiene_Objetos:=F
    Pos(av,ca)  
    LiberarEsquina(30,30)  
  fin
{____________________________________________________}
  proceso Tercero_Tarea(E FTercero:numero)
  variables
    ca,av:numero
  comenzar
    av:=PosAv
    ca:=PosCa
    BloquearEsquina(40,40)
    Pos(40,40)
    repetir FTercero
      depositarFlor
    Pos(av,ca)
    LiberarEsquina(40,40)
  fin
{____________________________________________________}
areas
  esquina: AreaC(30,30,30,30)

  esquina2: AreaPC(40,40,40,40)  {PC ya que el jefe nunca tendria que ir}
  
  areaR1: AreaP(2,2,2,2)
  areaR2: AreaP(3,3,3,3)
  areaR3: AreaP(4,4,4,4)
  areaR4: AreaP(5,5,5,5)

  areaRJ: AreaP(1,1,1,1)
robots
  robot TIPO1
  variables
    id,idTercero:numero
    Flores,FTercero:numero
    Tiene_Objetos:boolean
  comenzar        
    Tiene_Objetos:=V
    RecibirMensaje(id,RJ)
    mientras (Tiene_Objetos)
      Juntar_Objetos(Flores,Tiene_Objetos)
    EnviarMensaje(id,RJ)   

    RecibirMensaje(idTercero,RJ)
    si idTercero = id
      Tercero_Tarea(Flores)

  fin
  robot TIPOJ
  variables
    tercero:numero
    id:numero
    Flores:numero
    ok:boolean
  comenzar      
    Identificar_Robots
    RecibirMensaje(id,*)
    RecibirMensaje(tercero,*)  {Tercero de 4}
    repetir 2
      RecibirMensaje(id,*) 
    Informar(tercero)

    EnviarMensaje(tercero,R1)
    EnviarMensaje(tercero,R2)
    EnviarMensaje(tercero,R3)
    EnviarMensaje(tercero,R4)
  fin

variables
  R1,R2,R3,R4: TIPO1
  RJ:TIPOJ
comenzar
  AsignarArea (R1,areaR1)
  AsignarArea (R2,areaR2)
  AsignarArea (R3,areaR3)
  AsignarArea (R4,areaR4)

  AsignarArea (R1,esquina)
  AsignarArea (R2,esquina)
  AsignarArea (R3,esquina)
  AsignarArea (R4,esquina)

  AsignarArea (R1,esquina2)
  AsignarArea (R2,esquina2)
  AsignarArea (R3,esquina2)
  AsignarArea (R4,esquina2)

  AsignarArea (RJ,areaRJ)

  Iniciar (R1,2,2)
  Iniciar (R2,3,3)
  Iniciar (R3,4,4)
  Iniciar (R4,5,5)
  Iniciar (RJ,1,1)
fin
```
</details>

---

![image](https://user-images.githubusercontent.com/55964635/139596505-9e6db15e-b28a-48d9-96f1-05dc5cb12cec.png)

<details><summary>Programa Completo</summary>

```js
programa programa_x
procesos
{_____________________________________}
  proceso juntarPapel(ES papel:numero)
  comenzar
    si HayPapelEnLaEsquina
      tomarPapel
      papel:=papel+1
  fin   
{_____________________________________}
  proceso depositar_papeles(E papel:numero; ES av:numero; ES ca:numero)
  comenzar
    repetir papel
      BloquearEsquina(60,60)
      Pos(60,60)
      depositarPapel
      Pos(av,ca)
      LiberarEsquina(60,60)
  fin
{_____________________________________}
  proceso Recorrer_Flores
  comenzar
    mientras ~(HayFlorEnLaEsquina)
      BloquearEsquina(PosAv ,PosCa + 1)
      mover
      LiberarEsquina(PosAv,PosCa - 1) 
  fin
{_____________________________________}
  proceso Recorrer_Papeles(ES papel:numero)
  comenzar
    derecha
    repetir 48
      BloquearEsquina(PosAv + 1, PosCa)
      mover
      juntarPapel(papel)
      LiberarEsquina(PosAv - 1, PosCa)
  fin
{_____________________________________}
areas
  Area1: AreaC (2,1,50,100) 
  Area2: AreaPC (60,60,60,60) 
robots
  robot TIPO1
  variables
    av,ca:numero
    avUlt,caUlt:numero
    papel:numero
  comenzar
    papel:=0
    ca:=PosCa
    av:=PosAv
    
    BloquearEsquina(av,ca)
    Recorrer_Papeles(papel)
    
    avUlt:=PosAv
    caUlt:=PosCa
    Pos(av,ca)
    LiberarEsquina(avUlt,caUlt)

    depositar_papeles(papel,av,ca)

  fin
  robot TIPO2
  comenzar
    BloquearEsquina(PosAv,PosCa)
    Recorrer_Flores
    LiberarEsquina(PosAv,PosCa){libera la ultima}
  fin
variables
  R1,R2,R3: TIPO1
  R4,R5,R6: TIPO2
comenzar
  AsignarArea (R1,Area1)  
  AsignarArea (R2,Area1)
  AsignarArea (R3,Area1)
  AsignarArea (R4,Area1)
  AsignarArea (R5,Area1)
  AsignarArea (R6,Area1)

  AsignarArea (R1,Area2)  
  AsignarArea (R2,Area2)
  AsignarArea (R3,Area2)
  AsignarArea (R4,Area2) 

  Iniciar (R1,2,2)  
  Iniciar (R2,2,6)
  Iniciar (R3,2,10)
  Iniciar (R4,2,14)
  Iniciar (R5,3,1)
  Iniciar (R6,8,1)

fin
```
</details>

---

![image](https://user-images.githubusercontent.com/55964635/139596863-a9466a41-4072-4d3e-a512-485da09b3d6b.png)

<details><summary>Programa Completo</summary>

```js
programa Parcial
procesos
{______________________________________________}
  proceso juntarF(ES flores:numero) 
  comenzar
    mientras HayFlorEnLaEsquina
      tomarFlor
      flores:=flores + 1
  fin
{______________________________________________}
  proceso juntarP (ES papeles:numero)
  comenzar
    mientras HayPapelEnLaEsquina
      tomarPapel
      papeles:=papeles + 1
  fin  
{______________________________________________}
  proceso RecorrerFlores(ES Flores:numero)
  variables
    av,ca:numero
  comenzar
    av := PosAv
    ca := PosCa
    repetir 9
      juntarF(Flores)
      mover
    juntarF(Flores)
    Pos(av,ca)
  fin
{______________________________________________}
  proceso RecorrerPapeles(ES Papeles:numero)
  variables
    av,ca:numero
  comenzar
    av := PosAv
    ca := PosCa
    repetir 9
      juntarP(Papeles)
      mover
    juntarP(Papeles)
    Pos(av,ca)
  fin
{______________________________________________}
areas 
  area1 : AreaP(5,1,5,10)
  area2 : AreaP(6,1,6,10)
  area3 : AreaP(7,1,7,10)
  areaF : AreaP(1,1,1,1)
  
robots
  robot RECOLECTOR
  variables
    Flores, Papeles, id, idMin : numero
    total:numero
  comenzar
    total:=0
    RecibirMensaje(id,RF)
    RecorrerFlores(Flores)

    EnviarMensaje(id,RF)
    EnviarMensaje(Flores,RF)
    
    RecibirMensaje(idMin,RF)

    si ~(idMin = id)
      RecorrerPapeles(Papeles)
      total:=total + Flores + Papeles
      EnviarMensaje(id,RF) 
      EnviarMensaje(total,RF)
  fin
  
  robot JEFE
  variables
    Flores,Papeles:numero
    id, min, idMin : numero
    total1,total2:numero
    id1,id2:numero
  comenzar
    Flores := 0
    min := 999
    EnviarMensaje(1,R1)
    EnviarMensaje(2,R2)
    EnviarMensaje(3,R3)
    
    repetir 3 {Busco el minimo}
      RecibirMensaje(id,*)
      si id = 1
        RecibirMensaje(Flores,R1)
      sino
        si id = 2
          RecibirMensaje(Flores,R2)
        sino
          RecibirMensaje(Flores,R3)
          
      si Flores < min
        min := Flores
        idMin := id
            
    EnviarMensaje(idMin,R1)
    EnviarMensaje(idMin,R2)
    EnviarMensaje(idMin,R3)
      
    RecibirMensaje(id1,*)
    RecibirMensaje(total1,*)
    RecibirMensaje(id2,*)
    RecibirMensaje(total2,*)

    si total1 > total2
      Informar(id1)
    sino
      Informar(id2)
    

  fin
  
variables
  R1,R2,R3 : RECOLECTOR
  RF : JEFE
comenzar
  AsignarArea(R1, area1)
  AsignarArea(R2, area2)
  AsignarArea(R3, area3)
  AsignarArea(RF, areaF)
  
  Iniciar(R1,5,1)
  Iniciar(R2,6,1)
  Iniciar(R3,7,1)
  Iniciar(RF,1,1)
fin
```
</details>

---

![image](https://user-images.githubusercontent.com/55964635/139598426-32e90e1c-1609-4ddd-b512-44ab1bf35f88.png)

<details><summary>Programa Completo</summary>

```js
programa Parcial
procesos
{______________________________________________}
  proceso juntarF(ES flores:numero) 
  comenzar
    mientras HayFlorEnLaEsquina
      tomarFlor
      flores:=flores + 1
  fin
{______________________________________________}
  proceso juntarP (ES papeles:numero)
  comenzar
    mientras HayPapelEnLaEsquina
      tomarPapel
      papeles:=papeles + 1
  fin  
{______________________________________________}
  proceso RecorrerFlores(ES Flores:numero)
  variables
    av,ca:numero
  comenzar
    av := PosAv
    ca := PosCa
    repetir 9
      juntarF(Flores)
      mover
    juntarF(Flores)
    Pos(av,ca)
  fin
{______________________________________________}
  proceso RecorrerPapeles(ES Papeles:numero)
  variables
    av,ca:numero
  comenzar
    av := PosAv
    ca := PosCa
    repetir 9
      juntarP(Papeles)
      mover
    juntarP(Papeles)
    Pos(av,ca)
  fin
{______________________________________________}
areas 
  area1 : AreaP(5,1,5,10)
  area2 : AreaP(6,1,6,10)
  area3 : AreaP(7,1,7,10)
  areaF : AreaP(1,1,1,1)
  
robots
  robot RECOLECTOR
  variables
    Flores, Papeles, id : numero
    total:numero
  comenzar
    total:=0
    RecibirMensaje(id,RF)
    RecorrerFlores(Flores)

    EnviarMensaje(id,RF)
    

    RecibirMensaje(id,RF)

    RecorrerPapeles(Papeles)
    total:=total + Flores + Papeles
    EnviarMensaje(id,RF) 
    EnviarMensaje(total,RF)
  fin
  
  robot JEFE 
  variables 
    Flores,Papeles:numero
    id, max, idMax : numero
    total:numero
  comenzar
    Flores := 0
    max := - 999
    EnviarMensaje(1,R1)
    EnviarMensaje(2,R2)
    EnviarMensaje(3,R3)
    
    repetir 3 
      RecibirMensaje(id,*)
      
    EnviarMensaje(1,R1)
    EnviarMensaje(2,R2)
    EnviarMensaje(3,R3)
      

    repetir 3
      RecibirMensaje(id,*)
      RecibirMensaje(total,*)
      si total > max
        max:=total
        idMax:=id
    
    Informar(idMax)
  fin
  
variables
  R1,R2,R3 : RECOLECTOR
  RF : JEFE
comenzar
  AsignarArea(R1, area1)
  AsignarArea(R2, area2)
  AsignarArea(R3, area3)
  AsignarArea(RF, areaF)
  
  Iniciar(R1,5,1)
  Iniciar(R2,6,1)
  Iniciar(R3,7,1)
  Iniciar(RF,1,1)
fin
```
</details>

---

![image](https://user-images.githubusercontent.com/55964635/139601708-de783c04-5af1-4579-ba03-b88e9163a7ac.png)
![image](https://user-images.githubusercontent.com/55964635/139601717-14515c6d-314e-4124-9c41-7c0b45ff26a1.png)

> Igual a los otros

---


![image](https://user-images.githubusercontent.com/55964635/139605763-35fa58dd-c790-4a58-b874-90f0ba2f6f53.png)

[Programa Completo](https://github.com/Fabian-Martinez1/Taller-de-Programacion/blob/main/Parciales%20Concurrente/Parcial10.ri)

<details><summary>Programa Completo</summary>

```js
programa programa_x
procesos
  proceso juntarObjetos(ES flores:numero; ES papeles:numero)
  comenzar
    mientras HayFlorEnLaEsquina
      tomarFlor
      flores:=flores+1
    mientras HayPapelEnLaEsquina
      tomarPapel
      papeles:=papeles+1
  fin
  proceso Rectangulo(ES flores:numero; ES papeles:numero)
  variables
    base,alto:numero
  comenzar
    base:=9
    Random(alto,20,35)
    repetir 2
      repetir alto
        mover
      juntarObjetos(flores,papeles)
      derecha
      repetir base
        mover
      juntarObjetos(flores,papeles)
      derecha
  fin
  proceso Identificar_Robots
  comenzar
    EnviarMensaje(1,R1)
    EnviarMensaje(2,R2)
    EnviarMensaje(3,R3)
  fin

areas
  esquinaJefe: AreaP(1,1,1,1)

  tramoCalle: AreaP(1,10,4,10)
  tramoCalle2: AreaP(6,10,13,10)
  tramoCalle3: AreaP(15,10,19,10)
  tramoCalle4: AreaP(21,10,28,10)
  tramoCalle5: AreaP(30,10,34,10)
  tramoCalle6: AreaP(36,10,43,10)
  tramoCalle7: AreaP(45,10,100,10)

  esquinaR1: AreaP(5,1,14,9)
  esquinaR12: AreaP(5,11,14,35)
  esquinaRec1: AreaPC(5,10,5,10)
  esquinaRec2: AreaPC(14,10,14,10)


  esquinaR2: AreaP(20,1,29,9)
  esquinaR22: AreaP(20,11,29,35)
  esquinaRec11: AreaPC(20,10,20,10)
  esquinaRec21: AreaPC(29,10,29,10)

  esquinaR3: AreaP(35,1,44,9)
  esquinaR32: AreaP(35,11,44,35)
  esquinaRec12: AreaPC(35,10,35,10)
  esquinaRec22: AreaPC(44,10,44,10)

  esquina: AreaC(61,61,61,61)
robots
  robot RECTANGULO
  variables
    Flores,Papeles:numero
    id:numero
    idMin:numero
    av,ca:numero
  comenzar
    Flores:=0
    Papeles:=0
    av:=PosAv
    ca:=PosCa
    RecibirMensaje(id,RJ)
    Rectangulo(Flores,Papeles)

    EnviarMensaje(id,RJ)
    EnviarMensaje(Papeles,RJ)
  
    RecibirMensaje(idMin,RJ)
    si ~(idMin = id)
      repetir Flores
        BloquearEsquina(61,61)
        Pos(61,61)
        depositarFlor
        Pos(av,ca)
        LiberarEsquina(61,61)

  fin
  robot CALLEJERO
  comenzar
    derecha
    BloquearEsquina(PosAv,PosCa)
    repetir 99
      BloquearEsquina(PosAv ,PosCa + 1)
      si HayPapelEnLaEsquina
        tomarPapel
      mover
      LiberarEsquina(PosAv,PosCa - 1) 
    si HayPapelEnLaEsquina
      tomarPapel
    LiberarEsquina(PosAv,PosCa) 
  fin
  robot JEFE
  variables
    idMin,min:numero
    id:numero
    Papeles:numero
  comenzar
    min:=999
    Identificar_Robots
    repetir 3 {Busco el minimo}
      RecibirMensaje(id,*)
      si id = 1
        RecibirMensaje(Papeles,R1)
      sino
        si id = 2
          RecibirMensaje(Papeles,R2)
        sino
          RecibirMensaje(Papeles,R3)
          
      si Papeles < min
        min := Papeles
        idMin := id
           
    EnviarMensaje(idMin,R1)
    EnviarMensaje(idMin,R2)
    EnviarMensaje(idMin,R3)
  fin
variables
  R1,R2,R3: RECTANGULO
  RC: CALLEJERO
  RJ: JEFE
comenzar
  AsignarArea (R1,esquinaR1)
  AsignarArea (R2,esquinaR2)
  AsignarArea (R3,esquinaR3)

  AsignarArea (R1,esquina)
  AsignarArea (R2,esquina)
  AsignarArea (R3,esquina)


  AsignarArea (R1,esquinaR12)
  AsignarArea (R2,esquinaR22)
  AsignarArea (R3,esquinaR32)



  AsignarArea (RC,tramoCalle)
  AsignarArea (RC,tramoCalle2)
  AsignarArea (RC,tramoCalle3)
  AsignarArea (RC,tramoCalle4)
  AsignarArea (RC,tramoCalle5)
  AsignarArea (RC,tramoCalle6)
  AsignarArea (RC,tramoCalle7)

  AsignarArea (RC,esquinaRec1)
  AsignarArea (RC,esquinaRec2)
  AsignarArea (RC,esquinaRec11)
  AsignarArea (RC,esquinaRec21)
  AsignarArea (RC,esquinaRec12)
  AsignarArea (RC,esquinaRec22)

  AsignarArea (R1,esquinaRec1)
  AsignarArea (R1,esquinaRec2)
  AsignarArea (R2,esquinaRec11)
  AsignarArea (R2,esquinaRec21)
  AsignarArea (R3,esquinaRec12)
  AsignarArea (R3,esquinaRec22)


  AsignarArea (RJ,esquinaJefe)
  
  
  Iniciar (R1,5,1)
  Iniciar (R2,20,1)
  Iniciar (R3,35,1)
  Iniciar (RC,1,10)
  Iniciar (RJ,1,1)
fin
```
</details>

---

![image](https://user-images.githubusercontent.com/55964635/139607385-f3619fc5-eb58-4c7b-bf5f-d036abbcf4b3.png)
![image](https://user-images.githubusercontent.com/55964635/139607414-bef24d5e-ba83-4cb7-bd19-46797cb49881.png)

<details><summary>Programa Completo</summary>

```js
programa programa_x
procesos
  proceso juntarFlores(ES Flor:numero)
  comenzar
    mientras (HayFlorEnLaEsquina)
      tomarFlor
      Flor:= Flor + 1
  fin
  proceso juntarPapeles(ES Papel:numero)
  comenzar
    mientras (HayPapelEnLaEsquina)
      tomarPapel
      Papel:= Papel + 1
  fin

areas
  linea1: AreaPC(2,12,12,12)
  linea12: AreaPC(7,4,7,24)
  linea2: AreaPC(16,12,26,12)
  linea22: AreaPC(21,4,21,24)

  esquinaJ: AreaP(1,1,1,1)
  
robots
  robot florero
  variables
    flores:numero
    id:numero
  comenzar
    RecibirMensaje(id,RJ)
    derecha
    BloquearEsquina(PosAv,PosCa)
    repetir 10
      BloquearEsquina(PosAv + 1 ,PosCa)
      juntarFlores(flores)
      mover
      LiberarEsquina(PosAv - 1,PosCa) 
    juntarFlores(flores)
    LiberarEsquina(PosAv,PosCa)

    EnviarMensaje(id,RJ)
    EnviarMensaje(flores,RJ)

  fin
  robot papelero
  variables
    papeles:numero
    id:numero
  comenzar
    RecibirMensaje(id,RJ)
    BloquearEsquina(PosAv,PosCa)
    repetir 20
      BloquearEsquina(PosAv ,PosCa + 1)
      juntarPapeles(papeles)
      mover
      LiberarEsquina(PosAv,PosCa - 1) 
    juntarPapeles(papeles)
    LiberarEsquina(PosAv,PosCa)

    EnviarMensaje(id,RJ)
    EnviarMensaje(papeles,RJ)
  fin
  robot jefe
  variables
    total1,total2:numero
    Flores,Papeles:numero
    id:numero
  comenzar
    total1:=0
    total2:=0
    EnviarMensaje(1,RF)
    EnviarMensaje(2,RP)

    EnviarMensaje(3,RF2)
    EnviarMensaje(4,RP2)

    repetir 4 {Busco el total de ambos}
      RecibirMensaje(id,*)
      si id = 1 
        RecibirMensaje(Flores,RF)
        total1:=total1+Flores
      sino
        si id = 2
          RecibirMensaje(Papeles,RP)
          total1:=total1+Papeles
        sino
          si id = 3
            RecibirMensaje(Flores,RF2)
            total2:=total2+Flores
          sino 
            RecibirMensaje(Papeles,RP2)
            total2:=total2+Papeles
          
    si total1 > total2
      Informar('El-equipo-que-mas-objetos-junto-es-es-azul',1)
    sino
      Informar('El-equipo-que-mas-objetos-junto-es-es-verde',2)
  fin
variables
  RF,RF2: florero
  RP,RP2: papelero
  RJ: jefe
comenzar
  AsignarArea (RF,linea1)
  AsignarArea (RF,linea12)
  AsignarArea (RP,linea1)
  AsignarArea (RP,linea12)

  AsignarArea (RF2,linea2)
  AsignarArea (RF2,linea22)
  AsignarArea (RP2,linea2)
  AsignarArea (RP2,linea22)

  AsignarArea(RJ,esquinaJ)

  Iniciar (RF,2,12)
  Iniciar (RF2,16,12)
  Iniciar (RP,7,4)
  Iniciar (RP2,21,4)
  Iniciar(RJ,1,1)
fin
```
</details>

---

![image](https://user-images.githubusercontent.com/55964635/139614826-3c64674d-36ea-4372-ac2f-1db6327e3ec4.png)
![image](https://user-images.githubusercontent.com/55964635/139614850-9c5c4c2d-0496-4cbe-a653-54a85c0b2361.png)

<details><summary>Programa Completo</summary>

```js
programa FabianMartinezRincon
procesos
  proceso juntarFlores(ES Flor:numero)
  comenzar
    mientras (HayFlorEnLaEsquina)
      tomarFlor
      Flor:= Flor + 1
  fin
  proceso juntarPapeles
  comenzar
    si HayPapelEnLaEsquina
      tomarPapel
  fin
areas
  cuadrante: AreaPC(10,10,15,15)

  esquina1: AreaP(1,1,1,1)
  esquina2: AreaP(2,1,2,1)
  esquina3: AreaP(3,1,3,1)
  esquina4: AreaP(4,1,4,1)
  esquina5: AreaP(5,1,5,1)
robots
  robot florero
  variables
    x,y:numero
    flores:numero
    av,ca:numero
    id:numero
  comenzar
    av:=PosAv
    ca:=PosCa
    RecibirMensaje(id,RJ)
    repetir 4 
      Random(y,10,15)
      Random(x,10,15)
      BloquearEsquina(y,x)
      Pos(y,x)
      juntarFlores(flores)
      Pos(av,ca)
      LiberarEsquina(y,x)

    EnviarMensaje(id,RJ)
    EnviarMensaje(flores,RJ)
    
  fin
  robot papelero
  variables
    x,y:numero
    av,ca:numero
  comenzar
    av:=PosAv
    ca:=PosCa
    repetir 3 
      Random(y,10,15)
      Random(x,10,15)
      BloquearEsquina(y,x)
      Pos(y,x)
      juntarPapeles
      Pos(av,ca)
      LiberarEsquina(y,x)

  fin
  robot jefe
  variables
    id:numero
    Flores:numero
    total:numero
  comenzar
    total:=0
    EnviarMensaje(1,R1)
    EnviarMensaje(2,R2)

    repetir 2
      RecibirMensaje(id,*)
      si(id = 1)
        RecibirMensaje(Flores,R1)
      sino
        si (id = 2)
          RecibirMensaje(Flores,R2)

      total:= total + Flores
    Informar(total)

  

  fin
variables
  R1,R2: florero
  R3,R4: papelero
  RJ: jefe
comenzar
  AsignarArea (R1,cuadrante)
  AsignarArea (R2,cuadrante)
  AsignarArea (R3,cuadrante)
  AsignarArea (R4,cuadrante)

  AsignarArea (R1,esquina1)
  AsignarArea (R2,esquina2)
  AsignarArea (R3,esquina3)
  AsignarArea (R4,esquina4)

  AsignarArea (RJ,esquina5)
  
  Iniciar (R1,1,1)
  Iniciar (R2,2,1)

  Iniciar (R3,3,1)
  Iniciar (R4,4,1)
  Iniciar (RJ,5,1)
fin
```
</details>

---

![image](https://user-images.githubusercontent.com/55964635/139620754-bdd45a61-cf68-432c-852d-eff3a64958a0.png)

<details><summary>Programa Completo</summary>

```js
programa programa_x
procesos
  proceso Identificar_Robots
  comenzar
    EnviarMensaje(1,R1)
    EnviarMensaje(2,R2)
  fin
{______________________________________________________________________________}
  proceso Enviar_Perimetro (E x:numero; E y:numero)
  comenzar
    EnviarMensaje(x,R1)
    EnviarMensaje(y,R1)
    
    EnviarMensaje(x,R2)
    EnviarMensaje(y,R2)
  fin
{____________________________________________}
  proceso Depositar_Objetos(E Flor:numero;E Papel:numero;E id:numero)
  variables
    av,ca:numero
    total:numero
  comenzar
    total:=Flor+Papel
    
    EnviarMensaje(id,RC)
    EnviarMensaje(total,RC)
    
    av:= PosAv
    ca:= PosCa
    repetir Flor
      BloquearEsquina(21,21)
      Pos(21,21)
      depositarFlor
      Pos(av,ca)
      LiberarEsquina(21,21)

    repetir Papel
      BloquearEsquina(22,22)
      Pos(22,22)
      depositarPapel
      Pos(av,ca)
      LiberarEsquina(22,22)
  fin
{____________________________________________}
  proceso Rectangulo(E x:numero; E y:numero;E id:numero)
  variables
    flores,papeles:numero
  comenzar
    flores:=0
    papeles:=0
    repetir 2
      flores:=0
      papeles:=0
      repetir x
        juntarFloresPapeles(flores,papeles)
        mover
      derecha
      Depositar_Objetos(flores,papeles,id)
      flores:=0
      papeles:=0
      repetir y
        juntarFloresPapeles(flores,papeles)
        mover
      juntarFloresPapeles(flores,papeles)
      derecha
      Depositar_Objetos(flores,papeles,id)
  fin
{____________________________________________}
  proceso juntarFloresPapeles(ES Flor:numero; ES Papel: numero)
  comenzar
    mientras (HayFlorEnLaEsquina)
      tomarFlor
      Flor:= Flor + 1
    
    mientras (HayPapelEnLaEsquina)
      tomarPapel
      Papel:= Papel + 1
  fin
{____________________________________________}
areas
  esquinaF: AreaPC(21,21,21,21)
  esquinaP: AreaPC(22,22,22,22)
 
  areaR1: AreaP(1,1,20,20)
  areaR2: AreaP(21,1,40,20)

  areaCord: AreaP(23,23,23,23)

robots
  robot tipo1
  variables
    id:numero
    x,y:numero
    ca,av:numero
  comenzar
    RecibirMensaje(id,RC)
    RecibirMensaje(x,RC)
    RecibirMensaje(y,RC)
    Rectangulo(x,y,id)
    
  fin
  robot cordinador
  variables
    x,y:numero
    totalR1,totalR2:numero
    total:numero
    id:numero
  comenzar
    totalR1:=0
    totalR2:=0
    Identificar_Robots
    Random(x,1,19)
    Random(y,1,19)
    Enviar_Perimetro(x,y)
    repetir 2   {por robot}
      repetir 4  {por cada lado}
        RecibirMensaje(id,*)
        si id = 1
          RecibirMensaje(total,R1)
          totalR1:=totalR1+total
        sino 
          RecibirMensaje(total,R2)
          totalR2:=totalR2+total
 
    si totalR1 > totalR2
      Informar(1)
    sino
      Informar(2)
  fin
variables
  R1,R2: tipo1
  RC: cordinador
comenzar
  AsignarArea (R1,areaR1)
  AsignarArea (R1,esquinaF)
  AsignarArea (R1,esquinaP)

  AsignarArea (R2,areaR2)
  AsignarArea (R2,esquinaF)
  AsignarArea (R2,esquinaP)

  AsignarArea (RC,areaCord)
  
  Iniciar (R1,1,1)
  Iniciar (R2,21,1)
  Iniciar (RC,23,23)
fin
```
</details>

---

![image](https://user-images.githubusercontent.com/55964635/140441420-71a48cd4-1412-4234-a022-5627ac7781ac.png)
![image](https://user-images.githubusercontent.com/55964635/140441455-ef971576-0b7f-4cb3-93b6-eb0b0b9097fb.png)

<details><summary>Programa Completo</summary>

```js
programa Parcial2daFecha
procesos
{______________________________________________}
  proceso juntarF(ES flores:numero) 
  comenzar
    mientras HayFlorEnLaEsquina
      tomarFlor
      flores:=flores + 1
  fin
{______________________________________________}
  proceso juntarP (ES papeles:numero)
  comenzar
    mientras HayPapelEnLaEsquina
      tomarPapel
      papeles:=papeles + 1
  fin  
{______________________________________________}
  proceso RecorrerFlores(ES Flores:numero)
  variables
    av,ca:numero
  comenzar
    av := PosAv
    ca := PosCa
    repetir 9
      juntarF(Flores)
      mover
    juntarF(Flores)
    Pos(av,ca)
  fin
{______________________________________________}
  proceso RecorrerPapeles(ES Papeles:numero)
  variables
    av,ca:numero
  comenzar
    av := PosAv
    ca := PosCa
    repetir 9
      juntarP(Papeles)
      mover
    juntarP(Papeles)
    Pos(av,ca)
  fin
{______________________________________________}
areas 
  area1 : AreaP(5,1,5,10)
  area2 : AreaP(6,1,6,10)
  area3 : AreaP(7,1,7,10)
  area4 : AreaP(8,1,10,1)
  areaF : AreaP(1,1,1,1)
  
robots
  robot RECOLECTOR
  variables
    Flores, Papeles, id, idMin : numero
  comenzar
    RecibirMensaje(id,RF)
    RecorrerFlores(Flores)

    EnviarMensaje(id,RF)
    EnviarMensaje(Flores,RF)
    
    RecibirMensaje(idMin,RF)

    si (idMin = id)
      Pos(5,1)
      repetir 2
        RecorrerPapeles(Papeles)
        Pos(PosAv+1,PosCa)
      RecorrerPapeles(Papeles)
      EnviarMensaje(id,RF) 
      EnviarMensaje(Papeles,RF)
      
    sino 
      Pos(PosAv+3,PosCa)

  fin
  
  robot JEFE
  variables
    Flores,Papeles, id, min, idMin : numero
  comenzar
    Flores := 0
    min := 999
    EnviarMensaje(1,R1)
    EnviarMensaje(2,R2)
    EnviarMensaje(3,R3)
    
    repetir 3 {Busco el minimo}
      RecibirMensaje(id,*)
      si id = 1
        RecibirMensaje(Flores,R1)
      sino
        si id = 2
          RecibirMensaje(Flores,R2)
        sino
          RecibirMensaje(Flores,R3)
          
      si Flores < min
        min := Flores
        idMin := id
            
    EnviarMensaje(idMin,R1)
    EnviarMensaje(idMin,R2)
    EnviarMensaje(idMin,R3)
      
    RecibirMensaje(id,*)
    RecibirMensaje(Papeles,*)
    Informar('Papeles',Papeles)
  fin
  
variables
  R1 : RECOLECTOR
  R2 : RECOLECTOR
  R3 : RECOLECTOR
  RF : JEFE
comenzar
  AsignarArea(R1, area1)
  AsignarArea(R1, area2)
  AsignarArea(R1, area3)
  AsignarArea(R1, area4)

  AsignarArea(R2, area2)
  AsignarArea(R2, area1)
  AsignarArea(R2, area3)
  AsignarArea(R2, area4)

  AsignarArea(R3, area3)
  AsignarArea(R3, area1)
  AsignarArea(R3, area2)
  
  AsignarArea(R3, area4)

  AsignarArea(RF, areaF)
  
  Iniciar(R1,5,1)
  Iniciar(R2,6,1)
  Iniciar(R3,7,1)
  Iniciar(RF,1,1)
fin
```
</details>

<h1 align="center"> Parciales Objetos</h1>

![image](https://user-images.githubusercontent.com/55964635/140314240-4aec455d-d00d-4a96-a9ae-3d2f1fa05be4.png)



<details><summary>Programa Completo</summary>

### Alumno
```java
public class Alumno {
    private String nombre;
    private int dni;
    private int nroTemaAsignado;

    public Alumno(String nombre, int dni) { //Iniciar Alumno
        this.nombre = nombre;
        this.dni = dni;
        this.nroTemaAsignado = -1;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getDni() {
        return dni;
    }

    public void setDni(int dni) {
        this.dni = dni;
    }

    public int getNroTemaAsignado() {
        return nroTemaAsignado;
    }

    public void setNroTemaAsignado(int nroTemaAsignado) {
        this.nroTemaAsignado = nroTemaAsignado;
    }

    public String toString() {
        return nombre + ", dni " + dni + ", TemaAsignado " + nroTemaAsignado;
    }   
}
```

### Programa Principal
```java
public class FabianMartinezRinconParcial {

    public static void main(String[] args) {
        
        Fecha f1= new Fecha(2,4);   
        
        Alumno a1 = new Alumno("Juan",604);
        f1.agregarAlumno(a1,0);   
        Alumno a2 = new Alumno("Matias",306);
        f1.agregarAlumno(a2,0);
        Alumno a3 = new Alumno("Aaron",407);
        f1.agregarAlumno(a3,1); 
        Alumno a4 = new Alumno("Marian",347);
        f1.agregarAlumno(a4,1);
        Alumno a5 = new Alumno("luciano",816);
        f1.agregarAlumno(a5,0); 
        Alumno a6 = new Alumno("Sofia",287);
        f1.agregarAlumno(a6,0);
        f1.asignarTema();
        System.out.println(f1.toStringInscriptos(2));
    }
}

```

### Fecha
```java
public class Fecha {
    private Sala vectorSalas[];
    private int df;
    private int dl; 
    
    
    public Fecha(int n, int m){ //n = salas y m = alumnos x sala
        df = n;
        vectorSalas = new Sala[df];
        for(int i=0; i<n; i++) //Recorro las salas
            vectorSalas[i] = new Sala(m);     
    }    
    
    public void agregarAlumno(Alumno a,int x){ //Agregar fulanito a la sala x   
        vectorSalas[x].agregarAlumnoSala(a);   //Asumimos que x es valido y tenemos lugar para el      
    }

    
    public void asignarTema(){
        for (int i = 0; i < df; i++) {
            vectorSalas[i].asignarTema();         
        }    
    }
       
    public String toStringInscriptos(int t){ //Punto C
        String aux = "";
        System.out.println("Alumnos inscriptos con el tema: " + t);
        for(int i=0;i < df;i++){
            for(int j =0;j<vectorSalas[i].getDl();j++)
                if(vectorSalas[i].getNroTema(j) == t)   //Comparo con el tema "t"
                    aux = aux + vectorSalas[i].toStringAlumnos(j);
        }
        return aux;
    }
    
    
}
```

### Sala
```java
public class Sala {
    private Alumno vectorAlumnos[];
    private int dl;
    private int df;
    
    public Sala (int m){
        this.df = m; //Maximo de alumnos
        vectorAlumnos = new Alumno[df];
        dl = 0;           
    }
        
    
    public void agregarAlumnoSala(Alumno a){
        vectorAlumnos[dl] = a;
        dl++;     
    }
      
    
    public void asignarTema(){  
        GeneradorAleatorio.iniciar();
        int nro;
        for (int j = 0; j <dl ; j++) {
            nro = GeneradorAleatorio.generarInt(df); 
            vectorAlumnos[j].setNroTemaAsignado(nro);
        }   
        
    }
    
    
    public String toStringAlumnos(int n){
        String aux = "";
        aux = "\n" + vectorAlumnos[n];       
        return aux;
    }
    
    public int getDl(){
        return dl;
    }
    
    public int getNroTema(int n){
        int aux =0;
        aux =  vectorAlumnos[n].getNroTemaAsignado();       
        return aux;
    }
   
      
}
```

</details>

---

![image](https://user-images.githubusercontent.com/55964635/140591571-6aa7102a-59d9-437c-92d5-c6e804dade9d.png)

<details><summary>Programa Completo</summary>

### Estante
```java
public class Estante {
    private Libro [][] est;
    
    public Estante(){
        int i;
        int j;
        this.est = new Libro[5][3];
        for(i=0; i<5; i++){
            for(j=0; j<3; j++){
                this.est[i][j]= null;
            }
        }        
    }

    public Estante(int x, int y) {
        int i;
        int j;
        this.est = new Libro[x][y];
        for(i=0; i<x; i++){
            for(j=0; j<y; j++){
                this.est[i][j]= null;
            }
        }        
    }
    
    public void almacenar(Libro l,int i, int j){
        this.est[i][j]= l;
    }
    
    public Libro sacarLibro(int estante, int lugar){
        Libro aux= this.est[estante][lugar];
        this.est[estante][lugar]= null;
        return aux;
    }
    
    public int cantidadDeLibros(String name){
        int i;
        int j;
        int cantidad=0;
        for (i=0; i<5; i++){
            for(j=0; j<3; j++){
                if( (this.est[i][j] != null) && (this.est[i][j].getAutor().equals(name))){
                    cantidad++;
                }
            }
        }
        return cantidad;
    }
}

```

### Libro
```java
public class Libro {
    private String titulo;
    private String autor;
    private int peso;
    
    public Libro(){
        
    }

    public Libro(String titulo, String autor, int peso) {
        this.titulo = titulo;
        this.autor = autor;
        this.peso = peso;
    }

    public String getTitulo() {
        return titulo;
    }

    public String getAutor() {
        return autor;
    }

    public int getPeso() {
        return peso;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public void setAutor(String autor) {
        this.autor = autor;
    }

    public void setPeso(int peso) {
        this.peso = peso;
    }
    
    public String toString(){
       return "Se saco el libro con el Titulo "+this.getTitulo()+" Autor "+this.getAutor()+" Peso "+this.getPeso();
   }
}
```

### Matriz Devuelvo Un Libro
```java
public class MatrizDevuelvoUnLibro {
    public static void main(String[] args) {
        
        Estante e = new Estante();    
        
        int i=0;
        
        int j;
        
        int total=0;
        
              
        while((i<5) && (total < 3)){
            j=0;
            while ((j<3) && (total < 3)){
                Libro l= new Libro();
                System.out.println("Ingrese titulo");
                l.setTitulo(Lector.leerString());
                System.out.println("Ingrese autor ");
                l.setAutor(Lector.leerString());
                System.out.println("Ingrese peso");
                l.setPeso(Lector.leerInt());
                e.almacenar(l, i, j);   // 0,0   1,0    2,0   
                j++;
                total++;                
            }
            i++;
        }
       
        Libro aux;
        
        aux= e.sacarLibro(0, 1);
        
        System.out.println(aux);
        
        System.out.println("Cantida de libros de Borges "+e.cantidadDeLibros("BORGES"));
        
       
    }
    
}
```

### Programa Principal
```java
public class ParcialJu {
    public static void main(String[] args) {
    }   
}
```

</details>

---

![image](https://user-images.githubusercontent.com/55964635/140592529-e53df144-ebad-4531-be4f-1edb0fe54dad.png)

<details><summary>Programa Completo</summary>

### Agenda
```java
public class Agenda {
    private Paciente [][] turnos;

public Agenda() {
   int i;
   int j;
   this.turnos= new Paciente[5][6];
}
    
public void agendarPaciente (Paciente p, int dia, int hora){
    this.turnos[dia][hora]= p;
}

public void liberarTurno (String nombre){
    int i;
    int j;
    for(i=0; i<5; i++){
        for(j=0; j<6; j++){
          if ((this.turnos[i][j] != null) && (this.turnos[i][j].getNombre().equals(nombre))){
              this.turnos[i][j]=null;
          }          
        }
    }    
}

public boolean turnoAgendado(String nombre, int dia){
    int i=0;
    boolean tiene=false;
    while ((i<6) && !(tiene)){
      if ((this.turnos[dia][i] != null) && (this.turnos[i][dia].getNombre().equals(nombre))){
          tiene=true;
      }else {
          i++;
      }        
    }    
    return tiene;
}
}
```

### Ejer1
```java
public class Ejer1 {

    public static void main(String[] args) {
        
        int i;
        int horario;
        int dia;
        String nombre = new String();
        Agenda agenda =new Agenda();
          
        for (i=0; i<2; i++){
          System.out.println("ingrese dia");
          dia= Lector.leerInt();
          System.out.println("Ingrese hora");
          horario= Lector.leerInt();
          Paciente p= new Paciente();
          System.out.println("Ingrese nombre del paciente");
          p.setNombre(Lector.leerString());
          System.out.println("Ingrese si tiene obra social");
          p.setObraSocial(Lector.leerBoolean());
          System.out.println("Ingrese monto de sesion");
          p.setMonto(Lector.leerInt());
          agenda.agendarPaciente(p, dia,horario);
        }
        agenda.liberarTurno("JUAN");        
        if (agenda.turnoAgendado("CAMILA", 4)){
            System.out.println("Se libero el turno de camila");
        }else{
            System.out.println("Camila no tenia turnos");
        }            
    }    
}
```

### Paciente
```java
public class Paciente {
    private String nombre;
    private boolean obraSocial;
    private int monto;

    public Paciente() {
    }    
    
    public Paciente(String nombre, boolean obraSocial, int monto) {
        this.nombre = nombre;
        this.obraSocial = obraSocial;
        this.monto = monto;
    }

    public String getNombre() {
        return nombre;
    }

    public boolean isObraSocial() {
        return obraSocial;
    }

    public int getMonto() {
        return monto;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void setObraSocial(boolean obraSocial) {
        this.obraSocial = obraSocial;
    }

    public void setMonto(int monto) {
        this.monto = monto;
    }
}
```

### Parcial1
```java
public class Parcial1 {
    public static void main(String[] args) {
        // TODO code application logic here
    }
}
```

</details>

---

![image](https://user-images.githubusercontent.com/55964635/140609802-f27e0ac6-c3de-416f-9ed8-80a2ca1a239c.png)

<details><summary>Programa Completo</summary>

### Electronico
```java
public class Electronico extends Libro {
    private String formato;
    private double tamanio;
    
    public Electronico(){
    
    }

    public Electronico(String formato, double tamanio, String titulo, double precio, String[] autores) {
        super(titulo, precio, autores);
        this.formato = formato;
        this.tamanio = tamanio;
    }

    public String getFormato() {
        return this.formato;
    }

    public double getTamanio() {
        return this.tamanio;
    }

    public void setFormato(String formato) {
        this.formato = formato;
    }

    public void setTamanio(double tamanio) {
        this.tamanio = tamanio;
    }

    @Override
    public double precioFinal() {
        double preFinal = super.getPrecio()+((super.getPrecio()/100)*21)+ (this.getTamanio()*2.5);
        return preFinal;                        
    }

    @Override
    public String toString() {
        return super.toString() +  " precio final: " + this.precioFinal();
    }
}
```

### Impreso
```java
public class Impreso extends Libro{
    private boolean tapaDura;
    
    public Impreso() {
        
    }
    
    public Impreso(boolean tapaDura) {
        this.tapaDura = tapaDura;
    }

    public boolean isTapaDura() {
        return tapaDura;
    }

    public void setTapaDura(boolean tapaDura) {
        this.tapaDura = tapaDura;
    }

    @Override
    public double precioFinal() {
        double preFinal = super.getPrecio()+((super.getPrecio()/100)*21);
        return preFinal;
    }
    
    
    @Override
    public String toString() {
        return super.toString() +  " precio final: " + this.precioFinal();
    }
    
}
```

### Libro
```java
public abstract class Libro {
    private String titulo;
    private double precio;
    private int dimL = 0;
    private final int dimF = 8;
    private String [] autores;
    //Fabo
    public Libro(){
        setTitulo(titulo);
        setPrecio(precio);
        autores = new String[dimF];
        for (int i = 0; i < dimF; i++) {
            autores[i] = null;
       }
    }
    public Libro (String titulo, double precio, String autores[]){ 
        setTitulo(titulo);
        setPrecio(precio);
        autores = new String[dimF];
        for (int i = 0; i < dimF; i++) {
            autores[i] = null;
        }
    }
      
    public String getTitulo(){
        return titulo;
    }
    public double getPrecio(){
        return precio;
    } 
  	public int getDimL(){
        return dimL;
    }
    
    public void setTitulo(String UnTitulo){
        titulo = UnTitulo;
    }
    public void setPrecio(double UnPrecio){
        precio = UnPrecio;
    }
  
  	public void agregarNombre (String nombre){

            this.autores[dimL] = nombre;
            dimL++;
    }
  
  	public abstract double precioFinal ();

    @Override
    public String toString() {
        return  "Titulo: " + this.getTitulo() + " primer_autor: " + this.autores[0];
    }
}
```

### Programa Principal
```java
public class Parcial10 {

    public static void main(String[] args) {
        Electronico le = new Electronico();
        System.out.println("Ingrese titulo del libro: ");
        le.setTitulo(Lector.leerString());
        System.out.println("Ingrese precio del libro: ");
        le.setPrecio(Lector.leerDouble());
        System.out.println("Ingrese tapa del libro: ");
        le.setFormato(Lector.leerString());
        System.out.println("Ingrese tamaño: ");
        le.setTamanio(Lector.leerDouble());
        
        for (int i = 0; i < 3; i++) {
            System.out.println("Ingrese un autor");
            le.agregarNombre(Lector.leerString());  
        }
        System.out.println(le.toString());
        
        Impreso li = new Impreso();
        System.out.println("Ingrese titulo del libro: ");
        li.setTitulo(Lector.leerString());
        System.out.println("Ingrese precio del libro: ");
        li.setPrecio(Lector.leerDouble());
        System.out.println("Ingrese tapa del libro: ");
        li.setTapaDura(Lector.leerBoolean());

        for (int i = 0; i < 3; i++) {
            System.out.println("Ingrese un autor");
            li.agregarNombre(Lector.leerString());  
        }
        System.out.println(li.toString());
    }
}
```

</details>

---

![image](https://user-images.githubusercontent.com/55964635/140610154-075b66d3-8726-4811-99f9-a5bb7da22da9.png)

<details><summary>Programa Completo</summary>

### Alumno
```java
public class Alumno {
    
    private String nombre;
    private int dni;
    private int tema;
    
    public Alumno(String nombre, int dni){
        this.nombre = nombre;
        this.dni = dni;
        this.tema = -1;
    }
    
    public String getNombre(){
        return nombre;
    }
    
    public int getDni(){
        return dni;
    }
    
    public int getTema(){
        return tema;
    }
    
    public void setNombre(String nombre){
        this.nombre = nombre;
    } 
    
    public void setDni(int dni){
        this.dni = dni;
    }
    
    public void setTema(int tema){
        this.tema = tema;
    }
    
    public String toString(){
        return nombre + " " + dni;
    }
    
}
```

### Fecha
```java
public class Fecha {
    
    private Sala salas[];
    private int df;
    
    public Fecha(int n, int m){
        this.df = n;
        salas = new Sala[df];
        for(int i=0; i<df; i++)
            salas[i] = new Sala(m);
    }
    
    public void AgregarAlumno(Alumno a, int x){
        salas[x].AgregarAlumno(a);
    }
    
    public void AsignarTema(){
        int j;
        for(int i=0; i<df; i++){
            salas[i].asignarTema();
        }
    }
    
    public String toString(int t){
        String aux="";
        for(int i=0; i<df; i++){
            aux = aux + "\n" + salas[i].toString(t);
        }
        return aux;
    }
    
}
```

### Representar Fechas
```java
public class representarfechas {
    
    public static void main(String[] args) {
        
        Fecha f = new Fecha(2,4);
        
        Alumno a1 = new Alumno("Juan",604);
        f.AgregarAlumno(a1,1);
        
        Alumno a2 = new Alumno("Sofia",287);
        f.AgregarAlumno(a2,1);
        
        Alumno a3 = new Alumno("Mariangeles",407);
        f.AgregarAlumno(a3,0);
        
        Alumno a4 = new Alumno("Lucas",324);
        f.AgregarAlumno(a4,0);
        
        Alumno a5 = new Alumno("Luciano",285);
        f.AgregarAlumno(a5,1);
        
        Alumno a6 = new Alumno("Natalia",923);
        f.AgregarAlumno(a6,0);
        
        f.AsignarTema();
        
        int nroTema = 2;
        System.out.println("Alumnos con el tema " + nroTema + " " + f.toString(nroTema));
        
    }
    
}
```

### Sala
```java
public class Sala {
    
    private Alumno alumnos[];
    private int df;
    private int dl;
    
    public Sala(int m){
        this.df = m;
        this.dl = 0;
        alumnos = new Alumno[df];
    }
    
    public void AgregarAlumno(Alumno a){
        alumnos[dl] = a;
        dl++;
    }
    
    public int getCant(){
        return dl;
    }
    
    public void asignarTema(){
        GeneradorAleatorio.iniciar();
        for(int i=0; i<dl; i++)
            alumnos[i].setTema(GeneradorAleatorio.generarInt(df));
    }
    
    public String toString(int t){
        String aux="";
        for(int i=0; i<dl; i++){
            if(alumnos[i].getTema() == t)
                aux = aux + alumnos[i] + " ";
        }
        return aux;
    }
}
```

</details>

---
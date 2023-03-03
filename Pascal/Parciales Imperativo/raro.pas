{11)Un psicólogo necesita un sistema para administrar a sus pacientes. 
De cada paciente registra:
dni,
cód. de paciente,
obra social (1: ioma 2: pami 3: osde 4: galeno 5: no tiene) 
y costo abonado por sesión. 

Implemente un programa que:
a) Genere un ABB ordenado por dni. Para ello, genere información hasta el paciente con
dni 0.

A partir del ABB, realice módulos (uno por inciso) para:

b) Generar una estructura con dni y cód de paciente de los pacientes de ioma, ordenados
por dni descendente.

c) Dado un dni, modificar la obra social de dicho paciente a una recibida. Considere que el
paciente puede no existir.

NOTA: Realice el programa principal que invoque a los módulos desarrollados.
}

program once;
type
 rango= 1..5;

pacientes=record
  dni:integer;
  cod:integer;
  obra:rango;
  costo:real;
end;  

pacientes_lista=record
  paciente_dni:integer;
  paciente_cod:integer;
end;

lista=^nodox;

nodox=record
  elemento:pacientes_lista;
  sig:lista;
end;  

arbol=^nodo;

nodo=record
  elem:pacientes;
  HD:arbol;  //hijo derecho
  HI:arbol;  //hijo izquierdo
end; 


//------------------------- PROCESOS --------------------------------------

Procedure crear(var A:arbol; dato:pacientes);
Begin
    if (A = nil) then
    begin
        new(A);
        A^.elem:= dato; 
        A^.HI:= nil; 
        A^.HD:= nil;
    end
    else
        if (dato.dni < A^.elem.dni) then begin
            crear(A^.HI,dato);
        end    
        else begin
           if(dato.dni> A^.elem.dni)then // condicion para no guardar mismo dato dos veces.
              crear(A^.HD,dato);  
        end;      
end;

//-------------------------------------------------------------------------------
procedure leer_paciente (var p:pacientes);
begin
  p.dni:=random(10);
  if (p.dni<>0)then begin
    p.cod:=random(6);
    p.obra:=random(6);
    p.costo:=random(10);   
  end;
end;

//-------------------------------------------------------------------------------

procedure CargarArbol(var abb:arbol);
var
  p:pacientes;
begin
    leer_paciente(p);
    while (p.dni<>0)do
    begin
        crear(abb,p);
        leer_paciente(p);
    end;
end;

//----------------------------------------------------------------------------------

Procedure enOrden_arbol ( af: arbol );
begin //Input 1,22,3,44,5,6,7,2,0
    if ( af<> nil ) then begin
        enOrden_arbol (af^.HI);
        write (af^.elem.dni,'|');
        enOrden_arbol(af^.HD);
    end;
end;//1,2,3,5,6,7,22,44

//---------------------------------------------------------------------------------
procedure cargar_pl( var paciente:pacientes_lista;dato:pacientes);
begin
  paciente.paciente_dni:= dato.dni;
  paciente.paciente_cod:= dato.cod;
end;

//----------------------------------------------------------------------------------

procedure crear_lista_adelante (var l:lista ;dato:pacientes);
var
 p_l:pacientes_lista;
 nue:lista;
begin
  cargar_pl(p_l,dato);
  new(nue);  
  nue^.elemento:=p_l;  
  nue^.sig:=l;  
  l:=nue;
end; 


//---------------------------------------------------------------------------
Procedure B (abb:arbol; var l:lista); // recorro de mayor a menor en abb.
begin 
    if ( abb<> nil ) then begin
        B(abb^.HD,l);
        if(abb^.elem.obra=1)then begin
          crear_lista_adelante(l,abb^.elem);   
        end;
        B(abb^.HI,l);
    end;
end;

//--------------------------------------------------------------
Procedure imprimir_lista (l:lista);
Begin
    while(l <> nil) do begin
      write(l^.elemento.paciente_dni,'|');
      l:=l^.sig;
    end;
end;

//--------------------------------------------------------------
procedure C (var a:arbol; num_dni:integer; num_obra:integer;var ok:boolean);
begin  
    If (a = nil) then begin
      ok:= false;
    end  
    else begin
      If (num_dni = a^.elem.dni) then begin  // el dato es igual al elemento donde estoy, lo encontro.
        a^.elem.obra:=num_obra;
        ok:=true;
      end  
      else begin      // si no buscar por izq o derecha ,menor o mayor ,hasta encontrar o fin .
        If (num_dni < a^.elem.dni) then begin
          C (a^.Hi,num_dni,num_obra,ok); // se va a buscar por el lado zquierdo (menor) hasta encontrar o nil.
        end    
        else begin
           C (a^.Hd,num_dni,num_obra,ok);  // se va a buscar por el lado derecho (mayor) hasta encontrar o nil.
        end;   
      end;        
    end;

 end; 
  
//-------------PROGRAMA PRINCIPAL ------------------------------
var
  a:arbol;
  l:lista;
  num_dni:integer;
  num_obra:rango;
  ok:boolean;
begin  
  randomize;
  a:=nil;
  l:=nil;
  cargarArbol(a);
  writeln('ABB:');
  enOrden_arbol(a); //solo para probar orden de dni.
  writeln('');
  B(a,l);
  writeln('LISTA:');
  imprimir_lista(l); // prueba para ver orden de dni.
  writeln('');
  num_dni:=random(10);
  num_obra:=1+random(5);
  ok:=false;
  C(a,num_dni,num_obra,ok);
  if(ok)then begin //EL MODULO C NO FUNCIONA EL DNI EXISTE Y DICE QUE NO . 
    writeln('El numero de obra del paciente con dni: ',num_dni,' se modifico con exito.');
  end  
  else begin
    writeln('El dni: ',num_dni ,' no se encontro.');
  end;
end.  
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
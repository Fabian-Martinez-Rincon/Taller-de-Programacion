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
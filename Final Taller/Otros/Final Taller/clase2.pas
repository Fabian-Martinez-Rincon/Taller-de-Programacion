program clase2;
type
  lista = ^nodo;
  nodo = record
    dato:integer;
    sig:lista;
  end;

  arbol = ^nodo2;
  nodo2 = record
    dato:integer;
    HI:arbol;
    HD:arbol;
  end;
procedure agregarAtras(var l,ult:lista;dato:Integer);
var
  nue:lista;
begin
  New(nue);
  nue^.dato:=dato;
  nue^.sig:=nil;
  if (l<>nil) then
    ult^.sig:=nue
  else
    l:=nue;
  ult:=nue;
end;
procedure cargarLista(var l:lista);
var
  dato:integer;
  ult:lista;
begin
  readln(dato);
  while (dato <> -1) do
  begin
    agregarAtras(l,ult,dato);
    readln(dato);
  end;
end;
procedure imprimirLista(l:lista);
begin
  if l <> nil then
  begin
    WriteLn(l^.dato);
    imprimirLista(l^.sig);
  end;
end;
//____________________________________________
procedure crearArbol(var abb:arbol; dato:integer);
begin
  if (abb = nil) then
  begin
    new(abb);
    abb^.dato:=dato;
    abb^.HI:=nil;
    abb^.HD:=nil;
  end
  else
    if (abb^.dato > dato) then 
      crearArbol(abb^.HI,dato)
    else
      crearArbol(abb^.HD,dato)
end;

procedure cargarArbol(var abb:arbol);
var
  dato:integer;
begin
  readln(dato);
  while dato <> -1 do
  begin
    crearArbol(abb,dato);
    readln(dato);
  end;
end;
//____________________________________________
var
  l:lista;
  abb:arbol;
begin
  //cargarLista(l);
  //imprimirLista(l);
  abb:=Nil;
  cargarArbol(abb);
  WriteLn('Codigo');
end.
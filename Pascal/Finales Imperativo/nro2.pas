{Una obra social dispone de un árbol binario de búsqueda con la información de sus
afiliados. De cada afiliado se conoce: Número de afiliado, Nro de CUIL, Plan (1..10) y año
de ingreso a la obra social. El árbol se encuentra ordenado por número de afiliado. Se
solicita:
Implementar un módulo que reciba el árbol de afiliados, Nro de CUIL Num1, Nro de CUIL
Num2 y un número de Plan, y retorne un vector ordenado por Nro de CUIL del afiliado. El
vector debe contener el número de afiliado y CUIL de aquellos afiliados cuyo Nro de CUIL
se encuentra comprendido entre Num1 y Num2 (siendo Num1 menor que Num2) y el Plan
se corresponda con el recibido por parámetro. Por norma de la obra social, cada Plan puede
contar con a lo sumo 250 afiliados.}

program nro2;
const
  DIMF = 250;
  DIMF2 = 10;
type
  rangoPlan = 1..DIMF2;
  afiliado = record
    nro:integer;
    cuil:integer;
    plan:rangoPlan;
    anioObraSocial:integer;
  end;

  arbol = ^nodo;
  nodo = record
    HI :arbol;
    HD : arbol;
    dato:afiliado;
  end;
  datoVector = record
    nroAfi:integer;
    cuil:integer;
  end;

  vectorPlan = array [1..DIMF] of datoVector;
  vectorLogico = array [1..DIMF2] of integer; //Para las dimensiones logicas
  vector = array [1..DIMF2] of vectorPlan;

procedure cargarArbol(var abb:arbol);begin end; //se dispone}

procedure agregarAlVector(afi:afiliado; var v:vectorPlan; var dimL:integer);
begin
  if dimL < DIMF then
  begin
      dimL:=dimL+1;
      v[dimL].nroAfi:=afi.nro;
      v[dimL].cuil:=afi.cuil;
  end;
end;

procedure modulo1(abb:arbol; num1:integer;num2:Integer; plan:rangoPlan; var v:vector;var vl:vectorLogico);
begin
  if (abb <> nil) then
  begin
    modulo1(abb^.HI,num1,num2,plan, v, vl);
    if plan = abb^.dato.plan then
      agregarAlVector(abb^.dato,v[plan],vl[plan]);
    modulo1(abb^.HD,num1,num2,plan, v, vl);
  end
  else
    seleccion(v[plan],vl[plan]);
end;
procedure inicializarVector(var vl:vectorLogico);
var
  i:integer;
begin
  for i:=1 to DIMF do
  begin
    vl[i] := 0;
  end;
end;
var
  abb : arbol;
  vl:vectorLogico;
  num1,num2:integer;
  planBuscar:rangoPlan;
  v:vector;
begin
  cargarArbol(abb); //Se dispone
  inicializarVector(vl);
  writeln('Funcionado');
  num1:=1;
  num2:=10;
  planBuscar:=4;
  modulo1(abb,num1,num2,planBuscar,v,vl);
end.
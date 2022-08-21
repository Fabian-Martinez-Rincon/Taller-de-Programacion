{
13) Ticketek dispone de un vector desordenado con 10.000 reservas. De cada reserva se 
Tiene DNI del cliente, código de evento y cantidad de entradas.

Además, dispone de un árbol de eventos. De cada evento se tiene código y stock de entradas. El árbol esta ordenado por código de evento.

Implemente un programa con:

a) Un módulo que ordene, por código de evento, los elementos del vector de reservas.
 Es necesario este ordenamiento para procesar con mayor eficiencia la información.
 De las reservas en el siguiente inciso.

b) Un módulo que recibe un vector de reservas ordenado y un árbol de eventos. Recorrer el vector totalizando las reservas por código de evento y actualizando el stock de entradas en el árbol de eventos.

}
program imperativo_13_2;
const
  dimf=35; //10.000 reservas 
type

  evento=record
    dni:integer;
    cod:integer;
    cant_entradas:Integer;
  end;

  vector= array[1..dimf] of evento;

  evento_a=record
    cod:integer;
    stock:integer;
  end;  

  arbol =^nodo2;
  nodo2 = record
    dato:evento_a;
    HI: arbol;
    HD: arbol;
  end;

//PROCESOS

//----------- CREAR VECTOR -------------------------------//

procedure leer(var e:evento);
begin
  e.dni:=random(50)+1;
  e.cod:=random(50)+1;
  e.cant_entradas:=random(50)+1;
end;

procedure crear_vec (var v:vector);
var
  i:integer;
  e:evento;
begin
  for i := 1 to dimf do begin
    leer(e);
    v[i]:=e;
  end;
end;

//----------- CREAR VECTOR -------------------------------//


//------------CREAR ARBOL (SIN ELEMENTOS REPETIDOS)-----------------//

Procedure crear_arbol (var a:arbol; x:evento_a); 
begin
  if (a=nil)then begin  
    new(a);
    a^.dato:= x;      
    a^.HD:=nil;
    a^.HI:=nil;
  end
  else begin 
    if (x.cod < a^.dato.cod)then begin  // campo= por que campo se va a ordenanr el arbol binario
      crear_arbol (a^.HI,x);     
    end
    else begin                   
      if(x.cod > a^.dato.cod)then begin    // CONDICION para que no se repitan dato en el arbol
        crear_arbol (a^.HD,x);   
      end;  
    end;
  end;  // end del repetidos
end;



//LEER INFO Y CARGARLA EN UN ARBOL 

procedure leer_info(var x:evento_a);
begin
  x.cod:=random(40);
  if (x.cod <> 14)then begin
    x.stock:=random(300)+1;
  end;
end;


procedure crear_abb(var a:arbol);
var
    x:evento_a;
begin
    leer_info(x);
    while (x.cod<>14)do  // corta cuando ingresa codigo 14
    begin
        crear_arbol(a,x);
        leer_info(x);
    end;
end;

//----------- FIN CREAR ARBOL (SIN ELEMENTOS REPETIDOS)-----------------//

//----------- IMPRIMIR VECTOR ORDENADO POR COD  ----------------//

procedure imprimir_vector (v:vector);
var
  i:integer;
begin
  WriteLn;
  Writeln('VECTOR ORDENADO POR CODIGO:');
  WriteLn;
  for i := 1 to dimf do begin
     writeln ('COD: ',V[i].cod,'| DNI:',V[i].dni,'| CANTIDAD ENTRADAS:',V[i].cant_entradas);
  end;
end;

//----------- FIN DE IMPRIMIR VECTOR ORDENADO POR COD ----------//

//---------------IMPRIMIR ARBOL ORDENADO POR COD --------------//

Procedure enOrden ( a : arbol );begin 
    if ( a<> nil ) then begin   
        enOrden (a^.HI);
        writeln ('COD: ',a^.dato.cod,'| STOCK:',a^.dato.stock);
        enOrden (a^.HD);
    end;
end;

//------------- FIN DE IMPRIMIR ARBOL ORDENADO POR COD---------//

//----------------- ORDENAR VECTOR ---------------------//
procedure ordenar_vector (var v :vector); 
 var
  i:integer;
  j:integer;
  actual:evento;
  begin
    for i := 2 to dimf do begin 
       actual:=v[i];  
       j:=i-1;     
     while (j>0) and (v[j].cod > actual.cod) do begin     // el campo por el que ordenemos  xxx > actual (menor a mayor) ASCENDENTE >
       v[j+1]:=v[j];                                                                          // xxx < actual (mayor a menor)  DECENDENTE <
       j:=j-1;
     end;
     v[j+1]:=actual;
   end;              
 end;

//------------- FIN DE ORDENADAR VECTOR -----------------//

//----------------- VEC Y ARBOL -----------------------//

procedure Buscar (var a:arbol; cod:integer; var ok:boolean; nuevo_dato:integer ); // ok : para chequear en pp
begin
  if (a=nil) then  
    ok:=false
  else
    if (cod= a^.dato.cod) then begin
       ok:=true;
       a^.dato.stock :=  a^.dato.stock -nuevo_dato;
    end
    else begin
      if (cod < a^.dato.cod) then
          Buscar(a^.HI ,cod,ok,nuevo_dato)
      else
          Buscar(a^.HD ,cod,ok,nuevo_dato);
    end;
 end; 

procedure vec_arbol(var a : arbol ; v:vector);
var
  ok:boolean;
  pos:integer;
  contador:integer;
  actual:integer;
begin
  pos:=1;
  while(pos <= dimf)do begin
    actual:= v[pos].cod;
    contador:=0;
    ok:=false;
    while (pos <= dimf) and (actual = v[pos].cod)do begin
      contador:= contador + v[pos].cant_entradas;
      pos:=pos+1;
    end; 
    Buscar(a,actual,ok,contador);
    if(ok)then
      WriteLn('se modifico con exito el stock del arbol para evento: ',actual)
    else
      WriteLn('No se encontro el codigo de evento:',actual)
  end;
end;


//-------------------- FIN VEC Y ARBOL ---------------//


//PROGRAMA PRINCIPAL
var
  v:vector;
  a:arbol;
begin
  randomize;
  a:=nil;
  crear_vec(v); // SE DISPONE
  crear_abb(a); // SE DISPONE
  ordenar_vector(v); //MODULO A
  imprimir_vector(v); // PRUEBA
  WriteLn;
  Writeln('ARBOL ORDENADO POR CODIGO:');
  WriteLn;
  enOrden(a);  //PRUEBA
  WriteLn;
  vec_arbol(a,v);//MODULO B
end.
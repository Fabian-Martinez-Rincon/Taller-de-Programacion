{Un cine posee la lista de películas que proyectará durante el mes de octubre. De cada
película se conoce: código de película, código de género (1: acción, 2: aventura, 3: drama,
4: suspenso, 5: comedia, 6: bélica, 7: documental y 8: terror) y puntaje promedio otorgado
por las críticas.
Implementar un programa que contenga:
a. Un módulo que lea los datos de películas y los almacene ordenados por código de
película y agrupados por código de género, en una estructura de datos adecuada. La
lectura finaliza cuando se lee el código de película -1.
b. Un módulo que reciba la estructura generada en el punto a y retorne una
estructura de datos donde estén todas las películas almacenadas ordenadas por código de
película.}

program ejercicio11;

Type
  
  rPelicula = record
    codPelicula: integer;
    codGenero: 1..8;
    puntaje: real;
  end;

  lista = ^nodo;
  nodo = record
     dato:rPelicula;
     sig: lista;
  end;


 vectorGenero = array [1..8] of lista;



Procedure InicializarVectorLista (VAR v:vectorGenero);
Var
  i: integer;
begin
  For i:=  1 to 8 do
    v[i]:= nil;
end; 



{===================== Comienzo Inciso A =====================}

Procedure Leer (VAR p:rPelicula);
begin
  with p do begin
    writeln('Ingrese el codigo de pelicula: ');
    codPelicula:= (random(11))-1;
    If (codPelicula <> -1) then begin
      writeln('Ingrese codigo de Genero: ');
      codGenero:= random(8)+1;
      writeln('Ingrese puntaje promedio de la pelicula: ');
      puntaje:= random(11);
    end;
  end;
end;



Procedure insertarOrdenado (VAR L:lista; p:rPelicula);
Var
  nuevo:lista;
  act,ant: lista;  
begin
  new(nuevo);
  nuevo^.dato:= p;
  act:= L;
  ant:= L;
  While (act <> nil) AND (p.codPelicula > act^.dato.codPelicula) do begin
     ant:= act;
     act:= act^.sig;
  end;
  If (act = ant) then
    L:= nuevo
  Else
    ant^.sig:= nuevo;
 nuevo^.sig:= act;
end;



Procedure CargarLista (VAR v:vectorGenero);
Var
  p: rPelicula;
begin
  Leer(p);
  While (p.codPelicula <> -1) do begin
    insertarOrdenado (v[p.codGenero],p);
    writeln;
    Leer(p);
  end;
end;

{===================== Fin Inciso A =====================}


Procedure Imprimir (v:vectorGenero);
Var
  i: integer;
begin
  For i:= 1 to 8 do begin
     writeln('-->> El genero ',i,': ');
    While (v[i] <> nil) do begin
      writeln('Codigo de Pelicula: ',v[i]^.dato.codPelicula);
      writeln('Puntaje promedio: ',v[i]^.dato.puntaje:2:2);
      writeln;
      v[i]:= v[i]^.sig;
    end;
    writeln('-------------------------');
  end;
end;



{===================== Comienzo Inciso B =====================}


procedure AgregarAtras (var L:lista; p:rPelicula);
var 
 act: lista;
 nue: lista;
begin 
 new (nue);
 nue^.dato:= p;
 nue^.sig := nil;
 if (L <> nil) then begin
     act := L;
     while  (act^.sig <> NIL ) do 
         act := act^.sig ;
     act^.sig := nue ;
    end
 else
    L:= nue;
end;

Procedure minimo (VAR v:vectorGenero; VAR min:rPelicula);
Var
  i,PosMin:integer;
begin
  min.codPelicula:= 9999;
  PosMin:= 0;
  For i:= 1 to 8 do begin
    If (v[i] <> nil) AND (v[i]^.dato.codPelicula <= min.codPelicula) then begin
       min:= v[i]^.dato;
       PosMin:= i;
    end;
  end;
  iF (PosMin <> 0) then;
    //min := v[PosMin]^.dato; 
    v[PosMin]:= v[PosMin]^.sig;
end;



Procedure merge (v:vectorGenero; var listaOrdenada:lista);
var
  min: rPelicula;  
begin
  minimo(v,min);  
  while(min.codPelicula <> 9999) do begin  
    WriteLn('Codigo: ', min.codPelicula);
    AgregarAtras(listaOrdenada,min);  
    minimo(v,min); 
  end;
  writeln( ' ============== se terminaron los elementos en las listas =====================')
end;

{===================== Fin Inciso B =====================}




Procedure ImprimirNuevaLista (L:lista);
begin
  While (L <> nil) do begin
    writeln('CODIGO DE PELICULA: ',L^.dato.codPelicula);
    writeln;
    L:= L^.sig;
  end;
end;



{=============== PROGRAMA PRINCIPAL ===============}

VAR
   v:vectorGenero;
   listaOrdenada: lista;
Begin
   listaOrdenada:= nil;
   randomize;
   InicializarVectorLista (v);
   CargarLista (v);
   Imprimir (v);   
   merge (v,listaOrdenada);
   ImprimirNuevaLista (listaOrdenada);
End.
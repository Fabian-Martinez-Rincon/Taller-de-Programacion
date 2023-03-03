{Se lee información acerca de las ventas de productos realizadas en las sucursales de
una empresa. De cada venta se conoce fecha, código de producto, cantidad vendida y monto total de la
venta. La lectura finaliza cuando se lee el código de producto -1, el cual no se procesa. Implementar un
programa para que a partir de la información leída, resuelva los siguientes ítems:

a) Generar un árbol binario de búsqueda ordenado por código de producto, donde cada
nodo contenga el código del producto y la cantidad total vendida. El código de producto no
puede repetirse en el árbol.

b) Realizar un módulo que reciba el árbol generado en a. y una cantidad, y retorne la
cantidad de códigos de producto cuya cantidad total vendida superan la cantidad recibida.
Nota: La información se lee en forma desordenada. Puede existir mas de una venta para
un mismo código de producto.}

program ejer38;
Type
  r_venta = record
    codProd:integer;
    fecha:string;
    cantVendida:integer;
    montoTotal:integer;
  end;

  lista = ^nodo;
  nodo = record
    dato:r_venta;
    sig:lista;
  end;

  r_unincoCod = record
    codigo:integer;
    total:integer;
  end;

  arbol= ^nodoA;
  nodoA = record
    dato: r_unincoCod;
    Hi:arbol;
    Hd:arbol;
  end;


{================= Comienzo Inciso A =================}
  procedure Leer (VAR rv:r_venta);
  begin
    with rv do begin
      writeln('Ingrese codigo de producto');
      readln(codProd);
      if (codProd <> 0) then begin
        writeln('Ingrese fecha de compra separando con /');
        readln(fecha);
        writeln('Ingrese cantidad vendida');
        readln(cantVendida);
        writeln('Ingrese monto de la venta');
        readln(montoTotal);
      end;
    end;
  end;

Procedure InsertarOrdenado (VAR L:lista; rv:r_venta);
Var
  nuevo:lista;
  act,ant:lista;
begin
   new(nuevo);
   nuevo^.dato:= rv;
   act:= L;
   ant:= L;
   While (act <> nil) AND (rv.codProd > act^.dato.codProd) do begin
      ant:= act;
      act:= act^.sig;
   end;
   If (act = ant) then
     L:= nuevo
   Else
     ant^.sig:= nuevo;
   nuevo^.sig:= act;   
end;

procedure cargarLista (VAR L:lista);
VAR
  rv:r_venta;
begin
  Leer(rv);
  while (rv.codProd <> 0) do begin
    InsertarOrdenado(L,rv);
    writeln;
    Leer(rv);
  end;
end;
  
Procedure Crear (VAR a:arbol; VAR actual,valuacion:integer);
begin
  If (a = nil) then begin
    new(a);
    a^.dato.codigo:= actual;
    a^.dato.total:= valuacion;
    a^.Hi:= nil;
    a^.Hd:= nil;
  end
  Else
    If (actual < a^.dato.codigo) then
      Crear (a^.Hi,actual,valuacion)
    Else      //ACA ES CUANDO TENES QUE TENER OTRA CONDICION PARA QUE NO TE APAREZCA EL CODIGO REPETIDO EN EL ARBOL
        if (actual = a^.dato.codigo) then 
            Crear (a^.Hd,actual,valuacion);   //DEBERIAS CONTROLAR QUE SI SE REPITE EL CODIGO, SUME EL VALOR DE LA VENTA 
end;

procedure recorrer (L:lista; VAR a:arbol);
var
  actual:integer;
  valuacion:integer;
begin
  while (L <> nil) do begin
    actual:= L^.dato.codProd;
    valuacion:=0;
    while (L <> nil) AND (L^.dato.codProd = actual) do begin
      valuacion:= valuacion + L^.dato.montoTotal;
      L:= L^.sig;
    end;
    Crear(a,actual,valuacion);
  end;
end;
{================= Fin Inciso A =================}

{================= Comienzo Inciso B =================}
procedure superar (a:arbol; cantidadV:integer; VAR cantSuperan:integer);
begin
    if (a<>nil) then begin
    superar(a^.HI,cantidadV,cantSuperan);
    superar(a^.HD,cantidadV,cantSuperan);
    if(a^.dato.total > cantidadV)then
      cantSuperan:= cantSuperan + 1;
  end;
end;
{================= Comienzo Inciso B =================}

{================= PROGRAMA PRINCIPAL =================}
VAR
  L:lista;
  a:arbol;
  cantidadV,cantSuperan:integer;
begin
  a:=nil;
  L:=nil;
  cantSuperan:=0;
  cargarLista(L); //NO HACE FALTA CREAR LA LISTA, FIJATE QUE LA INFO LA GUARDAS SOLO EN EL ARBOL. TENES QUE IR LEYENDO Y AGREGANDO EN EL ARBOL
  recorrer(L,a);
  writeln('Ingrese cantidad de ventas: ');
  readln(cantidadV);
  superar(a,cantidadV,cantSuperan);
End.
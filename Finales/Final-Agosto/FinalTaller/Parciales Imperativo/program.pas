//Un supermercado automatizará el sistema de premios para clientes habituales.
//Por ello, necesita registrar en una estructura la información de los clientes:
//código de cliente,
//DNI,
//puntos acumulados en compras.

//Esta estructura debe ser eficiente para la búsqueda por código de cliente. ARBOL

//1- Realice un módulo que cargue la estructura de clientes, leyendo la información de los mismos hasta ingresar DNI 0. CORTE DNI CERO

//2- Realice un módulo que reciba la estructura generada en 1), el código de un cliente y los puntos obtenidos en la compra del día. 
//Verifique la existencia del cliente en la estructura y en ese caso actualice sus puntos acumulados con los obtenidos en la compra del día.


//3- Realice un módulo que informe los códigos de los clientes cuyos puntos acumulados se encuentran en un rango. Los valores del rango se reciben.
//Nota: Realice el programa principal que invoque a los módulos realizados e informe lo pedido.

program Parcial;

  type
    cliente = record
      codigo:integer;
      dni:integer;
      puntos:integer;
    end;
    
    arbol= ^nodo;
    nodo = record
      dato: cliente;
      HI: arbol;
      HD: arbol;
    End;
    

  procedure crear_arbol (var a:arbol; x:cliente); 
  begin
    if (a=nil)then begin  
      new(a);
      a^.dato:= x;      
      a^.HD:=nil;
      a^.HI:=nil;
    end
    else  
      if (x.codigo < a^.dato.codigo) then   //campo= por que campo se va a ordenanr el arbol binario
        crear_arbol (a^.HI,x)  
      else                  
        if(x.codigo > a^.dato.codigo)then    //CONDICION para que no se repitan dato en el arbol
          crear_arbol (a^.HD,x);             // end del repetidos      
  end;

  
  procedure Leer (var c:cliente);
  begin
  	read(c.codigo);
    read(c.dni);
    read(c.puntos);
  end;
  // programa principal
  procedure cargarArbol(var a:arbol);
  var
  	c:cliente;
  begin
    Leer(c);
    while (c.dni <>0)do begin
      crear_arbol(a,c);
      Leer(c);
    end;  
  end;
  
procedure Buscar (var a:arbol; cod: integer; nuevo_dato:integer; var ok:boolean ); // ok : para chequear en pp
begin
  if (a=nil) then  
    ok:=false
  else
    if (cod= a^.dato.codigo) then begin
       ok:=true;
       a^.dato.puntos := a^.dato.puntos+ nuevo_dato;
    end
    else begin
      if (cod < a^.dato.codigo) then
          Buscar(a^.HI ,cod,nuevo_dato,ok)
      else
          Buscar(a^.HD ,cod,nuevo_dato,ok);
    end;
 end;  
 
procedure enOrden(a:arbol ; inf:integer; sup:integer);
begin
  if( a <> nil ) then begin
    enOrden (a^.HI,inf,sup);
    if(a^.dato.puntos >= inf) then begin
      if(a^.dato.puntos <= sup)then begin
         writeln('{codigo:}', a^.dato.codigo);  
      end;     
    end;           
    enOrden (a^.HD,inf,sup);
 end;
end; 
  
  
  var
    a:arbol;
    cod:integer;
    puntos_dias:integer;
    ok:boolean;
  begin
    a:=nil;
    cargarArbol(a);
    read(cod); // codigo del cliente
    read(puntos_dias); // puntos del dia 
    ok:=false;
    Buscar (a,cod,puntos_dias,ok);
    if(ok)then
     	write('Se actualizo');
    enOrden(a,3,7);
  end.

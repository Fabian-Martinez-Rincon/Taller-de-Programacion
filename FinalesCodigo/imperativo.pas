program imperativo;
type
    cadena = string[30];

    pedido = record
        num: integer;
        dirRetiro: cadena;
        dirEntrega: cadena;
        monto: integer;
    end;

    pedidoArbol = record
        num:integer;
        cantPedidos:integer;
        dirEntrega:cadena;
        montoTotal: integer ;
    end;

    arbol = ^nodo;
    nodo = record
        dato: pedidoArbol; 
        hi: arbol;
        hd: arbol;
    end;
  
procedure modificarNodo(var a:arbol; p:pedido);
begin
    a^.dato.cantPedidos:= a^.dato.cantPedidos+1;
    a^.dato.montoTotal:= a^.dato.montoTotal+ p.monto;
end;
  
procedure Crear (var a :arbol; p:pedido);
begin
    if(a = nil)then begin 
        new(a);
        a^.dato.num:= p.num;
        a^.dato.cantPedidos:= 1;
        a^.dato.dirEntrega:= p.dirEntrega;
        a^.dato.montoTotal:= p.monto;
        a^.hi:=nil;
        a^.hd:=nil;
    end
    else 
        if( a^.dato.num < p.num )then 
            Crear(a^.hd,p)
        else 
            if( a^.dato.num> p.num )then 
                Crear(a^.hi,p)
            else 
                modificarNodo(a,p)
end;

procedure leerPedido (var ped:pedido);
begin
    writeln ('ingrese direccion entrega: ');    readln(ped.dirEntrega);
    if(ped.dirEntrega <> 'zzz')then begin
        writeln ('ingrese num: ');              readln(ped.num);
        writeln ('ingrese direccion retiro: '); readln(ped.dirRetiro);
        writeln ('ingrese monto: ');            readln(ped.monto);
    end;
end;  
     
procedure cargarArbol (var a:arbol);
var
    ped: pedido;
begin
    leerPedido (ped);
    while(ped.dirEntrega <> 'zzz')do begin
        Crear(a,ped);
        leerPedido(ped);
    end;
end;
      
procedure contarRepartidor(a:arbol ; var cantidad:integer; monto1, monto2:integer);
begin
    if (a <> nil)then begin 
        contarRepartidor(a^.hi, cantidad, monto1, monto2);
        if(a^.dato.montoTotal > monto1 ) and (a^.dato.montoTotal < monto2)then 
            cantidad:=cantidad+1;
        contarRepartidor(a^.hd, cantidad,monto1,monto2); 
    end;
end;  
 
procedure imprimirDato( a:arbol);
begin
    writeln('numero de repartidor: ', a^.dato.num);
    WriteLn('cantidad de Pedidos: ', a^.dato.cantPedidos);
    WriteLn('monto total: ', a^.dato.montoTotal);
    WriteLn('direcion entrega: ', a^.dato.dirEntrega);
end;
 
procedure entre_rango (a:arbol; inf,sup:integer); // int = menor sup = mayor   3 al 6
begin
    if (a <> nil)then begin
        entre_rango(a^.hi,inf,sup);
        if (a^.dato.num > inf) and (a^.dato.num < sup) then 
        begin
            imprimirDato(a);
            entre_rango(a^.hi,inf,sup);
            entre_rango(a^.hd,inf,sup);
        end;
        entre_rango(a^.hd,inf,sup);
    end; 
end;  

var
    a:arbol;
    cantidad_total:integer;
    monto1:integer;
    monto2:integer;
    repartidor1:integer;
    repartidor2:integer;
begin
    randomize;
    a:=nil;
    cargarArbol(a); 
    cantidad_total:=0;
    writeln('ingrese monto 1: '); readln(monto1);
    writeln('ingrese monto 2: '); readln(monto2);
    contarRepartidor(a, cantidad_total, monto1, monto2);
    writeln('cantidad de repartidores con monto entre 1 y 2 : ' , cantidad_total);
    writeln('ingrese num inferior repartidor 1: '); readln(repartidor1);
    writeln('ingrese num superior repartidor 2: '); readln(repartidor2);
    entre_rango(a,repartidor1,repartidor2);
end.

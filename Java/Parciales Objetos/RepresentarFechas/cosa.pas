program cosa;
type
    pedido = record
        numRepartidor: integer;
        dirE: string;
        dirR: string;
        monto: real;
    End;
    pedidoAcumulado = record
        numRepartidor: Integer;
        cantPedidos: Integer;
        montoTotal: Real;
    end;

    arbol = ^nodo;
    nodo = record
        hi:arbol;
        hd:arbol;
        dato: pedido;
    end;
//--------------------------------------------------
procedure LeerPedido(var p:pedido);
begin
    p.dirE := 'DIR ENVIO';
    if (p.dirE <> 'ZZZ') then
    begin
        p.numRepartidor := random(10);
        p.dirR := 'DIR RETIRO';
        p.monto := random(10);
    end;
end;
//--------------------------------------------------
Procedure crear (var A:arbol; ped:pedido);
Begin
    if (A = nil) then
    begin
        new(A);
        A^.dato:= ped; 
        A^.HI:= nil; 
        A^.HD:= nil;
    end
    else
        if (ped.numRepartidor < A^.dato.numRepartidor) then 
            crear(A^.HI,ped)
        else 
            crear(A^.HD,ped)   
End;
//--------------------------------------------------
procedure LeerPedidos(var a:arbol);
var
    p:pedido;
    limite:integer;
    i:integer;
begin
    limite:=10;
    LeerPedido(p);
    for i:=1 to limite do 
    begin
        crear(a,p);
        LeerPedido(p);
    end;
end;
//--------------------------------------------------
{procedure cantidadRepartidores(var a:arbol; cantRepartidores:integer);
begin
  
end;}

Procedure enOrden ( a : arbol ;var cantRepartidores:integer);
begin //Input 1,22,3,44,5,6,7,2,0
    if ( a<> nil ) then begin
        enOrden (a^.HI, cantRepartidores);
        cantRepartidores:= cantRepartidores + 1;
        write (a^.dato.numRepartidor,'|');
        write (a^.dato.monto: 0: 2,'|');
        WriteLn();
        enOrden (a^.HD, cantRepartidores);
    end;
end;//1,2,3,5,6,7,22,44
var
    a:arbol;
    p:pedido;
    cantRepartidores:integer;
begin
    cantRepartidores:= 0;
    a:=nil;
    LeerPedidos(a);
    enOrden(a,cantRepartidores);
    //cantidadRepartidores(a, cantRepartidores);
    Write(cantRepartidores)
end.
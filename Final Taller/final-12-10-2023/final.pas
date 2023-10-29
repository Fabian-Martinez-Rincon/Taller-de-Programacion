program final;
type
    recital = record
        nombre:string;
        fecha:string;
        cantidad:integer;
        monto:real;
    end;
    
    arbol = ^nodo;
    nodo = record
        dato:recital;
        HI:arbol;
        HD:arbol;
    end;

    lista = ^nodo2;
    nodo2 = record
        dato:recital;
        sig:lista;
    end;

procedure leerRecital(var r:recital);
begin
    writeln('Nombre: '); ReadLn(r.nombre);
    if (r.nombre <> 'ZZZ') then
    begin
        writeln('Fecha: '); ReadLn(r.fecha);
        writeln('Cantidad: '); ReadLn(r.cantidad);
        writeln('Monto: '); ReadLn(r.monto);  
    end;
end;

procedure crearArbol(var abb:arbol; r:recital);
begin
    if (abb = nil) then
    begin
        new(abb);
        abb^.dato:=r;
        abb^.HI:=nil;
        abb^.HD:=nil;
    end
    else 
        if (abb^.dato.monto > r.monto) then
          crearArbol(abb^.HI,r)
        else
            crearArbol(abb^.HD,r)
end;

procedure cargarArbol(var abb:arbol);
var
    r:recital;
begin
    leerRecital(r);
    while (r.nombre <> 'ZZZ') do
    begin
        crearArbol(abb,r);
        leerRecital(r);
    end;
end;

procedure imprimirArbol(abb:arbol);
begin
    if (abb <> nil) then
    begin
        imprimirArbol(abb^.HI);
        writeln('Nombre: ', abb^.dato.nombre);
        writeln('Fecha: ', abb^.dato.fecha);
        writeln('Cantidad: ', abb^.dato.cantidad);
        writeln('Monto: ',abb^.dato.monto:3:3);
        imprimirArbol(abb^.HD);
    end;
end;

procedure agregarAdelante(var l:lista; r:recital);
var
    nue: lista;
begin
    new(nue);
    nue^.dato:=r;
    nue^.sig:=l;
    l:=nue;
end;

procedure filtrarRecitales(abb: arbol; var l: lista; v1: real; v2: real);
begin
    if abb <> nil then
    begin
        if abb^.dato.monto < v1 then
            filtrarRecitales(abb^.HD, l, v1, v2)
        else if abb^.dato.monto > v2 then
            filtrarRecitales(abb^.HI, l, v1, v2)
        else
        begin
            filtrarRecitales(abb^.HI, l, v1, v2);
            if (abb^.dato.monto >= v1) and (abb^.dato.monto <= v2) then
                agregarAdelante(l, abb^.dato);
            filtrarRecitales(abb^.HD, l, v1, v2);
        end;
    end;
end;

procedure imprimirLista(l:lista);
begin
    writeln('Recitales ');
    while (l <> nil) do
    begin
        WriteLn('------------');
        writeln(l^.dato.nombre);
        writeln(l^.dato.fecha);
        writeln(l^.dato.cantidad);
        writeln(l^.dato.monto);
        l:=l^.sig;
    end;
end;

procedure masDe12Canciones(l:lista; var cantidad:integer);
begin
    if (l <> nil) then
    begin
        if (l^.dato.cantidad > 12) then
            cantidad:=cantidad+1;
        masDe12Canciones(l^.sig,cantidad);
    end;
end;

var
    abb:arbol;
    v1,v2:real;
    l:lista;
    cantidad:integer;
begin
    cargarArbol(abb); //A
    WriteLn('--------------');
    imprimirArbol(abb);

    v1:=20;
    v2:=45;
    l:=nil;

    filtrarRecitales(abb,l,v1,v2); //B
    imprimirLista(l);

    cantidad:=0;
    masDe12Canciones(l,cantidad); //C
    writeln('La cantidad es: ', cantidad)
end.
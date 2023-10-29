program final;
const 
    DIMF=6;
type
    cat = 1..DIMF;
    dir = record
        calle:integer;
        nro:integer;
    end;
    fech = record
        mes:integer;
        dia:integer;
        hora:integer;
    end;
    denuncia = record
        categoria:cat;
        dni:integer;
        direccion:dir;
        fecha:fech;
    end;

    lista = ^nodo;
    nodo = record
        dato:denuncia;
        sig:lista;
    end;

    vectorDenuncias = array [cat] of lista;

    nuevo = record
        nroCalle:integer;
        totales:integer;
        julio:integer;
    end;
    listaNueva = ^nodoNuevo;
    nodoNuevo = record
        dato: nuevo;
        sig:listaNueva;
    end;

procedure imprimirLista(l:lista);
begin
    WriteLn('Imprimiendo lista: ');
    while l <> nil do
    begin
        writeln('------------');
        writeln('dni: ',l^.dato.dni);
        writeln('mes: ',l^.dato.fecha.mes);
        l:=l^.sig;
    end;
end;

procedure imprimirListaNueva(l:listaNueva);
begin
    WriteLn('Imprimiendo Nueva: ');
    while l <> nil do
    begin
        writeln('------------');
        writeln('nroCalle: ',l^.dato.nroCalle);
        writeln('Totales: ',l^.dato.totales);
        writeln('Julio: ',l^.dato.julio);
        l:=l^.sig;
    end;
end;

procedure insertarOrdenado(var l:lista;d:denuncia);
var
    act,ant,nue:lista;
begin
    new(nue);
    nue^.dato:=d;
    act:=l;
    ant:=l;
    while (act <> nil) and (act^.dato.direccion.nro < d.direccion.nro) do
    begin
        ant:=act;
        act:=act^.sig;
    end;
    if (act = ant) then
        l:=nue
    else
        ant^.sig:=nue;
    nue^.sig:=act;
end;

procedure agregarAtras(var l,ult:listaNueva;n:nuevo);
var
    nue:listaNueva;
begin
    new(nue);
    nue^.dato:=n;
    nue^.sig:=nil;
    if (l = nil) then
        l:=nue
    else
        ult^.sig:=nue;
    ult:=nue;
end;

procedure inicializarDenuncias(var vd:vectorDenuncias);
var 
    i:cat;
begin
    for i:=1 to DIMF do
    begin
        vd[i]:=nil;
    end;
end;

procedure leerDenuncia(var d:denuncia);
begin
    WriteLn('Dni: '); ReadLn(d.dni);
    if (d.dni <> 0) then
    begin
        WriteLn('Categoria: '); ReadLn(d.categoria);
        WriteLn('Calle: '); ReadLn(d.direccion.calle);
        WriteLn('Nro: '); ReadLn(d.direccion.nro);
        WriteLn('Mes: '); ReadLn(d.fecha.mes);
        WriteLn('Dia: '); ReadLn(d.fecha.dia);
        WriteLn('Hora: '); ReadLn(d.fecha.hora);  
    end;
    
end;

procedure altaDenuncias(var vd:vectorDenuncias);
var
    d:denuncia;
begin
    leerDenuncia(d);
    while d.dni <> 0 do
    begin
        insertarOrdenado(vd[d.categoria],d);
        leerDenuncia(d);
    end;
end;

procedure inicializarMin(var min:denuncia);
begin
    min.dni:=9999;
    min.categoria:=1;
    min.direccion.calle:=9999;
    min.direccion.nro:=9999;
    min.fecha.mes:=9999;
    min.fecha.dia:=9999;
    min.fecha.hora:=9999;
end;

procedure minimo(var vd:vectorDenuncias; var min:denuncia);
var
    posMin:integer;
    i:cat;
begin
    posMin:=9999;
    inicializarMin(min);
    for i:=1 to DIMF do
    begin
        if (vd[i] <> nil) and (vd[i]^.dato.direccion.calle < min.direccion.calle) then
        begin
            posMin:=i;
            min:=vd[i]^.dato;
        end;
    end;
    if (posMin <> 9999) then
    begin
        vd[posMin]:=vd[posMin]^.sig;
    end;
end;

procedure mergeAcumulador(vd:vectorDenuncias; var l:listaNueva);
var
    min:denuncia;
    actual:nuevo;
    ult:listaNueva;
begin
    ult:=nil;
    minimo(vd,min);
    while min.direccion.calle <> 9999 do
    begin
        actual.nroCalle:=min.direccion.calle;
        actual.totales:=0;
        actual.julio:=0;
        while (actual.nroCalle = min.direccion.calle) do
        begin
            if (min.fecha.mes = 7) then
                actual.julio:=actual.julio+1;
            actual.totales:=actual.totales+1;
            minimo(vd,min);  
        end;
        agregarAtras(l,ult,actual);
    end;
end;

procedure imprimirDenuncias(var vd:vectorDenuncias);
var
    i:cat;
begin
    for i:=1 to DIMF do
    begin
        imprimirLista(vd[i]);
    end;
end;

procedure cantidadMax(l:listaNueva; var masDenuncias:nuevo);
begin
    if l <> nil then
    begin
        if (l^.dato.totales > masDenuncias.totales) then
        begin
            masDenuncias.totales:=l^.dato.totales;
            masDenuncias.nroCalle:=l^.dato.nroCalle;
        end;
        cantidadMax(l^.sig,masDenuncias);
    end;
end;

var 
    vd:vectorDenuncias;
    l:listaNueva;
    masDenuncias:nuevo;
begin
    inicializarDenuncias(vd);
    altaDenuncias(vd); //A
    imprimirDenuncias(vd);
    
    writeln('Punto B');
    l:=nil;
    mergeAcumulador(vd,l); //B
    imprimirListaNueva(l);

    masDenuncias.nroCalle:=0;
    masDenuncias.totales:=0;
    masDenuncias.julio:=0;

    cantidadMax(l,masDenuncias);
    WriteLn('Max Denuncias: ', l^.dato.nroCalle);
end.
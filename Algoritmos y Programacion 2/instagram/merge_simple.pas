program MergeNListasPeliculas;

const
    dimF = 8;
    valorAlto = 9999;

type
    rango = 1..dimF;

    pelicula = record
        codigo: integer;
        genero: rango;
        puntajePromedio: real;
    end;

    lista = ^nodo;
    nodo = record
        dato: pelicula;
        sig: lista;
    end;

    vector = array[rango] of lista;

{---------------------------------------------------}
{ Lee una pelicula                                  }
{ Corte: codigo = -1                                }
{---------------------------------------------------}
procedure leerPelicula(var p: pelicula);
begin
    writeln('Ingrese codigo de pelicula (-1 para terminar): ');
    readln(p.codigo);

    if p.codigo <> -1 then
    begin
        writeln('Ingrese genero (1..8): ');
        readln(p.genero);

        writeln('Ingrese puntaje promedio: ');
        readln(p.puntajePromedio);
    end;
end;

{---------------------------------------------------}
{ Inserta ordenado por codigo en una lista          }
{---------------------------------------------------}
procedure insertarOrdenado(var l: lista; p: pelicula);
var
    ant, act, nue: lista;
begin
    new(nue);
    nue^.dato := p;

    act := l;
    ant := l;

    while (act <> nil) and (act^.dato.codigo < p.codigo) do
    begin
        ant := act;
        act := act^.sig;
    end;

    if act = ant then
        l := nue
    else
        ant^.sig := nue;

    nue^.sig := act;
end;

{---------------------------------------------------}
{ Inicializa el vector de listas                    }
{---------------------------------------------------}
procedure inicializarVector(var v: vector);
var
    i: rango;
begin
    for i := 1 to dimF do
        v[i] := nil;
end;

{---------------------------------------------------}
{ Carga peliculas en el vector, agrupadas por genero}
{ y ordenadas por codigo                            }
{---------------------------------------------------}
procedure cargarPeliculas(var v: vector);
var
    p: pelicula;
begin
    leerPelicula(p);
    while p.codigo <> -1 do
    begin
        insertarOrdenado(v[p.genero], p);
        leerPelicula(p);
    end;
end;
    
{---------------------------------------------------}
{ Agrega una pelicula al final de una lista         }
{---------------------------------------------------}
procedure agregarAlFinal(var pri, ult: lista; p: pelicula);
var
    nue: lista;
begin
    new(nue);
    nue^.dato := p;
    nue^.sig := nil;

    if pri = nil then
        pri := nue
    else
        ult^.sig := nue;

    ult := nue;
end;

{---------------------------------------------------}
{ Devuelve la pelicula minima entre las 8 listas    }
{---------------------------------------------------}
procedure minimo(var v: vector; var min: pelicula);
var
    i: rango;
    posMin: integer;
begin
    min.codigo := valorAlto;
    posMin := -1;

    for i := 1 to dimF do
    begin
        if (v[i] <> nil) and (v[i]^.dato.codigo < min.codigo) then
        begin
            min := v[i]^.dato;
            posMin := i;
        end;
    end;

    if posMin <> -1 then
        v[posMin] := v[posMin]^.sig;
end;

{---------------------------------------------------}
{ Merge de N listas (las del vector)                }
{---------------------------------------------------}
procedure merge(var v: vector; var lNueva: lista);
var
    ult: lista;
    min: pelicula;
begin
    lNueva := nil;
    ult := nil;

    minimo(v, min);
    while min.codigo <> valorAlto do
    begin
        agregarAlFinal(lNueva, ult, min);
        minimo(v, min);
    end;
end;

{---------------------------------------------------}
{ Imprime una lista                                 }
{---------------------------------------------------}
procedure imprimirLista(l: lista);
begin
    while l <> nil do
    begin
        writeln('Codigo: ', l^.dato.codigo,
                ' | Genero: ', l^.dato.genero,
                ' | Puntaje: ', l^.dato.puntajePromedio:0:2);
        l := l^.sig;
    end;
end;

{---------------------------------------------------}
{ Programa principal                                }
{---------------------------------------------------}
var
    v: vector;
    lNueva: lista;
begin
    inicializarVector(v);
    lNueva := nil;

    cargarPeliculas(v);   { punto a }
    merge(v, lNueva);     { punto b }

    writeln;
    writeln('--- LISTA FINAL MERGEADA ---');
    imprimirLista(lNueva);
end.
program Actividad1BusquedaDicotomica;

const
    DIMF = 6;

type
    vector = array[1..DIMF] of integer;

{---------------------------------------------------}
{ Intercambia dos valores                           }
{---------------------------------------------------}
procedure intercambiar(var a, b: integer);
var
    aux: integer;
begin
    aux := a;
    a := b;
    b := aux;
end;

{---------------------------------------------------}
{ Ordena el vector de menor a mayor                 }
{---------------------------------------------------}
procedure ordenarPorSeleccion(var v: vector);
var
    i, j, posMin: integer;
begin
    for i := 1 to DIMF - 1 do
    begin
        posMin := i;
        for j := i + 1 to DIMF do
        begin
            if v[j] < v[posMin] then
                posMin := j;
        end;
        intercambiar(v[i], v[posMin]);
    end;
end;

{---------------------------------------------------}
{ Búsqueda dicotómica recursiva                     }
{ Devuelve la posición si lo encuentra, o -1 si no  }
{---------------------------------------------------}
function busquedaDicotomica(v: vector; buscar, min, max: integer): integer;
var
    medio: integer;
begin
    if min > max then
    begin
        WriteLn('El numero no se encuentra en el vector.');
        busquedaDicotomica := -1
    end
    else
    begin
        medio := (min + max) div 2;
        WriteLn ('Comparando con el numero en la posicion ', medio, ': ', v[medio]);
        if v[medio] = buscar then
        begin
            WriteLn('Numero encontrado en la posicion ', medio);
            busquedaDicotomica := medio
        end
        else if buscar < v[medio] then
        begin
            WriteLn('El numero a buscar es menor que ', v[medio], '. Buscando en la mitad inferior.');
            busquedaDicotomica := busquedaDicotomica(v, buscar, min, medio - 1)
        end 
        else
        begin
            WriteLn('El numero a buscar es mayor que ', v[medio], '. Buscando en la mitad superior.');
            busquedaDicotomica := busquedaDicotomica(v, buscar, medio + 1, max);
        end;
    end;
end;

{---------------------------------------------------}
{ Carga el vector                                   }
{---------------------------------------------------}
procedure cargarVector(var v: vector);
var
    i: integer;
begin
    for i := 1 to DIMF do
    begin
        writeln('Ingrese un numero: ');
        readln(v[i]);
    end;
end;

{---------------------------------------------------}
{ Imprime el vector                                 }
{---------------------------------------------------}
procedure imprimirVector(v: vector);
var
    i: integer;
begin
    writeln('Vector ordenado: ');
    for i := 1 to DIMF do
        write(v[i], ' ');
    writeln;
end;

{---------------------------------------------------}
{ Programa principal                                }
{---------------------------------------------------}
var
    v: vector;
    num, pos: integer;
begin
    cargarVector(v);
    ordenarPorSeleccion(v);
    imprimirVector(v);

    writeln('Ingrese el numero a buscar: ');
    readln(num);

    pos := busquedaDicotomica(v, num, 1, DIMF);

    if pos <> -1 then
        writeln('El numero se encuentra en la posicion ', pos)
    else
        writeln('El numero no se encuentra en el vector.');
end.
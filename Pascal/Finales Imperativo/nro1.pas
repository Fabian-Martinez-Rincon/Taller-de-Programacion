{Una obra social dispone de un árbol binario de búsqueda con la información de sus
afiliados. De cada afiliado se conoce: Número de afiliado, Nro de DNI, Categoría (1..10) y
año de ingreso a la obra social. El árbol se encuentra ordenado por número de afiliado. Se
solicita:
Implementar un módulo que reciba el árbol de afiliados, Nro de DNI Num1, Nro de DNI
Num2 y un número de categoría, y retorne un vector ordenado por Nro de DNI del afiliado.
El vector debe contener el número de afiliado y DNI de aquellos afiliados cuyo Nro de DNI
se encuentra comprendido entre Num1 y Num2 (siendo Num1 menor que Num2) y la
categoría se corresponda con la recibida por parámetro. Por norma de la obra social, cada
categoría puede contar con a lo sumo 200 afiliados}
program nro1;
const
    DIMF = 10;
type
    rango = 1..10; //200
    afiliado = record
        dni:integer;
        categoria:rango;
        anioIngreso:Integer;
    end;

    arbol = ^nodo;
    nodo = record
        HI:arbol;
        HD:arbol;
        dato:afiliado;
    end;
procedure LeerAfiliado(var afi:afiliado);
begin
    afi.dni := random(10);
end;
procedure cargarArbol(var abb:arbol);
var 
    afi:afiliado;
    i:integer;
begin
    for i:=1 to DIMF do
    begin
      LeerAfiliado(abb, afi);
    end;
end;
procedure retornarAfiliados(abb:arbol; dni1,dni2:integer; cat:integer);
begin

end;
var
    abb:arbol;
    DIML:integer;
begin
    DIML:= 0;
    abb:=Nil;

    cargarArbol(abb); //Se dispone
    //retornarAfiliados();
end.
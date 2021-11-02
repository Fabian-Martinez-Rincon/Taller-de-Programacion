program Parcial;
Type
    rango = 1..20;
    empleado = record
        legajo:integer;
        dni:integer;
        categoria:rango;
        anioIngreso:integer;
    end;
    arbol = ^nodo;
    nodo = record
        dato: empleado;
        HI: arbol;
        HD: arbol;
    end;
    implemento = record
        dniA:integer;
        dniB:integer;
        categoria:rango;
    end;
    nuevoA = record
        dni:integer;
        categoria:rango;
    end;
    vector = array [1..50] of 
begin
    WriteLn('Hola mundo');
end.
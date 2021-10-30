{1) Una obra social dispone de un árbol binario de búsqueda con la información de sus 
afiliados. De cada afiliado se conoce: Número de afiliado, Nro de DNI, Plan (1..5) y año de
ingreso a la obra social. El árbol se encuentra ordenado por número de afiliado. Se 
solicita:
Implementar un módulo que reciba el árbol de afiliados, Nro de DNI Num1, Nro de DNI 
Num2 y un número de Plan, y retorne un vector ordenado por Nro de DNI del afiliado. El 
vector debe contener el número de afiliado y DNI de aquellos afiliados cuyo Nro de DNI se
encuentra comprendido entre Num1 y Num2 (siendo Num1 menor que Num2) y el Plan se
corresponda con el recibido por parámetro. Por norma de la obra social, cada Plan puede 
contar con a lo sumo 500 afiliados. }
program Fabian_Doce;
const
    cantidad = 4;
type
    sucursales = 0..cantidad; //Pongo el 0 por el corte
    afinlado = record     
        dia:1..31;
        mes:1..12;
        anio:2000..2030;
    end;


//____________________________________________________________________________
var
    v:vector;
    l:lista_nueva;
begin
    randomize;
    Inicializar_Vector(v); //A
    WriteLn('A)');
    Cargar_Vector(v); //A
    l:=nil; 
    merge(l,v); //B
    WriteLn();
    writeln('B) ');
    ImprimirLista(l);
end.
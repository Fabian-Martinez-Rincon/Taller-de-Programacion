{5. Escribir un programa que:
a. Implemente un módulo que genere un vector de 20 números enteros.
b. Implemente un módulo recursivo que devuelva el máximo valor del vector.
c. Implementar un módulo recursivo que devuelva la suma de los valores contenidos en el vector.}

program cinco; 
const
    dimF = 20; 
type
    vector = array [1..dimF] of integer;
//_______________________________________________________________
procedure GenerarVector(var v:vector);
var
    i:integer;
    num:integer;
begin
    for i:=1 to dimF do
    begin
        num:=random(21);
        write(num, ', ');
        v[i]:=num;
    end;
end;
//_______________________________________________________________
function Encontrar_Maximo(v:vector;max:integer;i:integer):integer;
Begin
    if (i < dimF) then
    begin
        if (v[i] > max) then
        begin
            max:=v[i];
        end;
        i:=i+1;
        Encontrar_Maximo:=Encontrar_Maximo(v,max,i);
    end
    else
        Encontrar_Maximo:=max;
End;
//_______________________________________________________________
function suma(v:vector; dimL:integer):integer; //90% del codigo es robado de Juli :D
Begin
    if (dimL = 0) then
     suma := 0
  else
      suma := suma(v,dimL-1) + v[dimL]
End;
//_______________________________________________________________
var
    v:vector;
    maximo:integer;
    contador:integer;
begin
    Randomize;
    contador:=dimF;
    maximo:=-1;
    GenerarVector(v); //A
    WriteLn('El valor maximo es: ', Encontrar_Maximo(v,maximo,contador));//B
    writeln('La suma total del vector es: ',suma(v,contador));
end.
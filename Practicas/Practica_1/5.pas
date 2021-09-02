{5. Escribir un programa que:
a. Implemente un módulo que genere un vector de 20 números enteros.
b. Implemente un módulo recursivo que devuelva el máximo valor del vector.
c. Implementar un módulo recursivo que devuelva la suma de los valores contenidos
en el vector.}

program cinco; 
const
    dimF = 20; //No pienso probar 20 :D
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
        ReadLn(num);
        v[i]:=num;
    end;
end;
//_______________________________________________________________
procedure Encontrar_Maximo(v:vector;var max:integer;i:integer);
Begin
    if (i < dimF) then
    begin
        if (v[i] > max) then
        begin
            max:=v[i];
        end;
        i:=i+1;
        Encontrar_Maximo(v,max,i);
    end;
End;
//_______________________________________________________________
procedure Suma_Vector(v:vector;var suma:integer;i:integer);
Begin
    if (i < dimF) then
    begin
        suma:=suma + v[i];
        i:=i+1;
        Suma_Vector(v,Suma,i);
    end;
End;
//_______________________________________________________________
var
    v:vector;
    maximo:integer;
    contador:integer;
    Suma:integer;
begin
    Suma:=0;
    contador:=1;
    maximo:=-1;
    GenerarVector(v); //A
    Encontrar_Maximo(v,maximo,contador); //B
    WriteLn('El valor maximo es: ', maximo);
    Suma_Vector(v,Suma,contador);
    writeln('La suma total del vector es: ', Suma);
end.
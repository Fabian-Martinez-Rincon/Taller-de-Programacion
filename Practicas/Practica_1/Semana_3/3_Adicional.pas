{3. El administrador de un edificio de oficinas, cuenta en papel, con la información del pago de
las expensas de dichas oficinas.
Implementar un programa que:
a. Genere un vector, sin orden, con a lo sumo las 300 oficinas que administra. De cada
oficina se ingresa código de identificación, DNI del propietario y valor de la expensa. La
lectura finaliza cuando llega el código de identificación -1.
b. Ordene el vector, aplicando alguno de los métodos vistos en la teoría, para obtener el
vector ordenado por código de identificación de la oficina.
c. Realice una búsqueda dicotómica que recibe el vector generado en b) y un código de
identificación de oficina y retorne si dicho código está en el vector. En el caso de encontrarlo, se debe informar el DNI del propietario y en caso contrario informar que
el código buscado no existe.}
program Fabian_Tres;
const
    dimF = 300;
type
    oficina = record
        codigo:integer;
        dni:integer;
        valor:integer;
    end;
    vector = array [1..dimF] of oficina;
//_____________________________________________________________________________
procedure Leer_Oficina(var o:oficina);
begin
    o.codigo := -1+random(10);
    o.dni:=random(10);
    o.valor:=random(100);
end;
//_____________________________________________________________________________
procedure Cargar_Vector(var v:vector; var dimL:integer);
var 
    o:oficina;
begin
    Leer_Oficina(o);
    while (o.codigo <> -1) and (dimL < dimF) do
    begin
        dimL:=dimL+1;
        v[dimL]:=o;
        Leer_Oficina(o);
    end;
end;
//_____________________________________________________________________________
Procedure Insercion ( var v: vector; dimL: Integer );
var 
    i, pos: Integer; 
    actual:oficina;
begin
    actual.codigo:=0;
    for i:=2 to dimL do 
    begin 
        actual:= v[i];
        pos:= i-1; 
        while (pos > 0) and (v[pos].codigo > actual.codigo) do
        begin
            v[pos+1]:= v[pos];
            pos:=pos-1;
        end;  
        v[pos+1]:= actual; 
    end;
end;

//_____________________________________________________________________________
procedure ImprimirVector(v:vector;dimL:integer);
var
    i:integer;
begin
    for i:=1 to dimL do
    begin
        WriteLn('Codigo: ',v[i].codigo);
        WriteLn('Dni: ',v[i].dni);
        WriteLn('Valor: ',v[i].valor);
        WriteLn('__________________________');
    end;
end;
//_____________________________________________________________________________
Procedure  BusquedaBin (var v: Vector; var pos:integer; dimL,x: integer);
Var 
    primero, ult, medio: integer;
Begin
    pos :=0 ;
    primero:= 1;
    ult:= dimL;
    medio := (primero + ult) div 2 ; 
    While (primero <= ult) and (x <> v [medio].codigo) do 
    begin
        If (x < v[medio].codigo) then 
            ult:= medio -1 
        else
            primero:= medio+1 ;
        medio := (primero + ult) div 2 ;
    end;
    If (primero <= ult) then
        pos := medio
    else
        pos := 0;
End;  
//_____________________________________________________________________________
var
    v:vector;
    dimL:integer;
    num:integer;
    pos:integer;
begin
    randomize;
    dimL:=0;
    Cargar_Vector(v,dimL); //A
    Insercion(v,dimL); //B
    ImprimirVector(v,dimL);
    num:=random(10);
    WriteLn('Codigo a buscar: ', num);
    BusquedaBin(v,pos,dimL,num); 
    if (pos <> 0) then
        WriteLn('El codigo ', num,' esta en la posicion: ', pos)
    else
        WriteLn('El codigo no existe');
end.



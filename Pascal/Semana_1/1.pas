{
1. El administrador de un edificio de oficinas cuenta, en papel, con la información del pago de las expensas de dichas oficinas. Implementar un programa modularizado que:

a. Genere un vector, sin orden, con a lo sumo las 300 oficinas que administra. De cada oficina se ingresa el código de identificación, DNI del propietario y valor de la expensa. La lectura finaliza cuando se ingresa el código de identificación -1, el cual no se procesa.
b. Ordene el vector, aplicando el método de inserción, por código de identificación de la oficina.
c. Ordene el vector aplicando el método de selección, por código de identificación de la oficina.
}
program uno;
const
    dimF = 300;
type
    rango = 1..dimF;
    oficina = record
        codigo:integer;
        dni:LongInt;
        valor:integer;
    end;
    vector = array [rango] of oficina;
//_______________________________________________________________
procedure LeerOficina(var off:oficina);
begin
    WriteLn('Codigo: '); ReadLn(off.codigo);
    if (off.codigo <> -1) then
    begin
        WriteLn('Dni: '); ReadLn(off.dni);
        WriteLn('Valor: '); ReadLn(off.valor);
    end;
end;
//_______________________________________________________________
procedure CargarOficinas(var v:vector;var dimL:integer);
var
    off:oficina;
begin
    LeerOficina(off);
    while (off.codigo <> -1) and (dimL<dimF) do
    begin
        dimL:=dimL+1;
        v[dimL]:=off;
        LeerOficina(off);
    end;
end;
//_______________________________________________________________
Procedure seleccion ( var v: vector; dimL: Integer );
var 
    i, j, pos: Integer; 
    actual:oficina;
begin
    for i := 1 to diml-1 do begin 
      pos:= i;
      for j:= i+1 to diml do 
        if (v[j].codigo < v[pos].codigo)then 
            pos:=j ; 
        actual:= v[pos]; 
        v[pos]:= v[i];  
        v[i]:= actual;    
    end;
  end;

//_______________________________________________________________
procedure ImprimirVector(v:vector;dimL:integer);
var
    i:integer;
begin
    for i:=1 to dimL do
    begin
        WriteLn('Codigo: ',v[i].codigo);
        WriteLn('Dni: ',v[i].dni);
        WriteLn('Valor: ',v[i].valor);
    end;
end;
//_______________________________________________________________

Procedure insercion ( var v: vector; dimL: Integer );
var 
    i, j, p: Integer; 
    item : Integer;	
    actual:oficina;
begin
    for i:=2 to dimL do 
    begin 
        actual:= v[i];
        j:= i-1; 
        while (j > 0) and (v[j].codigo > actual.codigo) do
        begin
            v[j+1]:= v[j];
            j:=j-1;
        end;  
        v[j+1]:= actual; 
    end;
end;
//_______________________________________________________________
var
    v:vector;
    dimL:integer;
begin
    dimL:=0;
    CargarOficinas(v,dimL);//A
    ImprimirVector(v,dimL);
    WriteLn('_____________________________');
    //seleccion(v,dimL);//B
    insercion(v,dimL);//C
    ImprimirVector(v,dimL);
end.
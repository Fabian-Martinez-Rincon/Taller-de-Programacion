program Parcial21;
const
    dimF = 200;
    cant = 5;
type
    venta = record
        codigo:integer;
        cantidad:integer;
    end;
    vector = array [1..dimF] of venta;
    
    regisVector = record
        v:vector;
        dimL:integer;
    end;
    vectorSucursal = array [1..cant] of regisVector;

    

//___________________________________________________
procedure LeerVenta(var vent:venta);
begin
    
    vent.codigo:=vent.codigo+1; {solo para la carga}
    writeln('Codigo: ',vent.codigo);
    if vent.codigo <> 11 then
    begin
        vent.cantidad:=10;
        writeln('Cantidad: ',vent.cantidad);
    end;
end;
//___________________________________________________
procedure CargarVector(var rv:regisVector);
var
    vent:venta;
begin
    vent.codigo:=0;
    LeerVenta(vent);
    while (rv.dimL < dimF) and  (vent.codigo <> 11) do
    begin
        rv.dimL:=rv.dimL+1;
        rv.v[rv.dimL]:=vent;
        LeerVenta(vent);
    end;
    WriteLn('DimL: ',rv.dimL);
end;
//___________________________________________________
procedure Cargar_Vector_Sucursal(var vs:vectorSucursal);
var
    i:Integer;
begin
    for i:=1 to cant do
    begin
        vs[i].dimL:=0;
        CargarVector(vs[i]);
        WriteLn('_____________');
    end;
end;    
//___________________________________________________

function suma(vs:vectorSucursal;pos:integer;cantidad:integer;cont:integer;total:Real):Real;
Begin
    if (vs[pos].dimL = cont) then
     begin
        cont:=1;
        cantidad:=cantidad+vs[pos].dimL;
        if pos <> cant then  {cant es una constante = 5}
        begin
          
          pos:=pos+1;
          total := suma(vs,pos,cantidad,cont,total) + vs[pos].v[cont].cantidad
        end
        else
            begin
                suma:= total/cantidad;
            end;
            
     end
  else
    begin
        cont:=cont+1;
        total := suma(vs,pos,cantidad,cont,total) + vs[pos].v[cont].cantidad;
    end;
End;
//___________________________________________________
var
    vs:vectorSucursal;
    pos:integer;
    cantidad:integer;
    cont:integer;
    total:Real;
begin
    randomize;
    total:=0;
    Cargar_Vector_Sucursal(vs); 
    pos:=1;
    cantidad:=0;
    cont:=0;
    WriteLn('El promedio es: ', suma(vs,pos,cantidad,cont,total):2:2 );
end.
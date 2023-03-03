procedure minimo(var vs:vectorSucursal; var x:nuevaVenta);
var 
  i, pos : integer;
begin
	x.codigo := 9999;
	pos := -1;
	for i := 1 to cant do 
		if ((vs[i]) <> NIL) and (vs[i]^.dato.codigo <= x.codigo) then 
		begin
			pos := i;	
			x.codigo := vs[i]^.dato.codigo;
            x.cant:=vs[i]^.dato.cantidad_vendida;	
		end;

	if (pos <> -1) then
	begin
		x.codigo := vs[pos]^.dato.codigo;
        x.cant := vs[pos]^.dato.cantidad_vendida; 
		vs[pos] := vs[pos]^.sig; 
	end;
end;
Procedure CargarVector ( var v:vector;var dimL:integer;af:arbol;Datos:afi );
begin 
    if ( af<> nil ) and (dimL < dimF) then begin
        CargarVector (v,dimL,af^.HI,Datos);
        if (af^.dato.nro>datos.dni_1) and (af^.dato.nro<Datos.dni_2) then
        begin
            dimL:=dimL+1;
            v[dimL]:=af^.dato;
        end;
        CargarVector (v,dimL,af^.HD,Datos);
    end;
end;
Procedure enOrden ( a : arbol );
begin //Input 1,22,3,44,5,6,7,2,0
    if ( a<> nil ) then begin
        enOrden (a^.HI);
        write (a^.dato.nro,'|');
        enOrden (a^.HD);
    end;
end;//1,2,3,5,6,7,22,44

//________________________________________________________________________________
procedure Leer_Nuevo(var Datos:afi);
begin
    Datos.Legajo_A:=random(10);
    WriteLn('nro A: ',Datos.Legajo_A);
    Datos.Legajo_B:=Datos.Legajo_A+random(10);
    WriteLn('nro B: ',Datos.Legajo_B);
    Datos.plan:=1+random(20);
    WriteLn('plan: ',Datos.plan);

end;
//________________________________________________________________________________
Procedure CargarVector ( var v:vector;var dimL:integer;a:arbol;Datos:afi );
begin 
    if ( a<> nil ) and (dimL < dimF) then begin
        CargarVector (v,dimL,a^.HI,Datos);
        if (a^.dato.nro>datos.Legajo_A) and (a^.dato.nro<Datos.Legajo_B) then
        begin
            dimL:=dimL+1;
            v[dimL]:=a^.dato;
        end;
        CargarVector (v,dimL,a^.HD,Datos);
    end;
end;
//________________________________________________________________________________
procedure ImprimirVector(v:vector;dimL:Integer);
var
    i:integer;
begin
    for i:=1 to dimL do
    begin
        WriteLn('nro: ',v[i].nro);
        WriteLn('Dni: ',v[i].dni);
        WriteLn('plan: ',v[i].plan);
        WriteLn('Ingreso: ',v[i].anio);
        WriteLn('______________________________');
    end;
end;

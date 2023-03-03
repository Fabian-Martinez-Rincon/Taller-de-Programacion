procedure minimo(var v : vector; var min : peliculas; v_dimL:vector_dimL);
var
  i, posMin : integer;
begin
	min.codigo := 9999;
	posMin := -1;
	for i:=1 to dimF   do //1..20 //Recorro todo un minimo
    begin
		if  ((v[i])[1].codigo <= min.codigo)  then 
		begin
			min.codigo := (v[i])[1].codigo;
            posMin := i;		
		end;
    end;
	if (posMin <> -1) then
	begin                
        min.genero:=(v[posMin])[1].genero;
        min.puntaje_Promedio:=(v[posMin])[1].puntaje_Promedio;
		Eliminar(v[posMin],v_dimL[posMin],min)  //Elimino el minimo en el vector donde lo encontre
	end //v_diml es como un vector contador para las dimensiones logicas (Para todas las cargas)
end;
//____________________________________________________________________________________
procedure merge(var v_nuevo:vector_pelis;var dimL:integer;v : vector; v_dimL:vector_dimL);
var
	min : peliculas;
    pos:integer; //Para moverme en el vector GENERAL
begin
    pos:=1; //Mantengo siempre una posicion (Podria ser una constante)
	minimo(v,min,v_dimL,pos);	
	while (min.codigo <> 9999) and (dimL < cantidad_pelis) and (pos < dimF) do 
	begin
        dimL:=dimL+1;
        v_nuevo[dimL]:=min;
        minimo(v,min,v_dimL,pos);	
	end;
end;

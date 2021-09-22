function Maximo (a:arbol): arbol;
begin
	if (a = nil) then
		Maximo := nil
	else
		if (a^.HD = nil) then
			Maximo := a
		else
			Maximo := Maximo(a^.HD); 
end;
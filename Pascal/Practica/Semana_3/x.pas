program x;

Procedure crear (var A:arbol; num:integer);
Begin
    if (A = nil) then
    begin
        new(A);
        A^.dato:= num; 
        A^.HI:= nil; 
        A^.HD:= nil;
    end
    else
        if (num < A^.dato) then 
            crear(A^.HI,num)
        else 
            crear(A^.HD,num)   
End;

Procedure enOrden ( a : arbol );
begin //Input 1,22,3,44,5,6,7,2,0
    if ( a<> nil ) then begin
        enOrden (a^.HI);
        write (a^.dato,'|');
        enOrden (a^.HD);
    end;
end;//1,2,3,5,6,7,22,44

Procedure AgregarAdelante (var L:lista; x:integer);
Var 
    nue:Lista;
Begin  
    New(nue);  
    nue^.datos:=x;  
    nue^.sig:=L;  
    L:=nue;
End;
procedure AgregarAlFinal1(var pri:lista;x:integer); 
var  
    act, nue : lista;
begin 
    new (nue);
    nue^.dato:= x;
    nue^.sig := NIL;
    if pri <> Nil then 
    begin
        act := pri ;
        while  (act^.sig <> NIL ) do 
            act := act^.sig ;
        act^.sig := nue ;
    end
    else
        pri:= nue;
end;

procedure merge(v : vector; var  l : lista);
var
   min : string;
   ult : lista;
begin
	minimo(v,min);
	while (min <> 'ZZZ') do 
		begin
			AgregarAlFinal2(l,ult,min);
			minimo(v,min);
		end;
end;

procedure minimo(var v : vector; var min : string);
var
   pos, i : integer;
begin
	min := 'ZZZ';
	pos := -1;
	for i:= 1 to dimF do					
		if (v[i] <> nil) and (v[i]^.dato <= min) then 
        begin
			min := v[i]^.dato; 
			pos := i;	
		end;
	if (pos <> -1) then  
		v[pos] := v[pos]^.sig;
end;

Procedure Seleccion ( var v: vector; dimL: Integer );
var 
    i, j, p: Integer;
    item:integer;
begin
    for i:=1 to dimL-1 do 
    begin {busca el mínimo y guarda en p la posición}
        p := i;
        for j := i+1 to dimL do
            if v[ j ] < v[ p ] then p:=j;
        {intercambia v[i] y v[p]}
        item := v[ p ];   
        v[ p ] := v[ i ];   
        v[ i ] := item;
    end;
end;
begin
  
end.
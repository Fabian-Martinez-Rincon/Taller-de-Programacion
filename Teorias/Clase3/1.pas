program uno;
const
    cant_Estantes = 5;
type
    lista = ^nodo;
    nodo = record
        dato : string;
        sig : lista;
    end;
    estantes = array [1..cant_Estantes] of lista;
//__________________________________________________________
procedure randomString(tamanio:integer; var palabra:string);
var  str,Result: String;
begin
    str:='XYZ';
    Result:='';
    repeat
        Result:=Result+str[Random(Length(str))+1];
    until(Length(Result)=tamanio);
    palabra:=Result;
end;
//__________________________________________________________
Procedure InsertarElemento ( var pri: lista; per: String);
var 
    ant, nue, act: lista;
begin
    new (nue);
    nue^.dato := per;
    act := pri;
    ant := pri;
    {Recorro mientras no se termine la lista y no encuentro la posición correcta}
    while (act<>NIL) and (act^.dato < per) do //De menor a mayor
    begin
        ant := act;
        act := act^.sig ;
    end;
    if (ant = act)  then 
        pri := nue   {el dato va al principio}
    else  
        ant^.sig  := nue; {va entre otros dos o al final}
    nue^.sig := act ;
end;
//__________________________________________________________
procedure Cargar_estante(var l:lista);
var
    nombre:string;
begin
    l:=nil;
    randomString(3,nombre);
    while (nombre <> 'ZZZ') do
    begin
        InsertarElemento(l,nombre);
        randomString(3,nombre);
    end;
end;
//__________________________________________________________
procedure Imprimir_Estante(l:lista);
begin
    while l <> nil do
    begin
        WriteLn('Nombre: ',l^.dato);
        l:=l^.sig;
    end;
end;
//__________________________________________________________
procedure Cargar_estantes(var v:estantes);
var
    i:Integer;
begin
    for i:=1 to cant_Estantes do
    begin
        WriteLn();
        WriteLn('Estante: ', i);
        Cargar_estante(v[i]);
        Imprimir_Estante(v[i]);
        WriteLn();
        WriteLn('_________________');

    end;
end;
//__________________________________________________________
procedure minimo(var v : estantes; var min : string);
var
   pos, i : integer;
begin
	min := 'ZZZ';
	pos := -1;
	
	for i:= 1 to cant_Estantes do					
		if (v[i] <> nil) and (v[i]^.dato <= min) then begin
			min := v[i]^.dato; //ACTUALIZA MIN
			pos := i;	// GUARDA LA POS DE LA LISTA
		end;
	if (pos <> -1) then  //si encontré un minimo, avanzo en el estante
		v[pos] := v[pos]^.sig;
end;
//__________________________________________________________
procedure AgregarAlFinal2(var pri,ult:lista;per:string); 
var  
    nue : lista;
begin 
    new (nue);
    nue^.dato:= per;
    nue^.sig := NIL;
    if pri <> Nil then 
        ult^.sig := nue
    else 
        pri := nue;
    ult := nue;
end;

//__________________________________________________________
procedure merge(v : estantes; var  Estante_nuevo : lista);
var
   min : string;
   ult : lista;
begin
	minimo(v,min);
	while (min <> 'ZZZ') do 
		begin
			AgregarAlFinal2(Estante_nuevo,ult, min);
			minimo(v,min);
		end;
end;
//__________________________________________________________
var
    v:estantes;
    Estante_nuevo:lista;
begin
    randomize;
    Estante_nuevo:=nil;
    Cargar_estantes(v);
    merge(v,Estante_nuevo);
    WriteLn();
    WriteLn('Final: ');
    Imprimir_Estante(Estante_nuevo);
end.
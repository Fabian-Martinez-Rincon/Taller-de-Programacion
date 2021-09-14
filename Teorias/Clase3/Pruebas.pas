Program merge;
Type 
 lista =^nodo;
 nodo = record
  dato:string;
  sig:lista;
 end; 
//_________________________________________________________
procedure Imprimir_Estante(l:lista);
begin
    while l <> nil do
    begin
        WriteLn('Nombre: ',l^.dato);
        l:=l^.sig;
    end;
end;
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
//_________________________________________________________
procedure generarEstante(var l:lista);
var
    nombre:string;
begin
    randomString(3,nombre);
    while (nombre <> 'ZZZ') do
    begin
        InsertarElemento(l,nombre);
        randomString(3,nombre);
    end;
end;
//_________________________________________________________
procedure AgregarAlFinal1(var pri:lista;per:String); 
var  
   act, nue : lista;
begin 
   new (nue);
   nue^.dato:= per;
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

//_________________________________________________________
Procedure minimo(var e1,e2:lista; var min:string);
Begin
    min := 'ZZZ';
    if (e1 <> nil) and (e2 <> nil)then
        if (e1^.dato <= e2 ^.dato ) then 
        begin
            min:= e1^.dato;
            e1:= e1 ^.sig; 
        end
        else begin
            min:= e2 ^.dato;
            e2:= e2 ^.sig;
        end 
    else 
        if (e1 <> nil) and (e2 = nil) then begin
            min:= e1^.dato;
            e1:= e1 ^.sig;
        end 
        else 
            if (e1 = nil) and (e2 <> nil) then begin
                min:= e2 ^.dato;
                e2:= e2 ^.sig; 
            end;
end;
//_________________________________________________________
Procedure merge (E1,E2:lista; var Enuevo:lista);
Var 
 min: string;
Begin
  Enuevo:= nil;
  minimo (E1,E2,min);
  while (min <> 'ZZZ') do
    begin
     AgregarAlFinal1 (Enuevo,min);
     minimo (E1,E2,min);
    end;
End;
//_________________________________________________________

Var
 estante1, estante2: lista;
 estanteNuevo: lista; 
Begin
 generarEstante (estante1);
 WriteLn();
 WriteLn('Estante 1: ');
 WriteLn();
 Imprimir_Estante(estante1);
 generarEstante (estante2);
 WriteLn();
 WriteLn('Estante 2: ');
 WriteLn();
 Imprimir_Estante(estante2);
 merge (estante1,estante2,estanteNuevo);
 WriteLn();
 WriteLn('Estante Final: ');
 WriteLn();
 Imprimir_Estante(estanteNuevo);
End.  
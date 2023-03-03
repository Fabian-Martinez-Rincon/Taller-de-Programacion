program cuatro;
type
    lista = ^nodo;
    nodo  = record
        datos: Integer;
        sig :lista;
    end;
//___________________________________________________________
procedure AgregarAlFinal1(var pri:lista;per:Integer); 
var  
   act, nue : lista;
begin 
   new (nue);
   nue^.datos:= per;
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

//___________________________________________________________
procedure CargarLista(var l:lista);
var
    actual:integer;
begin
    actual:=0;
    while (actual <> 15) do
    begin
        actual:=Random(16); //Ya que toma el nro 0, tenemos que agregar uno extra
        AgregarAlFinal1(l,actual);
        WriteLn(actual);
    end;
end;
//___________________________________________________________
procedure ImprimirLista(l:lista);
begin
    while (l <> nil) do
    begin
        writeln(l^.datos);
        l:=l^.sig;
    end;
end;
//___________________________________________________________
var
    i:integer;
    l:lista;
begin
    Randomize;
    WriteLn('Entrada:');
    CargarLista(l);
    WriteLn('Resultado:');
    ImprimirLista(l);
end.
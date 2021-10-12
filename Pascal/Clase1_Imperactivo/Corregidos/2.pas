Program clase1TD;

const
	DimF=20;
	
type
	Vector = array [1..DimF] of integer;
	
	
  lista = ^nodo;
  
  nodo = record
    elem: integer;
    sig: lista;
  end;
	
	
{1. Realice un módulo que genere y devuelva un arreglo de enteros. 
La carga del arreglo debe realizarse hasta que se lee el número 0 o se 
hayan leído 20 números.}	
Procedure GenerarArreglo (var v:Vector; var dimL:integer);
	var
		num:integer;
	begin
		 dimL:=0;
		 readln(num);
		 while (num <> 0) and (dimL < DimF) do begin
			  dimL:= dimL +1;
			  v[dimL]:=num;
			  readln(num);
	     end;			
    end;
    
    
{2. Realice un módulo que reciba un arreglo e imprima todo su contenido.}
procedure imprimirVector(v:Vector; dimL:integer);
var
  i:integer;
begin
  writeln('-----------------------');
  for i:=1 to dimL do
    write(' | ', v[i]);
  writeln(' | ');
  writeln('-----------------------');
end;




{ 3. Realice un módulo que reciba un arreglo y un valor num, y de ser 
posible elimine del arreglo el valor num.}  
procedure eliminarNro(var v : Vector; var dimL: integer; nro: integer; var ok:boolean);
var
  i,j : integer;
begin
  i := 1;
  ok:=false;
  while(i < dimL) and (v[i] <> nro) do begin
    i := i + 1;
  end;
  
  if(v[i] = nro) then begin
    for j := i to dimL-1 do
      v[j] := v[j+1];
    dimL := dimL - 1;
    ok:=true;
  end;
end;
    
   
   
 {4. Realice un módulo que genere una lista de enteros de manera 
 aleatoria hasta leer el número 15. Se sugiere que la función ramdom 
 genere números entre 0 y 15. Los elementos deben quedar almacenados 
 en la lista en el mismo orden en que fueron leídos.}
Procedure agregarAtras(var l, ult:lista; num:integer);
        var
            nue:lista;
        begin
            new(nue);
            nue^.elem:= num;
            nue^.sig:= nil;
			if (l = nil) then
				l:=nue
			else
				ult^.sig:=nue;
			ult:= nue;
		end;


procedure crearListaAgregandoAtras(var pri: lista);
var
  ult: lista;
  num: integer;
begin
  pri:=nil;
  Randomize;
  writeln('Los datos de la lista son generados aleatoriamente entre el 0 y el 15');
  num:= random(16);
  while (num <> 15) do
  begin
    agregarAtras(pri, ult, num);
    num:= random(16);
  end;
end; 


procedure imprimirLista(l:lista);
begin
    while(l <> nil) do begin   
      write(l^.elem, ' - ');
      l := l^.sig;
    end;
end;


   
{-------------Prog ppal ----------------}   
var
  v: vector;
  dimL, nroABorrar: integer;    
  ok: boolean;
  l: lista;
begin
	{Incisos 1 y 2}	
	generarArreglo(v, dimL);
	imprimirVector(v, dimL);
  	
	{Inciso 3}
    writeln(' ');
	writeln('-------------------------');
	write('Ingrese un nro para borrar --> ');
	read(nroABorrar);
	eliminarNro(v, dimL, nroABorrar, ok);
	if(ok) then 
		writeln('El nro ',nroABorrar,' pudo eliminarse del vector')
	else 
		writeln('El nro ',nroABorrar,' no pudo eliminarse del vector');
	imprimirVector(v, dimL);
  
	{Inciso 4}
    writeln(' ');
	writeln('-------------------------');
	crearListaAgregandoAtras(l);
	imprimirLista(l);  

end.
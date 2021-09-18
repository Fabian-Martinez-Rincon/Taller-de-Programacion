Program clase1TDParte2;


const
    dimF = 4; // 20 - Pusimos 4 para hacer las pruebas mas simples
    fin = -1;
type
    Participante = record
        codigo:Integer;
        edad:Integer;
    end;
    
    vector = array [1..dimF] of Participante;
    
    lista = ^nodo;
    nodo = record
        datos: Participante;
        sig: lista;
    end;
    
    
{a. Almacenar la información que se lee en un vector. }
//_______________________________________________________
procedure LeerParticipante(var p:Participante);
begin
    WriteLn('Codigo: ');
    ReadLn(p.codigo);
    if (p.codigo <> fin) then begin
        WriteLn('Edad: ');
        ReadLn(p.edad);
    end;
end;

//_______________________________________________________
procedure Almacenar(var v:vector; var dimL:Integer);
var
    p:Participante;
begin
    writeln('Ingrese código y edad de los participantes. Se cargarán a los sumo ',dimF,' particpantes :' );	
    LeerParticipante(p);
    while (p.codigo <> fin) and (dimL < dimF) do
    begin
        dimL:=dimL+1;
        v[dimL]:=P;
        LeerParticipante(p);
    end;
end;


{2. b. Mostrar la información almacenada.}
procedure imprimir_vector(v:vector; diml:integer);
  var
  i:integer;
  begin
    writeln('-------' );	
	writeln('Inicio del vector : ');
    for i := 1 to diml do begin
      writeln('[',i, ']', 'Cod:', v[i].codigo);
      writeln('   Edad:', v[i].edad);
      //writeln('');
    end;
    writeln('Fin del vector. ');
    writeln('-------' );	
    writeln(' ' );	
  end; 
  
  
 {c. Ordenar el vector de participantes por edad.}
 procedure ordenar_vector (var v :vector ; diml:integer); // por insercion
 var
	i:integer;
	j:integer;
	actual:participante;
 begin
	for i := 2 to diml do begin 
		actual:=v[i];  
		j:=i-1;     
		while (j>0) and (v[j].edad > actual.edad) do begin    
			v[j+1]:=v[j];
			j:=j-1;
		end;
		v[j+1]:=actual;
	end;              
 end;
  
  
  
  
{e. Eliminar del vector ordenado los participantes con edades entre 20 y 22. }
procedure eliminarParticipantes(var v:vector; var dimL:integer; valor1:integer; valor2:integer);
var
	posicion, i, cant : integer;
begin
	cant := 0;
	i := 1;  
	{busco al primer participante de 20 años o mas}
	while ((i <= dimL) and (v[i].edad < valor1 )) do        
		i := i +1;                                           
   
	posicion:= i;
	while (i <= dimL) and (v[i].edad <=valor2 ) do
		i := i + 1;
  
	{ vamos a eliminar a todos los participantes entre las posiciones posicion e i del vector V }
	cant := i - posicion;
	for i := (posicion+cant) to dimL do
		v[i-cant] := v[i];
		  
	dimL := dimL - cant;  
end;
  
  
{g. Generar una lista ordenada de menor a mayor con los participantes 
que quedaron el el vector después de realizar el inciso e.}

procedure agregar_atras(var l:lista; elemento:Participante; var ult:lista);
var
	nue:lista;
begin
	new(nue);
	nue^.datos:=elemento;
	nue^.sig:=nil;
	if(l=nil)then 
		l:=nue
	else
		ult^.sig:=nue;
	ult:=nue;
end;   
 

procedure generar_lista(var l:lista; v:vector; diml:integer);
var
i:integer;
ult:lista;
begin
	l:= nil;
	for i := 1 to diml do 
		agregar_atras(l,v[i],ult);
end;

procedure imprimirLista( l: lista);
begin
	writeln('-------' );	
	writeln('Lista de participantes');
	while(l <> nil) do begin
		writeln('CODIGO:',l^.datos.codigo);
		writeln('EDAD:',l^.datos.edad);
		l := l^.sig;
	end;
	writeln('-------' );	
end;  
  
  
  var
	v: vector;
	dimL: integer;
	l: lista;
 Begin
	dimL:= 0;
    Almacenar(v, dimL);
    imprimir_vector(v, dimL);

    ordenar_vector(v, dimL);
    writeln('Se ordenan los participantes por edad' );	
    imprimir_vector(v, dimL);

    eliminarParticipantes(v, dimL, 20, 22);
    writeln('Se eliminan los participantes con edades entre 20 y 22 años' );	
    imprimir_vector(v, dimL);

	generar_lista(l, v, dimL);
	imprimirLista(l);
 end. 
program Adicional4;
uses GenericABB, GenericLinkedList;

const
	CANTIDAD_PATENTES = 20;
	CANTIDAD_MARCAS = 10;

type
	Fecha = record
		dia, mes, anio: integer;
	end;
	Alquiler = record
		codigo_sucursal: integer;
		fecha_alquiler: Fecha;
		patente: string;
		marca: string;
		modelo: integer;
		dias_alquiler: integer;
		precio_por_dia: real;
	end;
	ListaAlquileres = specialize LinkedList<Alquiler>;
	
	// item 1 
	
	VectorListas = array [1..10] of ListaAlquileres; 
	
	// item 2 
	
	
  Resumen = record
		marca: string; 
		cantidad_alq: integer;
		precio_total : real; 
	end;
  ListaResumen = specialize LinkedList<Resumen>;
  
  // item 4 
  
    DatoDetalle = record
		codigo_sucursal: integer;
		fecha_alquiler : Fecha; 
		marca : string; 
		modelo : integer; 
		dias_alquiler : integer; 
		precio_por_dia: real; 
	end;
				
  ListaDeDatosDetalles = specialize LinkedList<DatoDetalle>;
  NodoConDetalles = record
					patente : string;
					datos: ListaDeDatosDetalles;
					end;
  ABBDetalle = specialize ABB<NodoConDetalles>;

// Use esta función para obtener la lista de alquileres
procedure ObtenerAlquileres(var lista: ListaAlquileres);
	var i, j, nValores: integer;
		alq: Alquiler;
		patentes: array [1..CANTIDAD_PATENTES] of string = ('A5', 'B8', 'C3', 'D1', 'E7', 'F9', 'G4', 'H6', 'I2', 'J8',
													'K7', 'L2', 'M1', 'N8', 'O5', 'P0', 'Q3', 'R4', 'S1', 'T7');
		marcas_db: array [1..CANTIDAD_MARCAS] of string = ('Fiat', 'Audi', 'Ford', 'Renault', 'Volkswagen',
													'Peugeot', 'Citroen', 'Nissan', 'Chevrolet', 'Toyota');
		modelos: array [1..CANTIDAD_PATENTES] of integer;
		marcas: array [1..CANTIDAD_PATENTES] of string;

	begin
	lista:= ListaAlquileres.create();

	for i:= 1 to CANTIDAD_PATENTES do
		begin
		marcas[i]:= marcas_db[random(CANTIDAD_MARCAS) + 1];
		modelos[i]:= random(4) + 2020;
		end;
		
	nValores:= random(1000) + 200;

	// Generamos N alquileres y los almacenamos en la lista
	for i:= 1 to nValores do
		begin
		alq.codigo_sucursal:= random(10) + 1;
		alq.fecha_alquiler.anio:= random(5) + 2020;
		alq.fecha_alquiler.mes:= random(12) + 1;
		alq.fecha_alquiler.dia:= random(28) + 1;
		j:= random(CANTIDAD_PATENTES) + 1;
		alq.patente:= patentes[j];
		alq.marca:= marcas[j];
		alq.modelo:= modelos[j];;
		alq.dias_alquiler:= random(15) + 4;
		alq.precio_por_dia:= random(15) + 70;
			
		lista.add(alq);
		end;
	end;
//--------------------------------------------------------

{1) Haga un módulo que procese la lista de alquileres que se dispone y que los almacene
agrupados por sucursal y ordenados por marca en una estructura de datos adecuada y
que la retorne.}

// agrupado y ordenado → vector de listas 
// cada posicion del vector representa una sucursal y adentro tiene que estar cada lista ordenado por marca

procedure inicializarVectorDeListas (var v : VectorListas);
var 
	i : integer; 
begin 
	for i := 1 to 10 do 
	begin 
		v[i] := ListaAlquileres.create(); 
	end; 
end;  

{procedure insertarOrdenado (var l : ListaAlquileres; a : Alquiler); 
begin 
 l.reset(); 
 while not l.eol() and (l.current().marca < a.marca) do 
  l.next(); 
 l.insertCurrent(a); 
end; }

procedure cargarVectorDeListas (var v : VectorListas; l : ListaAlquileres); 
var 
 a : Alquiler; 
begin 
 l.reset(); 
 while not l.eol() do
 begin 
  a := l.current(); 
  l.add(a);
  l.next(); 
 end; 
end; 


// imprimimos para corroborar

procedure imprimirVectorListas (v : VectorListas); 
var 
 i : integer;  
begin 
 for i :=  1 to 10 do 
 begin 
 writeln;
  writeln ('SUCURSAL: ', i); 
  v[i].reset(); 
  while not v[i].eol() do 
  begin  
   writeln ('MARCA: ', v[i].current().marca);
   v[i].next(); 
  end; 
 end; 
end; 

{2) Haga un módulo que reciba la estructura de datos devuelta por el módulo anterior y
retorne un resumen de alquileres para cada marca, registrando cantidad de alquileres y
precio total. Ordenada de manera descendente por cantidad de alquileres.}

procedure buscaMinimo (var v: VectorListas; var min: alquiler);
var i, posmin: integer;
Begin
  min.marca := 'ZZZZ';

  for i:= 1 to 10 do
     if not(v[i].eol()) then
        if v[i].current().marca <= min.marca then
         begin        
            min:= v[i].current();
            posmin:=i
         end;

  if min.marca <> 'ZZZZ'then
     v[posmin].next();
end;

procedure insertarOrdenado (var listaUnica : ListaResumen; a : Resumen); 
begin 
 listaUnica.reset(); 
 while not listaUnica.eol() and (listaUnica.current().cantidad_alq < a.cantidad_alq) do 
  listaUnica.next(); 
 listaUnica.insertCurrent(a); 
end; 


procedure mergeAcumulador (v: VectorListas; var listaUnica: ListaResumen);
var actual: Resumen; min: Alquiler;
    i:integer;
begin
 listaUnica:= ListaResumen.create();
 for i:= 1 to 10 do
    v[i].reset();
    
 buscaMinimo (v, min);
 while (min.marca <> 'ZZZZ') do
    begin
     actual.marca:= min.marca; 
     actual.cantidad_alq := 0 ;
     actual.precio_total :=0; 
     while (min.marca = actual.marca) do 
     begin
        actual.cantidad_alq := actual.cantidad_alq + 1;
        actual.precio_total := actual.precio_total + (min.precio_por_dia * min.dias_alquiler); 
        buscaMinimo(v, min);
     end;
     insertarOrdenado(listaUnica, actual)
    end; 
end; 

// imprimimos listaResumen 

procedure imprimirListaResumen (lr : ListaResumen); 
var  
 r : Resumen; 
begin 
 lr.reset(); 
 while not lr.eol() do 
 begin 
  r := lr.current(); 
  writeln ('MARCA: ', r.marca); 
  writeln ('CANTIDAD ALQUILERES: ', r.cantidad_alq); 
  writeln ('PRECIO: ', r.precio_total:0:2); 
  lr.next(); 
 end; 
end;

{3) Haga un módulo que reciba la estructura de datos devuelta por el módulo
implementado en el punto 2 e imprima la marca con mayor cantidad de alquileres a
nivel nacional.}

procedure marcaMayorCant (l : ListaResumen); 
var 
 max : integer; 
 marcamax : string; 
 r : Resumen; 
begin 
 marcamax := ''; 
 max := 0; 
 l.reset(); 
 while not l.eol() do 
 begin
  r := l.current(); 
  if (r.cantidad_alq > max) then 
  begin 
   max := r.cantidad_alq; 
   marcamax := r.marca; 
  end; 
  l.next(); 
 end;
 writeln ('La marca con mayor cantidad de alquileres a nivel nacional fue: ', marcamax, ' con ', max);  
end; 

{4) Haga un módulo que procese la lista de alquileres que se dispone, almacene en una
estructura de datos eficiente para la búsqueda de alquileres por patente y que la
retorne. Para cada patente se desea almacenar todos sus alquileres.}

 procedure agregarNodoAlArbolConDetalle(a: ABBDetalle; dc: Alquiler);
  var n: NodoConDetalles;    
	  dd: DatoDetalle;
	begin
	if a.isEmpty() then    
		begin
	    n.datos:= ListaDeDatosDetalles.create();
	    dd.codigo_sucursal:= dc.codigo_sucursal;
	    dd.fecha_alquiler := dc.fecha_alquiler; 
	    dd.marca := dc.marca; 
	    dd.modelo := dc.modelo; 
	    dd.dias_alquiler := dc.dias_alquiler;
	    dd.precio_por_dia := dc.precio_por_dia; 
		n.datos.add(dd);
		n.patente:= dc.patente;

	    a.insertCurrent(n);
	    end
	else
	if a.current().patente = dc.patente then  
		begin
	    dd.codigo_sucursal:= dc.codigo_sucursal;
	    dd.fecha_alquiler := dc.fecha_alquiler; 
	    dd.marca := dc.marca; 
	    dd.modelo := dc.modelo; 
	    dd.dias_alquiler := dc.dias_alquiler;
	    dd.precio_por_dia := dc.precio_por_dia; 
		a.current().datos.add(dd);
		end
	else
		if dc.patente < a.current().patente then
			agregarNodoAlArbolConDetalle(a.getLeftChild(), dc)
		else
			agregarNodoAlArbolConDetalle(a.getRightChild(), dc);
end;

procedure cargarArbolDesdeLista (var a : ABBDetalle; l : ListaAlquileres); 
var 
 alq : Alquiler; 
begin 
 l.reset();
 while not l.eol() do 
 begin 
  alq := l.current(); 
  agregarNodoAlArbolConDetalle(a,  alq ); 
  l.next(); 
 end; 
end; 

// imprimimos para corroborar
procedure imprimirInOrden(a: ABBDetalle);
begin
if not a.isEmpty() then
	begin
	imprimirInOrden(a.getLeftChild());
	a.current().datos.reset(); 
	
	writeln('PATENTE: ', a.current().patente);
	writeln('FECHA: ', a.current().datos.current().fecha_alquiler.anio, '/', a.current().datos.current().fecha_alquiler.mes, '/', a.current().datos.current().fecha_alquiler.dia);
	imprimirInOrden(a.getRightChild());
	end;
end;

// 5) Haga un módulo que reciba la estructura de datos retornada en el punto 4, una
//patente y una fecha y devuelva si ese auto se alquiló en la fecha recibida.
function existe(a: ABBDetalle; patente : string; unafecha: Fecha ): boolean;
begin
  if a.isEmpty() then
    existe := false
  else if (patente = a.current().patente) and (unafecha.anio = a.current().datos.current().fecha_alquiler.anio) and (unafecha.mes = a.current().datos.current().fecha_alquiler.mes) and (unafecha.dia = a.current().datos.current().fecha_alquiler.dia)then
    existe := true
  else if patente < a.current().patente then
    existe := existe(a.getLeftChild(), patente, unafecha )   
  else
    existe := existe(a.getRightChild(), patente, unafecha); 
end;

{6) Haga un módulo que reciba la estructura de datos retornada en el punto 4 y una fecha
y devuelva la cantidad de alquileres que se realizaron en esa fecha.}

procedure CantidadAlquileres(a: ABBDetalle; unaFecha1 : Fecha; var cantidad : integer);
begin
if not a.isEmpty() then
	begin
	CantidadAlquileres(a.getLeftChild(), unaFecha1, cantidad);
	a.current().datos.reset(); 
	while not a.current().datos.eol() do 
	begin 
	 if (a.current().datos.current().fecha_alquiler.anio = unaFecha1.anio) and (a.current().datos.current().fecha_alquiler.mes = unaFecha1.mes) and (a.current().datos.current().fecha_alquiler.dia = unaFecha1.dia) then
	  cantidad := cantidad + 1; 
	 a.current().datos.next(); 
	end; 
	CantidadAlquileres(a.getRightChild(), unaFecha1, cantidad);
	end;
end;


var 
 l: ListaAlquileres;
 v : VectorListas; 
 lr : ListaResumen; 
 a : ABBDetalle; 
 unaPatente : string; 
 unaFecha, otraFecha :Fecha; 
 cantidad : integer; 
begin
randomize;

writeln('Obteniendo lista');
ObtenerAlquileres(l);

l.reset();
while not l.eol do
  begin
  if l.current.patente = 'S1' then begin
  writeln(l.current.codigo_sucursal);
	writeln(l.current.fecha_alquiler.anio);
	writeln(l.current.fecha_alquiler.mes);
	writeln(l.current.fecha_alquiler.dia);
	writeln(l.current.patente);
	writeln(l.current.marca);
	writeln(l.current.modelo);
	writeln(l.current.dias_alquiler);
	writeln(l.current.precio_por_dia :0:2);
	
  writeln('-----------------');end;
  l.next;
  end;
  
  // item 1 
  inicializarVectorDeListas(v); 
  cargarVectorDeListas(v,l);
  writeln ('IMPRIMO VECTOR DE LISTAS');  
  imprimirVectorListas(v); 
  // item 2 (no se como ordenarlo tambien de manera descendente por cant)
  mergeAcumulador(v,lr); 
  writeln ('IMPRIMIMOS LISTA RESUMEN'); 
  imprimirListaResumen(lr); 
  // item 3 
  writeln; 
  marcaMayorCant(lr); 
  // item 4
  a := ABBDetalle.create();  
  cargarArbolDesdeLista(a, l);
  writeln; 
  writeln ('IMPRIMO ARBOL'); 
  imprimirInOrden(a); 
  // item 5 
  writeln; 
  writeln ('INGRESE UNA PATENTE');
  readln (unaPatente); 
  writeln ('INGRESE UN AÑO, UN MES, UN DIA'); 
  readln (unaFecha.anio); 
  readln (unaFecha.mes); 
  readln (unaFecha.dia); 
  if (existe(a, unaPatente, unaFecha) = true) then 
   writeln ('ESE AUTO SE ALQUILO EN ESA FECHA') 
  else 
   writeln('NO SE ALQUILO EL AUTO EN ESA FECHA');
  // item 6 
   cantidad := 0;
     writeln ('INGRESE UN AÑO, UN MES, UN DIA'); 
  readln (otraFecha.anio); 
  readln (otraFecha.mes); 
  readln (otraFecha.dia); 
  CantidadAlquileres(a, otraFecha, cantidad);
  writeln ('LA CANTIDAD DE ALQUILERES DE ESA FECHA SON: ',cantidad);  
end.

program Precipitaciones;

const
  anioInicio = 2000;
  anioFin = 2020;
  cantAnios = anioFin - anioInicio + 1;
  cantMeses = 12;

type
  matriz = array[1..cantAnios, 1..cantMeses] of real;
  vectorMeses = array[1..cantMeses] of real;
  vectorAnios = array[1..cantAnios] of real;

{---------------------------------------------}
procedure inicializarMatriz(var m: matriz);
var
  i, j: integer;
begin
  for i := 1 to cantAnios do
    for j := 1 to cantMeses do
      m[i,j] := 0;
end;

{---------------------------------------------}
{ a) Carga }
procedure cargarPrecipitaciones(var m: matriz);
var
  anio, mes, fila: integer;
  precipitacion: real;
begin
  writeln('--- Ejercicio a) Carga de datos ---');

  inicializarMatriz(m);

  writeln('Ingrese anio (fuera de rango para terminar): ');
  readln(anio);

  while (anio >= anioInicio) and (anio <= anioFin) do
  begin
    writeln('Ingrese mes (1..12): ');
    readln(mes);

    writeln('Ingrese precipitacion: ');
    readln(precipitacion);

    fila := anio - anioInicio + 1;
    m[fila, mes] := precipitacion;

    writeln;
    writeln('Ingrese anio (fuera de rango para terminar): ');
    readln(anio);
  end;
end;

{---------------------------------------------}
{ b) Imprimir }
procedure imprimirMatriz(m: matriz);
var
  i, j: integer;
begin
  writeln('--- Ejercicio b) Matriz (meses columnas) ---');

  for i := 1 to cantAnios do
  begin
    write('A', #164, 'o ', anioInicio + i - 1, ': ');
    for j := 1 to cantMeses do
      write(m[i,j]:8:1, ' ');
    writeln;
  end;
end;

{---------------------------------------------}
{ c) suma en rango }
function sumaRango(m: matriz; anioIni, anioFinR, mesIni, mesFinR: integer): real;
var
  i, j: integer;
  suma: real;
begin
  suma := 0;

  for i := anioIni to anioFinR do
    for j := mesIni to mesFinR do
      suma := suma + m[i - anioInicio + 1, j];

  sumaRango := suma;
end;

{---------------------------------------------}
{ d) acumulado por mes }
procedure acumuladoMeses(m: matriz; var v: vectorMeses);
var
  i, j: integer;
begin
  for j := 1 to cantMeses do
  begin
    v[j] := 0;
    for i := 1 to cantAnios do
      v[j] := v[j] + m[i,j];
  end;
end;

procedure imprimirAcumMeses(v: vectorMeses);
var
  j: integer;
begin
  writeln('--- Ejercicio d) Acumulado por mes ---');
  for j := 1 to cantMeses do
    writeln('Mes ', j, ': ', v[j]:8:1);
end;

{---------------------------------------------}
{ e) acumulado por año }
procedure acumuladoAnios(m: matriz; var v: vectorAnios);
var
  i, j: integer;
begin
  for i := 1 to cantAnios do
  begin
    v[i] := 0;
    for j := 1 to cantMeses do
      v[i] := v[i] + m[i,j];
  end;
end;

procedure imprimirAcumAnios(v: vectorAnios);
var
  i: integer;
begin
  writeln('--- Ejercicio e) Acumulado por a', #164, 'o ---');
  for i := 1 to cantAnios do
    writeln('A', #164, 'o ', anioInicio + i - 1, ': ', v[i]:8:1);
end;

{---------------------------------------------}
var
  m: matriz;
  vMeses: vectorMeses;
  vAnios: vectorAnios;
  anio1, anio2, mes1, mes2: integer;
  total: real;

begin
  cargarPrecipitaciones(m);
  writeln;

  imprimirMatriz(m);
  writeln;

  acumuladoMeses(m, vMeses);
  imprimirAcumMeses(vMeses);
  writeln;

  acumuladoAnios(m, vAnios);
  imprimirAcumAnios(vAnios);
  writeln;

  writeln('--- Ejercicio c) Suma en rango ---');
  writeln('Ingrese rango de anios (inicio y fin): ');
  readln(anio1, anio2);
  writeln('Ingrese rango de meses (inicio y fin): ');
  readln(mes1, mes2);

  total := sumaRango(m, anio1, anio2, mes1, mes2);

  writeln('Suma en el rango: ', total:8:1);
end.
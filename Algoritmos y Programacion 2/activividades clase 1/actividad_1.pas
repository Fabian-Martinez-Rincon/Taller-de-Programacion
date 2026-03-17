program actividad_1;

const
  anioInicio = 2015;
  anioFin = 2020;
  cantAnios = anioFin - anioInicio + 1;
  cantMeses = 12;

type
  matriz = array[1..cantAnios, 1..cantMeses] of real;

{---------------------------------------------}
{ a) Cargar la matriz }
procedure cargarMatriz(var m: matriz);
var
  i, j: integer;
begin
  randomize;

  for i := 1 to cantAnios do
    for j := 1 to cantMeses do
      m[i,j] := random(400) / 10;
end;

{---------------------------------------------}
{ b) Imprimir: años filas, meses columnas }
procedure imprimirAniosFilas(m: matriz);
var
  i, j: integer;
begin
  writeln('--- A', #164, 'os como filas ---');
  for i := 1 to cantAnios do
  begin
    write('A', #164, 'o ', anioInicio + i - 1, ': ');
    for j := 1 to cantMeses do
      write(m[i,j]:6:1, ' ');
    writeln;
  end;
end;

{---------------------------------------------}
{ c) Imprimir: meses filas, años columnas }
procedure imprimirMesesFilas(m: matriz);
var
  i, j: integer;
begin
  writeln('--- Meses como filas ---');
  for j := 1 to cantMeses do
  begin
    write('Mes ', j, ': ');
    for i := 1 to cantAnios do
      write(m[i,j]:6:1, ' ');
    writeln;
  end;
end;

{---------------------------------------------}
{ e) Promedio anual de temperatura para cada año }
procedure imprimirPromedioAnual(m: matriz);
var
  i, j: integer;
  suma, promedio: real;
begin
  writeln('--- Promedio anual por a', #164, 'o ---');
  for i := 1 to cantAnios do
  begin
    suma := 0;
    for j := 1 to cantMeses do
      suma := suma + m[i,j];

    promedio := suma / cantMeses;
    writeln('A', #164, 'o ', anioInicio + i - 1, ': ', promedio:6:2);
  end;
end;

{---------------------------------------------}
{ f) Temperatura máxima de cada mes y año en que ocurrió }
procedure imprimirMaximoPorMes(m: matriz);
var
  i, j, anioMax: integer;
  max: real;
begin
  writeln('--- Temperatura m', #160, 'xima de cada mes ---');
  for j := 1 to cantMeses do
  begin
    max := m[1,j];
    anioMax := anioInicio;

    for i := 2 to cantAnios do
    begin
      if m[i,j] > max then
      begin
        max := m[i,j];
        anioMax := anioInicio + i - 1;
      end;
    end;

    writeln('Mes ', j, ': m', #160, 'xima = ', max:6:1, ' en el a', #164, 'o ', anioMax);
  end;
end;

{---------------------------------------------}
{ g) Mes y año de la temperatura más baja }
procedure informarMinimaGlobal(m: matriz);
var
  i, j, anioMin, mesMin: integer;
  min: real;
begin
  min := m[1,1];
  anioMin := anioInicio;
  mesMin := 1;

  for i := 1 to cantAnios do
    for j := 1 to cantMeses do
      if m[i,j] < min then
      begin
        min := m[i,j];
        anioMin := anioInicio + i - 1;
        mesMin := j;
      end;

  writeln('--- Temperatura m', #161, 's baja registrada ---');
  writeln('Valor: ', min:6:1);
  writeln('A', #164, 'o: ', anioMin);
  writeln('Mes: ', mesMin);
end;

{---------------------------------------------}
{ h) Programa principal }
var
  temperaturas: matriz;

begin
  cargarMatriz(temperaturas);
  imprimirAniosFilas(temperaturas);
  writeln;
  imprimirMesesFilas(temperaturas);
  writeln;
  imprimirPromedioAnual(temperaturas);
  writeln;
  imprimirMaximoPorMes(temperaturas);
  writeln;
  informarMinimaGlobal(temperaturas);
end.
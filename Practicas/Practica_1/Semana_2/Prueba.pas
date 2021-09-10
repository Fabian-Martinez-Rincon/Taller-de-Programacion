program Ejercicio7;
Uses crt;

procedure conversionDecimaBinario (numero: integer);
var
  resultado: integer;
begin
  resultado:=0;
  if(numero<>0) then begin
    resultado := numero mod 2;
    conversionDecimaBinario(numero div 2);
  end;
  write(resultado);
end;

var
  numero: integer;
begin
  clrscr;

  write('Introduzca un numero: ');
  readln(numero);
  while (numero<>0) do begin
    writeln();
    write('La conversion a binario es: ');
    conversionDecimaBinario(numero);
    writeln();
    writeln();
    write('Introduzca un numero: ');
    readln(numero);
  end;

  readln;
end.
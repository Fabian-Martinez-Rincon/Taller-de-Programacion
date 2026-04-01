program SumatoriaRecursiva;

function sumatoria_rec(N: integer): integer;
begin
    if N = 1 then
        sumatoria_rec := 1
    else
        sumatoria_rec := sumatoria_rec(N - 1) + N;
end;

var
    num: integer;

begin
    writeln('Ingrese un numero natural mayor a 0: ');
    readln(num);

    writeln('La sumatoria es: ', sumatoria_rec(num));
end.
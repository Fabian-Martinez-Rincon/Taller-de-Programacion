{7. Realizar un programa que lea números y que utilice un procedimiento recursivo que escriba el equivalente en binario de un número decimal. El programa termina cuando el usuario ingresa el número 0 (cero). 
Ayuda: Analizando las posibilidades encontramos que: Binario (N) es N si el valor es menor a 2. ¿Cómo obtenemos los dígitos que componen al número? ¿Cómo achicamos
el número para la próxima llamada recursiva? Ejemplo: si se ingresa 23, el programa debe mostrar: 10111.}
program siete;
//__________________________________________________________________________________
procedure Decimal_Binario(decimal:Integer;var binario:cadena11);
var
    i:Integer;
    grande:integer;
begin
    grande:=999;
    
    //___________________________________
    for i:=1 to 11 do 
    begin//Buscamos en el arreglo, cual es el numero mas grande, sin pasarse del numero ingresado
        if (valores2[i]<=decimal) then //Al ser un arreglo inverso, siempre vamos a tener numeros mas altos
        begin //Una vez que el numero es mas chico, lo restamos al numero original, mientras sea mayor, agregamos ceros
            binario:=binario+'1';
            decimal:=decimal-valores2[i];
            if grande>=i then
            begin
                grande:= i-1;  
            end;
        end
            else
                begin
                    binario:=binario+'0';
                end;
    end;
//__________________________________________________________________________________
var
    num:integer;
begin
    ReadLn(num);
    while num <> 0 do
    begin

        ReadLn(num);
    end;
end.
## Generar String.
```Pas
procedure randomString(tamanio:integer; var palabra:string);
var  str,Result: String;
begin
    str:='abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
    Result:='';
    repeat
        Result:=Result+str[Random(Length(str))+1];
    until(Length(Result)=tamanio);
    palabra:=Result;
end;

EJEMPLO:
randomString(10,nombre); //en la variable nombre va a guardar un string de 10 letras random
```
```pascal
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

```

## Leer Random
```Pas
procedure LeerAlumno(var alum:alumno);
begin
    with alum do begin
    legajo:=1200+random(100);
     If (legajo <> 1200) then begin
        randomString(10,apellido);
        randomString(10,nombre);
        dni:=random(11); 
        anio:=2000+random(30); //Calculo un rango de 2000 a 2030 :D
     end;
  end;
end;
```
Agrupados
=========
```pascal
procedure Cargar_Vector(var v:vector);
var
    e:entrada;
begin
    WriteLn('______________________________');
    leerEntrada(e);
    while (e.codigo <> 0) do
    begin
        InsertarElemento(v[e.dia],e);
        leerEntrada(e);    
    end;
end;
```

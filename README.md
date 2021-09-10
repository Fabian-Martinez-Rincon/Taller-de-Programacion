<h1 align="center"> 💻Taller De Programacion </h1>


- [Listas](/Listas.md)
- [Vectores](/Vectores.md)
- [Arboles](/Arboles.md)

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
```

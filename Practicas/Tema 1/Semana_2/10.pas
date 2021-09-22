{10. Implementar un programa que contenga:
a. Un módulo que lea información de alumnos de Taller de Programación y almacene en una estructura de datos sólo a aquellos alumnos que posean año de ingreso posterior al 2010. Esta estructura debe estar ordenada por legajo y debe ser eficiente para la búsqueda por dicho criterio. De cada alumno se lee legajo, apellido, nombre, DNI y año de ingreso.
b. Un módulo que reciba la nueva estructura e informe el nombre y apellido de aquellos alumnos cuyo legajo sea inferior a 15853.
c. Un módulo que reciba la nueva estructura e informe el nombre y apellido de aquellos alumnos cuyo legajo esté comprendido entre 1258 y 7692.
}
program diez;
uses
    crt;
type
    cadena20 = string[20];
    alumno = record
        legajo:Integer;
        apellido:cadena20;
        nombre:cadena20;
        dni:Integer;
        anio:Integer;
    end;

    arbol = ^nodo;
    nodo = record
        dato: alumno;
        HI: arbol;
        HD: arbol;
    end;
//_____________________________________________________
procedure randomString(tamanio:integer; var palabra:string); //No entiendo nada pero funciona :D
var  str,Result: String;
begin
    str:='abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
    Result:='';
    repeat
        Result:=Result+str[Random(Length(str))+1];
    until(Length(Result)=tamanio);
    palabra:=Result;
end;
//_____________________________________________________
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
//_____________________________________________________
Procedure crear (var a:arbol; alum:alumno);
begin
    If (a = nil) then begin
        new(a);
        a^.dato:= alum;
        a^.HD:= nil;
        a^.HI:= nil;    
    end
    Else
        If (alum.legajo < a^.dato.legajo) then
            crear(a^.HI,alum)
        Else
            crear(a^.HD,alum);
end;
//_____________________________________________________
procedure CargarArbol(var abb:arbol);
var
    alum:alumno;
begin
    LeerAlumno(alum);
    while (alum.legajo<>1200)do //El 1200 esta para tener un corte poque sino me muero (Y no tener un rango de 1 al 1200)
    begin
        if alum.anio > 2010 then
            crear(abb,alum);
        LeerAlumno(alum);
    end;
end;
//_____________________________________________________
Procedure Legajos_Inferiores(a:arbol;legajo_raro:integer);
begin
    If (a <> nil) then begin
        If (a^.dato.legajo < legajo_raro ) then 
        begin
            writeln('Nombre: ',a^.dato.nombre );
            WriteLn('Apellido: ',a^.dato.apellido);
            WriteLn('_________________________');
            Legajos_Inferiores(a^.HI,legajo_raro);
            Legajos_Inferiores(a^.HD,legajo_raro);
        end
        Else
            Legajos_Inferiores(a^.HI,legajo_raro);
    end;
end;
//_____________________________________________________
procedure Entre_Legajos(a:arbol);
begin
    if(a<>nil)then
    begin
        if(a^.dato.legajo > 1258) then
            if(a^.dato.legajo < 7692)then
            begin
                WriteLn('Nombre: ',a^.dato.nombre);
                WriteLn('Apellido: ',a^.dato.apellido);
                WriteLn('Legajo: ',a^.dato.legajo); //No lo pedia pero queria chequearlo
                Entre_Legajos(a^.HI);
                Entre_Legajos(a^.HD);
            end
            else
                if (a^.dato.legajo < 1258) then begin
                    Entre_Legajos(a^.HD);
                end
                else
                    if(a^.dato.legajo > 7692) then
                        Entre_Legajos(a^.HD);
    end;             
end;
//_____________________________________________________
var
    abb:arbol;
begin
    clrscr;
    Randomize;
    CargarArbol(abb); //A
    Legajos_Inferiores(abb,15853); //B
    clrscr;//Porque lo anterior me dejaba tremendo choclo
    Entre_Legajos(abb);//C 
end.
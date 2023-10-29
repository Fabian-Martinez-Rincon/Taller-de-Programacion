<table><td>

```pascal
procedure merge(v:vector;var l :lista);
var
   min:string;
   ult:lista;
begin
  minimo(v,min);
  while (min <> 'ZZZ') do 
  begin
    AgregarAlFinal2(l,ult,min);
    minimo(v,min);
  end;
end;
```
</td><td>

```pascal
procedure minimo(var v:vector; var min:string);
var
  pos,i:integer;
begin
  min:='ZZZ';
  pos:=-1;
  for i:= 1 to dimF do
    if (v[i] <> nil) and (v[i]^.dato <= min) then
    begin
      min := v[i]^.dato;
      pos := i;
    end;
  if (pos <> -1) then
    v[pos] := v[pos]^.sig;
end;
```
</td></table>

```pascal
procedure merge(var l:lista_nueva; v:vector) ;
var
  ult : lista_nueva;
  min, actual : venta_nueva;
begin
  minimo(v,min);	
  while (min.codigo <> 9999) do	
  begin
    actual.cant := 0;	
    actual.codigo := min.codigo;	
    while (min.codigo <> 9999) and (min.codigo = actual.codigo) do 
    begin
      actual.cant:= actual.cant + min.cant;	
      minimo(v,min);	
    end;
    AgregarAlFinal2(l,ult,actual);	
  end;
end;
```

```pascal
procedure minimo(var v:vector; var x:venta_nueva);
var 
  i, pos : integer;
begin
  x.codigo := 9999;
  pos := -1;
  for i := 1 to cantidad do 
    if (v[i] <> NIL) and (v[i]^.dato.codigo <= x.codigo) then 
    begin
      pos := i;	
      x.codigo := v[i]^.dato.codigo;
      x.cant:=v[i]^.dato.cantidad_vendida;	
    end;
  if (pos <> -1) then
  begin
    x.codigo := v[pos]^.dato.codigo;
    x.cant := v[pos]^.dato.cantidad_vendida; 
    v[pos] := v[pos]^.sig; 
  end;
end;
```



<table><td>

```pascal
Procedure AgregarAdelante (var L:lista; x:integer);
Var 
  nue:Lista;
Begin  
  New(nue);  
  nue^.datos:=x;  
  nue^.sig:=L;  
  L:=nue;
End;
```
</td><td>

```pascal
procedure AgregarAlFinal2(var pri,ult:lista; x:integer); 
var  
    nue : lista;
begin 
  new (nue);
  nue^.dato:= x;
  nue^.sig := NIL;
  if pri <> Nil then 
    ult^.sig := nue
  else 
    pri := nue;
  ult := nue;
end;
```
</td></table>
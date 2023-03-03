program tres;
const 
    dimF = 10;
type
    indice = 1..dimF;
    vector = array [1..dimF] of integer;
procedure dos(var v:vector;var dimL:integer);
var
    i:integer;
begin
    for i:=1 to dimF do
    begin
       v[i]:=i;    
       dimL:=dimL+1;                
    end;
end;

//______________________________________________________________
Function BuscarPosElem (x:integer; v:vector; dimL: integer): integer;
var 
    pos:integer; 
    exito: boolean;
Begin
    pos:=1; 
    exito:= false;
    while (pos <= dimL) and (not exito) do 
    begin
        if (x = v[pos]) then
            exito:= true
        else
            pos:=pos+1;
    end;
    if (exito = false) then 
        pos:=0;
    BuscarPosElem:= pos;
end; 
//__________________________________________________________________________________
Procedure BorrarPos (var v:vector; var dimL:integer; pos:integer);
var 
    i: integer; 
Begin
    for i:= pos + 1  to   dimL  do
        v [ i - 1 ]  :=  v [ i] ;
    dimL := dimL - 1 ;         
End;
//__________________________________________________________________________________
Procedure BorrarElem (var v: vector;  var dimL: integer; elem: integer);
var 
    pos: indice;
begin
    pos:= BuscarPosElem (elem, v, dimL);
    if (pos <> 0) then 
    begin
        BorrarPos (v, dimL, pos);
   end;
end;
//__________________________________________________________________________________
procedure imprimirVector(v:vector);
var
    i:integer;
begin
    for i:=1 to dimF do
    begin
       WriteLn(v[i]);                    
    end;
end;

var
    v:vector;
    nro:integer;
    accion:Boolean;
    dimL:Integer;
begin
    dimL:=0;
    nro:=5;
    accion:=False;
    dos(v,dimL);
    BorrarElem (v,dimL,nro);
    imprimirVector(v);
end.
program ultimo;
const
    dimF = 3;
type
    Participante = record
        codigo:Integer;
        edad:Integer;
    end;
    vector = array [1..dimF] of Participante;
//_______________________________________________________
procedure LeerParticipante(var p:Participante);
begin
    WriteLn('Codigo: ');ReadLn(p.codigo);
    if (p.codigo <> -1) then
        WriteLn('Edad: ');ReadLn(p.edad);
end;
//_______________________________________________________
procedure Almacenar(var v:vector;var dimL:Integer);
var
    p:Participante;
begin
    LeerParticipante(p);
    while (p.codigo <> -1) and (dimL < dimF) do
    begin
        dimL:=dimL+1;
        v[dimL]:=P;
        if (dimL < dimF) then
            LeerParticipante(p);
    end;
end;

//_______________________________________________________
procedure MostrarInfor(v:vector;dimL:Integer);
var
    i:integer;
begin
    for i:=1 to dimL do
    begin
        WriteLn('Codigo: ',v[i].codigo);
        WriteLn('Edad: ',v[i].edad);
        WriteLn('_____________');
    end;
end;
//_______________________________________________________
Procedure Ordenar ( var v: vector; dimL: Integer );
var 
    i, j, p: Integer; 
    item : Participante;			
begin
    for i:=1 to dimL-1 do 
    begin {busca el mínimo y guarda en p la posición}
        p := i;
        for j := i+1 to dimL do
            if v[ j ].edad < v[ p ].edad then
                p:=j;
        {intercambia v[i] y v[p]}
        item.codigo := v[ p ].codigo; 
        item.edad := v[ p ].edad;   
        v[ p ] := v[ i ];   
        v[ i ] := item;
    end;
end;
//__________________________________________________________________________________
Function BuscarPosElem (x:integer; v:vector; dimL: integer): integer;
var 
    pos:integer; 
    exito: boolean;
Begin
    pos:=1; 
    exito:= false;
    while (pos <= dimL) and (not exito) do 
    begin
        if (x = v[pos].edad) then
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
    pos: Integer;
begin
    pos:= BuscarPosElem (elem, v, dimL);
    if (pos <> 0) then 
    begin
        BorrarPos (v, dimL, pos);
   end;
end;


//_______________________________________________________
var
    v:vector;
    dimL:integer;
    i:integer;
begin
    dimL:=0;
    WriteLn('A) ___________________________________');
    Almacenar(v,dimL); //A
    MostrarInfor(v,dimL);//B
    WriteLn('C) ___________________________________');
    Ordenar(v,dimL);//C
    MostrarInfor(v,dimL);//D
    WriteLn('E) ___________________________________');
    for i:=1 to dimL do//E
    begin
        if ((v[i].edad>=20) or (v[i].edad>=20)) then
            BorrarElem(v,dimL,v[i].edad);
    end;
    MostrarInfor(v,dimL);//F
    
end.
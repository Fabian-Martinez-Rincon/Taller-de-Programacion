<h1 align="center"> Parciales </h1>

![image](https://user-images.githubusercontent.com/55964635/139561964-55572c5d-c0de-4525-958e-bfeb9f2f0a97.png)




<table>
<tr>
<td> RECOLECTOR 1 </td> <td> RECOLECTOR 2 </td><td> Asignaciones </td> <td> Areas </td>
</tr>
<tr>
<td>
 
```js
robots 
  robot RECOLECTOR1
  variables
    papel,av,ca : numero
    ok : boolean
  comenzar
    av := PosAv
    ca := PosCa
    ok := V
    mientras (ok)
      papel := 0
      BloquearEsquina(5,5)
      Pos(5,5)
      JuntarPapel(papel)
      si (papel = 0)
        ok := F {TERMINE}
        Pos(av,ca)
        LiberarEsquina(5,5)
        EnviarMensaje(F,R2) 
      sino
        BloquearEsquina(6,6)
        Pos(6,6)
        LiberarEsquina(5,5)
        EnviarMensaje(V,R2)
        repetir papel
          depositarPapel
        Pos(av,ca)
        LiberarEsquina(6,6)
  fin
```
</td>
<td>
 

```js
  robot RECOLECTOR2
  variables
    papel,av,ca : numero
    ok : boolean
  comenzar
    av := PosAv
    ca := PosCa
    RecibirMensaje(ok,R1)
    mientras (ok)
      papel := 0
      BloquearEsquina(5,5)
      Pos(5,5)
      JuntarPapel(papel)
      si(papel = 0)
        Pos(av,ca)
        LiberarEsquina(5,5)
        ok := F
      sino
        BloquearEsquina(6,6)
        Pos(6,6)
        LiberarEsquina(5,5)
        repetir papel
          depositarPapel
        Pos(av,ca)
        LiberarEsquina(6,6)
  fin
```
 
</td>
 <td>
 

```js
variables 
  R1 : RECOLECTOR1
  R2 : RECOLECTOR2
comenzar 
  AsignarArea(R1,jardin)
  AsignarArea(R1,deposito)
  AsignarArea(R1,area1)

  AsignarArea(R2,jardin)
  AsignarArea(R2,deposito)
  AsignarArea(R2,area2)

  Iniciar(R1,1,1)
  Iniciar(R2, 2, 2)
fin
```
 
</td>
 
<td>

```js
programa Parcial3fecha
procesos
{________________________________________________}
  proceso JuntarPapel(ES papel : numero)
  comenzar
    mientras (HayPapelEnLaEsquina) & (papel < 10)
      tomarPapel
      papel :=  papel + 1
  fin
{________________________________________________}
areas
  jardin : AreaC(5,5,5,5)
  deposito : AreaC(6,6,6,6)

  area1 : AreaP(1,1,1,1)
  area2 : AreaP(2,2,2,2)
 
```
 
</td>
 
</tr>
 
</table>

Cargar_Datos
=============

<table>
<tr>
<td> Carga Total </td> <td> Carga Parcial </td>
</tr>
<tr>
<td>
 
```Pas
procedure Carga_Total(var v:vector);
var
    i:integer;
begin
    for i:=1 to dimF do
    begin
       readln(v[i]);                    
    end;
end.
```
</td>
<td>
 

```Pas
procedure Carga_Parcial(var v;vector;var dimL);
var
    numero:integer;
begin
    dimL:=0;
    readln(numero);
    while (numero <> 0) and (dimL < dimF) do
    begin
       dimL:=dimL+1;
       v[dimL]:=nummero;
       readln(numero);                 
    end;
end.
```
 
</td>
</tr>
 
</table>





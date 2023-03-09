<h1 align="center"> Finales </h1>


<div align="center">

## Dudas de Imperativo

Por algun motivo, mi yo del pasado agrego dos modulos dentro del if, lo probe y no es necesario

- [Link del codigo](https://github.com/NomaDiix/Taller-de-Programacion/blob/main/Documentos/Arboles.md#Entre_Numeros)

</div>


<div align="center">

  # 💀 Estudiado para el final

  <img src="https://media.giphy.com/media/6i6DHjicGKMMHzws2a/giphy.gif"/>
</div>


<img src= 'https://i.gifer.com/origin/8c/8cd3f1898255c045143e1da97fbabf10_w200.gif' height="20" width="100%">

<h1 align="center"> Final Objetos Septiembre del 2022</h1>

La UNLP desea representar los diferentes subsidios (de estadias y de bienes) pedidos por sus investigadores. De todo subsidio se conoce: el nombre del investigador, el nombre de su plan de trabajo y la fecha de solicitud. Ademas:

- De los subsidios de estadia se conoce el lugar de destino, el costo en pasajes, la cantidad de dias de estadia y el monto de hotel por dia.
- De los subsidios de bienes se guardan todos los bienes solicitados (como maximo N). De cada bien se conoce: descripción, cantidad y costo por unidad.

`1` Genere las clases. Implemente constructores para iniciar los diferentes subsidios a partir de toda la información necesaria: tenga en cuenta que los subsidios de bienes deben iniciar sin bienes y deben permitir guardar un máximo de N bienes.

`2` Implemente todos los metodos necesarios, en las clases que corresponda, para:

- `a)` Agregar un bien a un subsidio de bienes.
- `b)` Devolver el monto total del subsidio, teniendo en cuenta las fórmulas 
  <br><br>
  `Monto_total_subsidio_estadia` = costo_pasajes + cantidad_dias_estadia * monto_hotel_por_dia <br>
  `Monto_total_subsidio_bienes` =  (Sumatoria) costo_final_bien_i donde <br>
  `costo_final_bien_i` = cantidad_bien_i * costo_por_unidad_bien_i
- `c)` devolver un String que represente el subsidio, siguiendo los ejemplos:

```
Subsidio estadia: "Nombre del investigador: ... Plan de trabajo: ... 
Fecha de solicitud: ... 
Monto total: ... Lugar de destino: ... Dias de estadia: ..."
```

```
Subsidio bienes: "Nombre del investigador: ... Plan de trabajo: ...
Fecha de solicitud: ... Monto total: ...
Descripción de los biene solicitados: descripción bien 1, descripción bien 2 ..."
```

`3)` Escriba un programa que instancie un subsidio de estadia y un subsidio de bienes, establezca todos los datos necesarios para cada uno de ellos y muestre por consola la representación String de cada uno.


### 📝Resolución


<details> <summary>Programa Principal</summary>

```java

```

</details>

<details> <summary>Subsidio</summary>

```java
public class abstract Subsidio{
  private String nombreInv;
  private String nombrePlan;
  private String fecha;

  public Subsidio(String nombreInv, String nombrePlan, String fecha){
    this.nombreInv = nombreInv;
    this.nombrePlan = nombrePlan;
    this.fecha = fecha;
  }
  public abstract double devolverMonto();
}
```

</details>

<details> <summary>Subsidio Estadia</summary>

```java
public class SubsidioEstadia extends Subsidio {
  private String destino;
  private double costoE;
  private Integer cantDias;
  private double diaHotel;
  
  public SubsidioEstadia(String destino, double costoE, Integer cantDias, double diaHotel, String nombreInv, String nombrePlan, String fecha){
      super(nombreInv, nombrePlan, fecha);
      this.destino = destino;
      this.costoE = costoE;
      this.cantDias = cantDias;
      this.diaHotel = diaHotel;
    }

  public double devolverMonto(){
    return this.costoE + (this.cantDias * this.diaHotel)
  }

}
```

</details>

<details> <summary>Subsidio Bienes</summary>

```java
public class SubsidioBienes extends Subsidio{
  private Bien[] bienes;
  private Integer dimF;
  private Integer dimL;

  public SubsidioBienes(Integer N,String nombreInv, String nombrePlan, String fecha ){
    super(nombreInv, nombrePlan, fecha);
    this.dimF = N;
    for (int i = 0; i < N; i++){
      this.bienes[i]=null
    }
    this.dimL = 0;
  }
  public void agregarBien(Bien bien){
    this.bienes[this.dimL] = bien;
    this.dimL++;
  }
  public double devolverMonto(){
    double total = 0;
    for (int i = 0; i < this.dimL; i++){
      total += this.bienes[i].costoFinal();
    }
    return total;
  }
}
```

</details>

<details> <summary>Bien</summary>

```java
public class Bien {
  private String descripcion;
  private Integer cantidad;
  private double costoU;

  public Bien(String descripcion, Integer cantidad, double costoU){
    this.descripcion = descripcion;
    this.cantidad = cantidad;
    this.costoU = costoU;
  }

  public double costoFinal(){
    return this.cantidad * this.costoU;
  }
}
```

</details>



<h1 align="center"> Final Imperativo del 9-8-2022</h1>

Un servicio de moto mensajería platense quiere procesar los pedidos entregados. 
De cada pedido se conoce: número del repartidor, dirección del retiro del pedido, dirección de entrega del pedido y monto a cobrar por el servicio de entrega. Se pide implementar un programa que:

- `a)` Lea los pedidos (finalizando con dirección de entrega ZZZ) y genere una estructura eficiente para la búsqueda por número de repartidor. La estructura debe contener para cada número de repartidor la cantidad de pedidos entregados por éste y el monto total cobrado por todos sus serviciós de entrega. <br>
A partir de la estructura generada en `a)`, realice módulos independientes para:
- `b)` Obtener la cantidad de repartidores que recaudaron un monto total que oscila entre dos valores ingresados.
- `c)` Imprimir en pantalla la información de aquellos repartidores cuyo número de repartidor oscila entre dos valores ingresados.


</details>

<details> <summary>Subsidio Bienes</summary>

```pas
program finalAgosto;
type
  st = string[30];
  
  pedido = record
  	num:integer;
  	direccion_retiro:st;
    direccion_entrega:st;
    monto: integer ; // sabemos que es platita jajaja real 
  end;
  
  pedidoArbol = record
  	num:integer;
    cantPedidos:integer;
    direccion_entrega:st;
    montoTotal: integer ; // sabemos que es platita jajaja real 
  end;
  
  arbol=^nodo;
  nodo=record
    dato : pedidoArbol; 
   	hi : arbol;
   	hd : arbol;
  end ;
  
//PROCESOS

  procedure modificar_nodo(var a:arbol; p:pedido);
  begin
   a^.dato.cantPedidos:= a^.dato.cantPedidos+1;
   a^.dato.montoTotal:= a^.dato.montoTotal+ p.monto;
  end;
  
  procedure insertar_arbol (var a :arbol; p:pedido);
  begin
   if(a = nil)then begin 
    new(a);
    a^.dato.num:= p.num;
    a^.dato.cantPedidos:= 1;
    a^.dato.direccion_entrega:= p.direccion_entrega;
    a^.dato.montoTotal:= p.monto;
    a^.hi:=nil;
    a^.hd:=nil;
   end
   else 
     if( a^.dato.num < p.num )then 
       insertar_arbol(a^.hd,p)
     else 
        if( a^.dato.num> p.num )then 
          insertar_arbol(a^.hi,p)
        else 
           modificar_nodo(a,p)
       
  end;

  procedure leer_registro (var r:pedido);
  begin
    writeln ('ingrese direccion entrega: ');
    readln(r.direccion_entrega);
    if(r.direccion_entrega <> 'zzz')then begin
      writeln ('ingrese num: ');
      readln(r.num);
      writeln ('ingrese direccion retiro: ');
      readln(r.direccion_retiro);
      writeln ('ingrese monto: ');
      readln(r.monto);
    end;
  end;  
     
  procedure crear_arbol (var a : arbol );
  var
   registro: pedido;
  begin
    leer_registro (registro);
    while(registro.direccion_entrega <> 'zzz')do begin
      insertar_arbol(a,registro);
      leer_registro(registro);
    end;
  end;
      
 procedure recorrido_total(a : arbol ; var cantidad:integer; monto1, monto2:integer);
 begin
  if (a <> nil)then begin 
  	recorrido_total(a^.hi, cantidad, monto1, monto2);
  	if(a^.dato.montoTotal > monto1 ) and (a^.dato.montoTotal < monto2)then 
      cantidad:=cantidad+1;
    recorrido_total(a^.hd, cantidad,monto1,monto2); 
  end;
 end;  
 
 procedure imprimirDato( a:arbol);
 begin
   writeln('numero de repartidor: ',a^.dato.num ,'cantidad de Pedidos: ', a^.dato.cantPedidos,'monto total: ',a^.dato.montoTotal,'direcion entrega: ',a^.dato.direccion_entrega);
 end;
 
 procedure entre_rango (a:arbol; inf,sup:integer); // int = menor sup = mayor   3 al 6
 begin
  if (a <> nil)then begin
   if (a^.dato.num > inf) then 
     if(a^.dato.num < sup) then begin
       imprimirDato(a);
       entre_rango(a^.hi,inf,sup);
       entre_rango(a^.hd,inf,sup);
     end  
     else 
       entre_rango(a^.hi,inf,sup)
   else
     entre_rango(a^.hd,inf,sup);
 end; 
end;  
 
 
//PROGRAMA PRINCIPAL 
var
  a:arbol;
  cantidad_total:integer;
  monto1:integer;
  monto2:integer;
  repartidor1:integer;
  repartidor2:integer;
begin
  randomize;
  a:=nil;
  crear_arbol(a); 
  cantidad_total:=0;
  writeln('ingrese monto 1: '); readln(monto1);
  writeln('ingrese monto 2: '); readln(monto2);
  recorrido_total(a, cantidad_total, monto1, monto2);
  writeln('cantidad de repartidores con monto entre 1 y 2 : ' , cantidad_total);
  writeln('ingrese num inferior repartidor 1: '); readln(repartidor1);
  writeln('ingrese num superior repartidor 2: '); readln(repartidor2);
  entre_rango(a,repartidor1,repartidor2);
end.

```

</details>
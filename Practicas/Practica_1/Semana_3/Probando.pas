const
    N = 10;
type
      Datos = record
           dato_ordenamiento: string;
           dato1: integer;
           dato2: real;
      end; 
      LISTA = ^nodo;
      nodo = record
           data: Datos;
           sig: LISTA;
      end;
      VECTOR_LISTAS = array[1..N] of LISTA;
      Datos2 = record
           dato_ordenamiento: string;
           sumaDato1: integer;
      end;
      LISTA2 = ^nodo;
      nodo = record
           data: Datos2;
           sig: LISTA2;
      end; 
var
    listas_entrada: VECTOR_LISTAS;
    lista_de_salida: LISTA2;
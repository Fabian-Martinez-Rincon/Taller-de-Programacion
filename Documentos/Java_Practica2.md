<h1 align="center">Practica 2</h1>
<h1 align="center">Primera Parte</h1>

```1)a)```  Definir una clase para representar triángulos. Un triángulo se caracteriza por el tamaño de sus 3 lados (double), el color de relleno (String) y el color de línea (String). El triángulo debe saber:

- Devolver/modificar el valor de cada uno de sus atrivutos (métodos get# y set#)
-  Calcular el área y devolverla (método calcularArea)
-  Calcular el perímetro y devolverlo (método calcularPerimetro)

![image](https://user-images.githubusercontent.com/55964635/136681503-9d700939-02f9-45ca-8200-4a5ab9d490bc.png)

```b)```  Realizar un programa principal que instancie un triángulo, le cargue información leída desde teclado e informe en consola el perímetro y el área.

```2)a)``` Definir una clase para representar balanzas comerciales (para ser utilizadas en verdulerías, carnicerías, etc). Una balanza comercial sólo mantiene el monto y la cantidad de items correspondientes a la compra actual (es decir, no almacena los ítems de la compra). La balanza debe responder a los siguientes mensajes:
-  iniciarCompra(): inicializa el monto y cantidad de ítems de la compra actual. 
-   RegistrarProducto(pesoEnKg, precioPorKg): recibe el peso en kg del ítem comprado y su precio por kg, debiendo realizar las actualizaciones en el estado de la balanza
-   DevolverMontoAPagar(): retorna el monto de la compra actual.
-   DevolverResumenDeCompra(): retorna un String del siguiente estilo “Total a pagar X por la compra de Y productos” , donde X es el monto e Y es la cantidad de ítems de la compra. 

```b)```  Genere un programa principal que cree una balanza e inicie una compra. Lea información desde teclado correspondiente a los ítems comprados (peso en kg y precio 
por kg) hasta que se ingresa uno con peso 0. Registre cada producto en la balanza. Al finalizar, informe el resumen de la compra. 

```3)a)``` Definir una clase para representar entrenadores de un club de fútbol. Un entrenador se caracteriza por su nombre, sueldo básico y la cantidad de campeonatos ganados.
- Defina métodos para obtener/modificar el valor de cada atributo.
-  Defina el método calcularSueldoACobrar que calcula y devuelve el sueldo a cobrar por el entrenador. El sueldo se compone del sueldo básico, al cual se le adiciona un plus por 
campeonatos ganados (5000$ si ha ganado entre 1 y 4 campeonatos; $30.000 si ha ganado entre 5 y 10 campeonatos; 50.000$ si ha ganado más de 10 campeonatos).

```b)``` Realizar un programa principal que instancie un entrenador, cargándole datos leídos desde teclado. Pruebe el correcto funcionamiento de cada método implementado.

```4)a)```  Generar una clase para representar círculos. Los círculos se caracterizan por su radio (double), el color de relleno (String) y el color de línea (String). El círculo debe saber:
-  Devolver/modificar el valor de cada uno de sus atributos (get# y set#)
-  Calcular el área y devolverla. (método calcularArea)
-  Calcular el perímetro y devolverlo. (método calcularPerimetro)

NOTA: la constante PI es Math.PI

```b)```  Realizar un programa principal que instancie un círculo, le cargue información leída de teclado e informe en consola el perímetro y el área.

```5)a)``` Modifique el ejercicio 2-A. Ahora la balanza debe poder generar un resumen de compra más completo. Para eso agregue a la balanza la característica resumen (String). Modifique los métodos:
-  iniciarCompra para que además inicie el resumen en el String vacío.
-  registrarProducto para que reciba un objeto Producto (que se caracteriza por peso en kg y descripción) y su precio por kg. La operación debe realizar las actualizaciones en monto /cantidad de ítems y adicionar al resumen (string) la descripción y el monto pagado por este producto. 
-  devolverResumenDeCompra() para que retorne un String del siguiente estilo: “Naranja 100 pesos – Banana 40 pesos – Lechuga 50 pesos – Total a pagar 190 pesos por la compra de 3 productos” . La sección subrayada es el contenido de resumen.

```
Realice las modificaciones necesarias en el programa principal solicitado en 2-B para corroborar el funcionamiento de la balanza. 
NOTA: dispone en la carpeta tema 3 de la clase Producto ya implementada. Para adicionar la información del producto recibido al resumen use concatenación de Strings (operación +). 
```


<h1 align="center">Segunda Parte</h1>

```1)a)i)``` Defina constructores para la clase Triángulo (definida anteriormente): el primer constructor debe recibir un valor para cada lado y para los colores de línea y relleno; el segundo constructor no debe poseer parámetros ni código (constructor nulo). 

```ii)``` Realice un programa que instancie un triángulo mediante los distintos constructores.

```1)b)i)``` Defina constructores para la clase Círculo (definida anteriormente): el primer constructor debe recibir un valor para el radio y para los colores de línea y relleno; el segundo constructor no debe poseer parámetros ni código (constructor nulo).

```ii)```  Realice un programa que instancie un círculo mediante los distintos constructores.

```2)a)``` Defina un constructor para la clase Entrenador (definida anteriormente) que reciba los datos necesarios (nombre, sueldo básico, cantidad de campeonatos ganados). Además defina un constructor nulo. 

```ii)``` Realice un programa que instancie un entrenador mediante el primer constructor.

```3)a)``` Modifique la clase Libro (carpeta tema 4) para ahora considerar que el primer autor es un objeto instancia de la clase Autor. Implemente la clase Autor, considerando que éstos se caracterizan por nombre y biografía. El autor debe poder devolver/modificar el valor de sus atributos.

![image](https://user-images.githubusercontent.com/55964635/136683216-6ee5a386-e914-4411-959a-4be3ea74b6bb.png)

```b)```  Modifique el programa ppal. (carpeta tema 4) para instanciar un libro con su autor, considerando las modificaciones realizadas en A). Los datos se ingresan por teclado.

<h1 align="center">Teoria</h1>
<h1 align="center">Resoluciones</h1>

Ejercicio_1_Parte1
==================
Ejercicio_2_Parte1
==================
Ejercicio_3_Parte1
==================
Ejercicio_4_Parte1
==================
Ejercicio_5_Parte1
==================

Ejercicio_1_Parte2
==================
Ejercicio_2_Parte2
==================
Ejercicio_3_Parte2
==================
Ejercicio_4_Parte2
==================
Ejercicio_5_Parte2
==================

Ejercicio_1_Teoria
==================
Ejercicio_2_Teoria
==================
Ejercicio_3_Teoria
==================



#  README
## Estructura de Datos
### Que son las estructuras de datos?
* Es un forma de organizacion, gestion y almacenamiento de datos que permite un acceso y modificacion eficaces. Un poco mas resumido es una coleccion de valores de datos.

### Cuales son las estructuras basicas que debemos conocer?
* La estructuras de datos basicas que debemos utilizar son: Array, listas enlasadas, Tabla de Hash, Pila, Cola, Arbol, Grafico.

### Como funciona un array(arreglo)?
* Son estructuras de datos que alamecena el mismo tipo de dato en ubicaciones de memoria contiguas.
* Algunas de las operaciones básicas sobre Arrays:
Inserción: Insertar un elemento determinado en un índice concreto del array
Eliminación: Borrar un elemento determinado de la matriz
Búsqueda: Buscar un elemento determinado en el array
Actualización: Actualizar un elemento de una matriz en un índice determinado
Recorrer: Imprimir o recorrer todo el array

### Como funciona un Linked List(lista enlazada)?
* Similar al array tambien almacena el mismo tipo de dato, los datos se almacenan en forma de nodos y cada nodo puede conectarse a otro nodo con ayuda de algunos punteros o referencias al siguiente nodo. Hay dos partes en nodos es decir la parte de datos y la parte de punteros o referencia. La parte de datos almacena los datos del nodo, mientras que la parte de punteros o referencias almacena la dirección del siguiente nodo (si lo hay).
* En la imagen anterior, la "Cabeza" apunta al primer nodo de la lista enlazada y el último nodo de la lista enlazada apunta a "Nulo", es decir, no hay ningún nodo presente después de ese nodo.
* Algunas de las operaciones básicas de las listas enlazadas:
Inserción: Aquí, usted tiene que insertar el nodo en la lista enlazada. Tienes que insertar el nodo al final de la lista enlazada o al principio de la lista enlazada o en cualquier lugar entre la lista enlazada.
Borrado: En la operación de borrado, tienes que borrar el nodo desde el principio, es decir, tienes que borrar el nodo principal o tienes que borrar cualquier nodo de la lista enlazada.
Búsqueda: Se le dará un elemento y tendrá que buscar ese elemento en la lista enlazada.
Recorrer: Recorrer toda la lista enlazada para obtener todos y cada uno de los elementos de la lista enlazada.

### Como funciona un Hash Table(tabla de hash)?
* Se utiliza para almacenar los datos en forma de par "Clave-valor", tendremos que utilizar algun valor a dato y basandoce en esos datos generar una clave y con la ayuda de esa clave, almacenara el valor de la tavbla Hash y si la entrada esta distribuida uniformemente, la tabla Hash realizara las operaciones de insercción, borrado y busqueda al mismo tiempo O(1)
El proceso de generar clave y almacenar los datos basados en esa clave se llama"Hashing".Para generar la clave a partir de los datos, necesitamos una función conocida como "Función Hash". La función Hash tomará los datos como entrada y dará la clave como salida.

### Como funciona un grafo?
* Es similar a los arboles, es decir es una estructura de datos no lineal que almacena los datos en forma de nodos y todos los nodos estan conectados entre si con la ayuda de aristas, la diferencia entre los arboles y grafos esque en un grafo hay un cilo y en un arbol no hay.
* Un grafo está formado por un conjunto finito de nodos y un conjunto finito de aristas que se encargan de conectar los nodos.
* Los tipos de grafos son los siguientes
Gráfico dirigido: Aquí las aristas apuntarán a algún nodo, es decir, tendrás una flecha apuntando hacia un nodo desde un nodo.
Gráfico no dirigido: Aquí no hay flechas entre los nodos. El ejemplo anterior es un ejemplo de un gráfico no dirigido.
Algunas de las técnicas más comunes para recorrer un gráfico son: Búsqueda en profundidad (DFS)
Búsqueda en profundidad (BFS)
### Como funciona un arbol?
* Es una estructura de datos no lineal y jerarquica que se utiliza para almacenar datos en forma de nodos, aqui tenemos nodos y todos los nodoso estan conectados entre si con la ayuda de aristas que se dibujan entre ellos.
* Un nodo padre puede no tener un hijo un hijo o mas de un hijo. Pero el nodo hijo no puede tener mas de un padre.
Algunos de los términos relacionados con los árboles son

Raíz: La raíz es el nodo que está presente en la parte superior del árbol. Sólo puede haber una raíz en un árbol determinado.
Padre: Todos los nodos que tienen al menos un hijo se llaman nodos padres.
Hijo: El nodo que está debajo del nodo padre se llama nodo hijo del nodo padre.
Hoja: El nodo que tiene cero hijos se llama nodo hoja.
Algunos de los tipos de árboles son: 
Árbol general
Árbol binario
Árbol de búsqueda binaria
Árbol AVL
Árbol rojo-negro
Árbol N-ario



# Diseño Arquitectonico EVO HEALTHY FOODS

-[Contexto](#contexto)
- [Módulo de Compras](#módulo-de-compras)
  - [Funcionamiento del Módulo de Compras](#funcionamiento-del-módulo-de-compras)
  - [Módulos del Módulo de Compras](#módulos-del-módulo-de-compras)

# Introducción
El diseño arquitectonico de nuestra empresa muestra como es toda la estructura de nuestra empresa mediante un diagrama de modelo c4, dividido en Contexto, Contenedores y Componentes.

## Contexto
Este nivel proporciona una vista general de cómo la empresa interactúa con su entorno es decir como se muestra el diseño por encima, y como interactuan las entidades (personas) con la empresa y el software.
### Administrador(Person)
* Es el que administra todo el sistema y realiza modificaciones en el inventario.
### EVO HEALTHY FOODS(Software System)
* Es el sistema de la página web y la aplicación movil de la empresa.
### Inventario(Software System)
* Es el software de inventario de la empresa que se encarga de los productos que se envian a las sucursales.
### Proveedor(Extern Person)
* Es el encargado de abastecer el inventario.
### Contador(Person)
* Es el responsable de registrar los ingresos de la empresa y realizar las cuentas.
### Servidor(Software System)
* Es el software del servidor del sistema, encargado de que mantener la página web.
### Sistemas de pago(Extern Software)
* Proveedores de pago externo como paypal o sistemas bancarios para que los clientes puedan pagar.
### Sistema de verificación(Extern Software)
* Realiza el proceso de autorización y autorización de pago del usuario y la página web.
### Sucursales(Software System)
* Son las sucursales fisicas de venta de los alimentos y productos saludables.
### Repartidor(Person)
* Trabajador de la empresa encargado de repartir comida de la empresa desde las sucursales.
### Sistemas de geolocalización(Software System)
* Uso de sistemas de seguimiento en linea para las entregas y la seguridad del repartidor.
### Cliente
* Usuario de la página web o aplicación movil para el pedido de comida.


# Módulo de Compras

Este módulo de compras abarca desde el momento en que el usuario ingresa a la página hasta la finalización de la compra de un producto.

## Funcionamiento del Módulo de Compras

1. **Acceso Inicial:**
   Cuando un usuario accede a la página de la empresa, la interfaz se adapta al dispositivo utilizado (móvil o web). A través de una petición al servidor mediante HTTPS, se cargan los datos estáticos de la página, mostrando la página principal al público general. 
   - La página principal presenta restricciones de seguridad y simplicidad; es decir, los usuarios que no tienen una cuenta afiliada no podrán acceder a funciones básicas de compra, configuración del perfil, historial, etc. Esta limitación se debe a que no están afiliados a la empresa y, por ende, no hay datos que cargar o proporcionar para un funcionamiento óptimo.

2. **Visualización de Productos:**
   Los usuarios pueden visualizar los productos cargados desde la base de datos a través de una consulta encriptada al gestor de la base de datos. La comunicación se realiza mediante una petición HTTPS y SQL (No relacional cuando la empresa escale a gran nivel).
   - Si un usuario está interesado en adquirir un producto de una sucursal, o desea añadirlo al carrito, se redirigirá a una pestaña de inicio de sesión o registro. Durante este proceso, ocurren varias acciones internas que pueden ser visibles para el usuario:
     1. Si el usuario intenta iniciar sesión, se introducen los datos en el gestor de base de datos para verificar las credenciales de acceso. Si la cuenta existe, se utiliza el módulo de correo electrónico para generar un mensaje de verificación. En caso de que las credenciales sean incorrectas, se detiene la búsqueda y se muestra un mensaje de error al usuario.
     2. Si el usuario intenta crear una nueva cuenta, se verifica en la base de datos la existencia de credenciales idénticas. Si no existen, se procede a la creación de la cuenta, enviando un correo para confirmar que el usuario es una persona real, además de encriptar las credenciales por motivos de seguridad.

> En este punto, el usuario ya ha iniciado sesión y las credenciales se almacenan en la caché del dispositivo para facilitar el acceso a diversas secciones. Si el nivel de acceso es insuficiente, el sistema redirige al usuario a la página principal.

3. **Acceso a Funciones:**
   Con las credenciales iniciadas, el usuario tiene acceso a funciones previamente restringidas, aunque la disponibilidad de estas puede variar según el tipo de usuario. Gracias a Laravel y PHP, se implementa un sistema de seguridad a través del front-end. Las siguientes opciones cargan automáticamente datos relacionados desde la base de datos mediante el gestor correspondiente:
   - **Sección de Perfil:** Carga los datos relacionados al usuario para la modificación o seguimiento de las transacciones realizadas y los productos almacenados en el carrito de compras.
   - **Postulación:** Esta página contiene un formulario que se envía al módulo correspondiente, donde será evaluado por Recursos Humanos de una sucursal cercana. Si la postulación es aceptada, se enviará un correo al usuario y se mostrará una notificación en la página sobre el estado de su solicitud.
   - **Compra de Productos:** En esta sección se pueden realizar transacciones. No se añadirá ni modificará ningún dato relacionado con la compra en la base de datos hasta que el pedido sea confirmado. Esto previene incongruencias por registros ficticios. Una vez confirmado, se genera una factura a través del módulo de contabilidad, y se envía por correo al usuario, quien podrá ver la transacción en su historial.
     1. Al cargar la compra en la base de datos, el empleado encargado de la preparación recibe el pedido y lo procesa, actualizando el progreso en el servidor para informar al usuario.
     2. Una vez que el pedido está listo, el repartidor recibe la información necesaria para la entrega. Utilizando el módulo de ubicación bidireccional, tanto el cliente como el repartidor pueden realizar un seguimiento de la entrega.
     3. Al recibir el pedido, el cliente confirma la entrega y el repartidor actualiza el estado del pedido en la base de datos como "entregado".

## Módulos del Módulo de Compras

Los módulos especializados y API utilizados en este contexto son los siguientes:

1. **Módulo de Correo:** Este módulo recibe un conjunto de datos, incluyendo mensajes y archivos adjuntos, y los envía al correo correspondiente.
2. **Módulo de Pago:** Funciona con una API externa por motivos de seguridad y cumplimiento legal, actuando como intermediario para verificar y confirmar las transacciones.
3. **Módulo de Postulación:** Recibe las solicitudes de empleo en la empresa, conectado a Recursos Humanos para su verificación y aprobación, utilizando el módulo de correo para notificar a los solicitantes.
4. **Módulo de Factura:** Este módulo facilita la búsqueda de datos relacionados con artículos, productos y períodos de tiempo, asistiendo en las auditorías.

## Contenedores

### Servidor
#### Funciónes
El servidor es el contenedor encargado de alojar la página web y los servicios asociados a su vez responde a las solicitudes de los clientes y administra la lógica de negocio y las operaciones del sistema.
* Contiene una aplicación web encargada de facilitar la navegación
* Contiene una API encargada de darle funcionalidades a la página web
* Contiene un sistema de autentificación, que sirve para verificar la identidad del admin, se conecta a la API para funcionar
* Contiene un Background Worker, que se encarga de realizar las tareas en segundo plano
* Contiene una base de datos relacional la cual sirve para guardar todos los datos modificados por el administrado

#### Relaciones
Se relaciona con el administrador, ya que este se encarga de su correcto funcionamiento, por otro, lado se relaciona con el sistema EVO-Healthy-Foods porque está se aloja en el servidor

### Inventario
#### Funciónes
El inventario es un sistema dedicado al almacenamiento y gestión de los productos disponibles. Es responsable de registrar entradas, salidas y mantener actualizada la cantidad de productos en stock.
* Contiene una aplicación web encargada de facilitar la navegación
* Contiene una API encargada de darle funcionalidades a la página web
* Contiene un sistema de autentificación, que sirve para verificar la identidad del admin, se conecta a la API para funcionar
* Contiene un sistema de reportes, se encarga de generar informes periódicos o bajo demanda sobre el estado del inventario, las entradas y salidas de productos, los pedidos de proveedores, y otros datos relevantes para la gestión del almacén.
* Contiene un sistema almacenamiento de archivos, gestiona el almacenamiento de archivos como imágenes de productos, documentos de proveedores, facturas, y otros archivos relacionados con la operación del almacén.
* Contiene un sistema de escaneo de codigos de barras el cual sirve para registrar entradas y salidas del inventario de manera rápida y precisa mediante escáneres de código de barras.
* Contiene una base de datos relacional la cual almacena toda la información sobre los productos, niveles de stock, movimientos de inventario, proveedores.
#### Relaciones
se relaciona con el administrador asi como con el sistema EVO-Healthy-Foods porque se encarga de gestionar los productos asi como de mandar los pedidos

### Inventario V2
#### Funciónes
El inventario es un sistema dedicado al almacenamiento y gestión de los productos disponibles. Es responsable de registrar entradas, salidas y mantener actualizada la cantidad de productos en stock.
* Contiene una base de datos especificamente para el inventario
* Contiene una interfaz en la que se puede acceder a un informe de costos e ingresos para los contadores
* Contiene un sistema que permite actualizar la base de datos por parte de la pagina web, la aplicación móvil o los proveedores
* El inventario cuenta con un supervisor que se encarga de solicitar productos a los proveedores cuando es necesario y gestionar las entregas de productos a la sucursal
#### Relaciones
Se relaciona con el proveedor, el contador, los administradores, el sistema de EVO-Healthy-Foods y las sucursales.

### EVO HEALTHY FOODS
El cliente entrará a la aplicación móvil o web y podrá iniciar sesión a la empresa .
En la aplicación web se podrá hacer búsqueda y compras en el navegador y en la aplicación móvil estará limitada a la búsqueda, elección y compra de productos. Todo eso lo harán a partir de una API. En la parte de la app web pues se usará un endpoint de navegación y todos sus datos estarán en la base de datos principal. Por otro lado en la app móvil se navegará igual por una API y se podrán guardar las compras en un endpoint, este endpoint también estará compartido por la app web al igual que el endpoint para productos que ambos lo tendrán para poder ver el estado que tienen los productos; tanto el endpoint productos y compras sus datos estarán en la base de datos principal. Además la base de datos tendrá un respaldo externo a los contenedores  por si la BDD principal da un error. Por ultimo, si el cliente quiere hacer una compra de algún producto o bien comida saludable, se le pedirá una verificación de sus datos personales y de localización, luego de esto se procederá a con el sistema de pago que es la parte donde el cliente pagará el producto para y luego proceder con el envío


## Componente
### EVO HEALTHY FOODS
Se podrán entrar tanto en la aplicación web como en la app móvil y estarán unidos a un componente de controlador de productos para el registro de productos y su compra y este también tendrá una división que será entre el Patrón de diseño de pago  y el Componente de seguridad. El primero que es de el pago de productos estará relacionado por un externo que es el Sistema de pago; y el segundo es el Componente de seguridad que va a cargo de la autorización del pago y su verificación por ejemplo un correo y estará relacionado a un externo que es el Sistema de verificación. Y por ultimo tanto el diseño de pago de productos como el componente de seguridad tendrán una relación con la Seguridad privada de Encriptación que servirá para la seguridad y protección de los datos que se intercambien. Todo unido por API.


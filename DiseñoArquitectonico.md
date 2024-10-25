# Diseño Arquitectonico EVO HEALTHY FOODS

-[Contexto](#contexto)
- [Módulo de Compras](#módulo-de-compras)
  - [Funcionamiento del Módulo de Compras](#funcionamiento-del-módulo-de-compras)
  - [Módulos del Módulo de Compras](#módulos-del-módulo-de-compras)
  - [Módulo de pedido](#módulo-del-pedido)

# Introducción
El diseño arquitectonico de nuestra empresa muestra como es toda la estructura de nuestra empresa mediante un diagrama de modelo c4, dividido en Contexto, Contenedores y Componentes.

## Contexto
Este nivel proporciona una vista general de cómo la empresa interactúa con su entorno es decir como se muestra el diseño por encima, y como interactuan las entidades (personas) con la empresa y el software.
### Requisitos en los que se relaciona
### RF-003
El sistema gestionará los pedidos para asegurar una coordinación eficiente y rápida en su entrega, proporcionando seguimiento en tiempo real para los clientes.
### RF-004
El repartidor podrá visualizar la ruta más óptima para entregar el producto al cliente, así mismo el cliente deberá ser capaz de visualizar el seguimiento del paquete hasta su entrega.
### RF-005
El sistema proporcionará una visualización de los ingresos y egresos que se tienen en determinados periodos de tiempo, con las vistas requeridas para una auditoría financiera, bajo usuarios con niveles de acceso específicos

### Función del Diagrama Contexto
El mapa inicia con el cliente, el cliente inicia sesión en un Sistema de Registro de usuario, que se encargada de registrar y verificar la información del usuario, luego el cliente tiene acceso a la página principal o a la aplicación móvil. Luego pasamos a la aplicación principal EVO HEALTHY Foods, que es el software principal de la empresa. 

De ahí se divide en 5 secciones, a la izquierda se encuentra el servidor que se encarga de mantener el servidor de la página web del sistema. Arriba se encuentra el administrador, que se encarga de administrar el sistema y el funcionamiento de general de la empresa. A un lado se encuentra la base de datos en donde tiene las opciones de leer y escribir los datos de la empresa en la base de datos, que lo mantiene un ingeniero de datos encargado de optimizar, modificar y mantener la base de datos. Una última bifurcación que hay en el sistema principal es al momento de que el usuario quiera realizar pedidos en la página, primero se verifica y actualiza las existencias de los productos con el inventario, luego el sistema se encarga de procesar el pedido al sistema de pedidos, se realiza la verificación de la compra del usuario, para prevenir compras accidentales o robos, se procede al pago del pedido en un sistema de pago, con la posibilidad de optar por proveedores de pago externos  como paypal o sistemas bancarios como Santander bbva, bancomer, o incluso pago en efectivo en Oxxo. Una vez procedido el pago se realiza la búsqueda de los productos en el inventario. 

Un proveedor es el encargado de proveer productos al inventario para la realización de los platillos o suplementos alimenticios, un contador es el responsable de registrar los ingresos y realizar las cuentas del inventario. Regresando al inventario se encarga de abastecer la infraestructura de la sucursal en donde se venden los productos y es donde se prepararán los pedidos. El cual tiene un sistema de geolocalización de los pedidos y el repartidor de la empresa, para mantener seguridad del repartidor y que el usuario pueda localizar el pedido. Por ultimo una vez que se escoge un repartidor para enviar el pedido se envía al cliente y se repite el ciclo.

### Entidades
#### Administrador(Person)
* Es el que administra todo el sistema y realiza modificaciones en el inventario.
#### EVO HEALTHY FOODS(Software System)
* Es el sistema de la página web y la aplicación movil de la empresa.
#### Inventario(Software System)
* Es el software de inventario de la empresa que se encarga de los productos que se envian a las sucursales.
#### Proveedor(Extern Person)
* Es el encargado de abastecer el inventario.
#### Contador(Person)
* Es el responsable de registrar los ingresos de la empresa y realizar las cuentas.
#### Servidor(Software System)
* Es el software del servidor del sistema, encargado de que mantener la página web.
#### Sistemas de pago(Extern Software)
* Proveedores de pago externo como paypal o sistemas bancarios para que los clientes puedan pagar.
#### Sistema de verificación(Extern Software)
* Realiza el proceso de autorización y autorización de pago del usuario y la página web.
#### Sucursales(Software System)
* Son las sucursales fisicas de venta de los alimentos y productos saludables.
#### Repartidor(Person)
* Trabajador de la empresa encargado de repartir comida de la empresa desde las sucursales.
#### Sistemas de geolocalización(Software System)
* Uso de sistemas de seguimiento en linea para las entregas y la seguridad del repartidor.
#### Cliente
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

## Relaciones del Módulo de compras

> **RF-001**: El sistema deberá reconocer de manera efectiva el correo y contraseña del usuario al iniciar sesión para poder realizar cualquier compra en la página web.
> **RF-002**: El sistema tendrá que hacer envío de un correo electronico para asegurar que se completo el registro de pago del cliente en nuestros productos.
> **RF-004**: El repartidor podrá visualizar la ruta más óptima para entregar el producto al cliente, así mismo el cliente deberá ser capaz de visualizar el seguimiento del paquete hasta su entrega.
> **RF-005**: El sistema proporcionará una visualización de los ingresos y egresos que se tienen en determinados periodos de tiempo, con las vistas requeridas para una auditoría financiera, bajo usuarios con niveles de acceso específicos
> **RF-018**: El sistema debe permitir agregar, modificar y eliminar productos del inventario.
> **Requerimientos de Seguridad**: La pagina debe implementar autenticación segura, como lo es HTTPS, y encriptación de datos sensibles, por ejemplo contraseñas y datos bancarios.
> **Requerimiento de la base de datos**: El sistema alojará sus bases de datos en un lugar seguro para proteger la privacidad de los usuarios.

- Se relaciona con el requisito Rf-001, RF-002 en cuanto se trata del ingreso a la pagina, pues esto requiere de estar logueado para poder entrar, en el cual utiliza modulos de correo por seguiridad y notificaciones.
- Relaciona al requisito RF-004 en el sentido de permitir localizar el pedido del repartidor y el destino de entrega.
- Relaciona levemente al requisito RF-005 a nivel cliente, con esto refiere al momento de generar factura y proporcionarle a un cliente el historial de transacciones que ha hecho, esto siendo parcial para el cliente, en cuanto a los datos totales pueden ser procesados por el mismo modulo con un nivel de acceso superior (Ejemplo. Auditor).
- Esta relacionado al requisito RF-018 por facilidad de la pagina, siendo en esencia el funcionamiento de un CRUD automatico, dado que al finalizar una compra de un pedido, es natural que se agregue la nueva transacción, se reste a la cantidad de productos del inventario, actualice los datos de estos, etc.
- Se relaciona con la seguridad y la base de datos, es decir, un intermediario entre la base de datos y el backend, sirve como medida de seguridad que asegura la integridad de privacidad de los usuarios al ser automatico, dicho de otro modo, ninguna persona interna podría modificar datos personas del cliente o siquiera verlos, pues estos se encriptan; en cuanto a la base de datos permita evitar colapsos o inyecciones query.


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

### Módulo de Pedido
El cliente accede a la página web, en la cual tiene la opción de agregar productos al carrito tanto desde la página principal de sugerencias, como desde el buscador para seleccionar aquellos que sean de su preferencia específica. Los productos a los que se pueden acceder desde la sección de sugerencias y los de buscador son consultados desde una base de datos específica para el inventario. Después de seleccionados todos los productos en el carrito, se solicita el pedido a los cocineros de una sucursal. Una vez que estos hayan confirmado la compleción del mismo, se le notifica a la parte del pedido para que proceda al pago. Tanto el pedido como el repartidor son rastreados por GPS. Después de todo este procedimiento, el repartidor finalmente le entrega el producto al usuario en su ubicación.
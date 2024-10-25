# Diseño Arquitectonico EVO HEALTHY FOODS

-[Contexto](#contexto)

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

### EVO HEALTHY FOODS
El cliente entrará a la aplicación móvil o web y podrá iniciar sesión a la empresa .
En la aplicación web se podrá hacer búsqueda y compras en el navegador y en la aplicación móvil estará limitada a la búsqueda, elección y compra de productos. Todo eso lo harán a partir de una API. En la parte de la app web pues se usará un endpoint de navegación y todos sus datos estarán en la base de datos principal. Por otro lado en la app móvil se navegará igual por una API y se podrán guardar las compras en un endpoint, este endpoint también estará compartido por la app web al igual que el endpoint para productos que ambos lo tendrán para poder ver el estado que tienen los productos; tanto el endpoint productos y compras sus datos estarán en la base de datos principal. Además la base de datos tendrá un respaldo externo a los contenedores  por si la BDD principal da un error. Por ultimo, si el cliente quiere hacer una compra de algún producto o bien comida saludable, se le pedirá una verificación de sus datos personales y de localización, luego de esto se procederá a con el sistema de pago que es la parte donde el cliente pagará el producto para y luego proceder con el envío


## Componente
### EVO HEALTHY FOODS
Se podrán entrar tanto en la aplicación web como en la app móvil y estarán unidos a un componente de controlador de productos para el registro de productos y su compra y este también tendrá una división que será entre el Patrón de diseño de pago  y el Componente de seguridad. El primero que es de el pago de productos estará relacionado por un externo que es el Sistema de pago; y el segundo es el Componente de seguridad que va a cargo de la autorización del pago y su verificación por ejemplo un correo y estará relacionado a un externo que es el Sistema de verificación. Y por ultimo tanto el diseño de pago de productos como el componente de seguridad tendrán una relación con la Seguridad privada de Encriptación que servirá para la seguridad y protección de los datos que se intercambien. Todo unido por API.
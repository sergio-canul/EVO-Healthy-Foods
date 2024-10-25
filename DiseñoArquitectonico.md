- [Módulo de Compras](#módulo-de-compras)
  - [Funcionamiento del Módulo de Compras](#funcionamiento-del-módulo-de-compras)
  - [Módulos del Módulo de Compras](#módulos-del-módulo-de-compras)

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
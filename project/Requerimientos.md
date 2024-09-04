<h1 align="center">
  :green_circle: Requerimientos :green_circle:
</h1>

> [!Descripción] Empresa de producción y entrega de comida saludable para comensales.

*Publico objetivo* siendo en el pueblo de Dzemul.

___

## Requerimientos funcionales

### 1. [RF-001]

> *Rutas*: El programa deberá ser capaz de mostrar la dirección del repartidor como del cliente en "tiempo real" además de un codigo de seguimiento para cada pedido, bajo esta premisa y una interfaz, el cliente puede apreciar recorrido hasta sí, como el repartidor puede conocer el destino
>> **Con esto se sugiere el uso de api de ubicación, por ejemplo, google maps**

### 2. [RF-002]

> *Logistica*: Dado la gran cantidad de pedidos, se debe ser capaz de optimizar los recursos en tanto sea posible, por ello, una vez obtenido un lote de productos a entregar, se debe organizar automaticamente en la ruta más eficiente para la entrega de productos
>> *Con esto se evitará la redundacia de rutas, por ejemplo, tener dos entregas en una misma cuadra, entregarlas en el mismo sitio en lugar de regresar tiempo después*

### 3. [RF-003]

> *Gestor de gastos*: Los usuarios de cierto nivel de acceso, deberán ser capaces de visualizar el seguimiento financiero que tiene la empresa, ya sea para la toma de decisiones como para auditorias, este deberá ser capaz de poder apreciar el resumen detallado de los ingresos y egresos que se ha tenido durante cierta cantidad de tiempo determinada.

### 4. [RF-004]

> *Interfaz cliente-server*: Mediante una plataforma movil, web los usuarios podrán visualizar los productos y realizar un pedido, con esto los repartidores y personal pueden saber quien y que fue lo pedido.
>> Con una incorporación adicional que permita atención al cliente, así como ayuda para consultas, quejas, seguimiento, historial.

___

## Requerimientos no funcionales

___

## Requerimientos de sistema

### 1. [!RS-001]

> *Front-End*: Utilización de recursos para diseño de interface siguiendo las reglas de diseño de UX, para ello se recomienda los más usuale, siendo el paquete web (html, javascript, php, css) para paginas. En cuanto al diseño en moviles se puede utilizar Flutter en conjunto con Dark.

### 2. [!RS-002]

> *Back-end*: Se espera seguir las buenas practicas de la programación, además de ser un codigo modular y enfocado a microservicios, bajo esta premisa será facilmente optimizado y cambiar funciones especificas sin interferir en otras funciones.

### 3. [!RS-003]

> *Arquitectura de software*: Dado el tipo de programá el modelo más optimo para utilizar sería el sistema enfocado a microservicios, pues deriva en el uso de varias apis, ya sea para el seguimiento, uso de telefonia o similar para la atención a clientes, el analisis fiscal dependiendo de la zona para su gestions, pero al mismo tiempo puede utilizarse para contadores que gestionene recursos de la empresa.

### 4. [!RS-004]

> *Nube*: La nube será utilizada para alojar los datos de los clientes y el personal, de igual forma para almacenar el propio pograma o variantes como las paginas web.
>> *Se puede utilizar host como AWS, Azure, GoogleCloud, OAuth2 o JWT*

### 5. [!RS-005]

> *Base de datos*: Dado la gran cantidad de clientes que involucra una empresa de talla nacional o posibilidad de volverse una, se deberá utilizar la arquitectura de base de datos no basada en sql, por ello debe preveerse los requisitos que este tipo de sistemás necesitan.
>> *Seguridad de base de datos*: Dado el tipo de programa basado en compra, se espera utilizar encriptación y permisos para proteger los datos de usuarios.
>>> **Dado que el programa empezará desde 0 se debe preveer la escalabilidad que este puede llegar a tener, pero al no ser incial, debe optimizarse por lo cual es posible utilizar base de datos tipo SQL como MySql**

___

## Requerimientos de usuarios

### 1. [!RU-001]

**Enfocada a Clientes**

1. **Interfaz Intuitiva**: Acceso a una interfaz fácil de usar para realizar pedidos de comida, personalizar opciones, y pagar en línea.
2. **Registro y Autenticación**: Capacidad para crear cuentas, iniciar sesión, y recuperar contraseñas.
3. **Seguimiento de Pedidos**: Posibilidad de rastrear en tiempo real el estado de sus pedidos.
4. **Preferencias de Usuario**: Guardar preferencias alimenticias y pedidos anteriores para facilitar futuras compras.
5. **Notificaciones**: Recibir alertas sobre promociones, estado del pedido y recordatorios.

### 2. [!RU-002]

**Enfocada hacia los administradores**

1. **Gestión de Usuarios**: Capacidad para agregar, modificar o eliminar cuentas de usuario.
2. **Gestión de Inventario**: Control y actualización de inventarios, incluyendo alertas sobre escasez de ingredientes.
3. **Generación de Reportes**: Acceso a reportes de ventas, inventario, y rendimiento del negocio.
4. **Control de Acceso**: Definir roles y permisos para diferentes tipos de usuarios (ej. gerente, cocinero, repartidor).
5. **Configuración del Sistema**: Capacidad para configurar y personalizar el sistema, como horarios de entrega, tarifas de envío, y descuentos.

### 3. [!RU-003]

**Enfocada a Repartidores**

1. **Asignación de Pedidos**: Recibir automáticamente pedidos asignados y 2. detalles de entrega.
2. **Navegación**: Integración con mapas para optimizar rutas de entrega.
3. **Actualización de Estado**: Capacidad para actualizar el estado de los pedidos (en camino, entregado).

### 4. [!RU-004]

**Enfocada a Cocineros**

1. Recepción de Pedidos: Ver pedidos en tiempo real y gestionar el tiempo de preparación.
2. Gestión de Inventario de Cocina: Controlar la disponibilidad de ingredientes y comunicar escasez al administrador.

### 5. [!RU-005]

**Enfocada a Departamento de Marketing**

1. Gestión de Campañas: Capacidad para crear, gestionar y analizar campañas publicitarias y promociones.
2. Análisis de Datos: Acceso a datos de comportamiento de clientes para segmentación de mercado y creación de campañas dirigidas.

___

## Requerimientos empresariales

### 1. [!RE-001]

> *Recursos*: La producción y distribución de comida necesita de materiales prima, recusos humanos para la preparación y distribución, recursos financieros para los gastos generales.

### 2. [!RE-002]

> *Marketing*: El producto deriva de una empresa nacional, teniendo en cuenta que  se trata de una empresa relativamente pequeña, la relación con los clientes es crucial. De forma regular se necesita de medios publitarios para tener el apoyo nacional en sentido de brindar confianza a los clientes dado este respaldo.

### 3. [!RE-003]

> *Sostenibilidad financiera*: Se debe garantizar un flujo de ganancias regular, considerando los gastos iniciales, productos, recursos humanos y demás, con ello se debe cumplir la demanda que el mercado pueda llegar a tener, sin embargo, debe hacerse eficientemente para evitar sobredemanda o infravalorarlo.

### 4. [!RE-004]

> *Marco legal*: Cada producto debe aprobar las revisiones por parte de organizaciones nacionales, principalmente con la PROFECO dado el caracter de posibles preocupaciones de productos insalubres.
>> *Esto variará dependiento de la región geografica en la que se situe la sucursal de este, dado que cada lugar tiene diferencias legales*
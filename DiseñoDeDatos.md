# Diseño de Datos para la Página Web EVO-Healthy-Foods

- [Diseño de Datos para la Página Web EVO-Healthy-Foods](#diseño-de-datos-para-la-página-web-evo-healthy-foods)
- [Introducción](#introducción)
  - [Administrador](#administrador)
    - [Atributos](#atributos)
    - [Funciones](#funciones)
    - [Relaciones](#relaciones)
  - [Proveedores](#proveedores)
    - [Atributos](#atributos-1)
    - [Funciones](#funciones-1)
    - [Relaciones](#relaciones-1)
  - [Inventario](#inventario)
    - [Atributos](#atributos-2)
    - [Funciones](#funciones-2)
    - [Relaciones](#relaciones-2)
  - [Reseñas](#reseñas)
    - [Atributos](#atributos-3)
    - [Funciones](#funciones-3)
    - [Relaciones](#relaciones-3)
    - [Sucursal](#sucursal)
      - [Atributos\_Sucursal](#atributos_sucursal)
      - [Acciones\_Sucursal](#acciones_sucursal)
      - [Relaciones\_Sucursal](#relaciones_sucursal)
    - [Zona](#zona)
      - [Atributos\_Zona](#atributos_zona)
      - [Acciones\_Zona](#acciones_zona)
      - [Relaciones\_Zona](#relaciones_zona)
    - [Vehiculo](#vehiculo)
      - [Atributos\_Vehiculo](#atributos_vehiculo)
      - [Acciones\_Vehiculo](#acciones_vehiculo)
      - [Relaciones\_Vehiculo](#relaciones_vehiculo)
    - [Factura](#factura)
      - [Atributos\_Factura](#atributos_factura)
      - [Acciones\_Factura](#acciones_factura)
      - [Relaciones\_Factura](#relaciones_factura)
    - [Cocinero](#cocinero)
      - [Atributos\_Cocinero](#atributos_cocinero)
      - [Acciones\_Cocinero](#acciones_cocinero)
      - [Relaciones\_Cocinero](#relaciones_cocinero)
    - [Repartidor\_Cocinero](#repartidor_cocinero)
      - [Atributos\_Repartidor](#atributos_repartidor)
      - [Acciones\_Repartidor](#acciones_repartidor)
      - [Relaciones\_Repartidor](#relaciones_repartidor)


# Introducción

Esta página web tiene como objetivo ofrecer una plataforma para la venta de productos de fitness y comida saludable. Este documento detalla el diseño de datos necesario para soportar las funcionalidades clave del sistema.

## Administrador
### Atributos
* id_admin: Es entero designa un número de identificación del administrador.
* Username: Es string desgina el nombre de usuario del administrador.
* Email: Es string designa el correo electronico del administrador.
* Password_encrypted: Es string designa una contraseña encriptada para el administrador por seguridad.
* Login_Date: Es tipo date guarda la fecha del inicio de sesion del adiministrador.
* Modification_Date: Es tipo date guarda la fecha de modificación de los cambios realizados.

Estos atributos son privados debido a que solo tiene acceso el administrador para hacer los cambios.

### Funciones
* IniciarSesion(String): Da respuesta tipo lógico para acpetar el inicio de sesión del administrador.
* FechadeCambios(Date): Da respuesta tipo Date para mostrar la fecha para el historial de cambios.
* MostrarCambiosRealizados(): Muestra un historial de cambios para poder revertirlo y saber cual administrador realizo los cambios.
* GestionUsuarios(): Gestiona las cuentas de los usuarios.
* VisualizarInf_Usuarios(): Visualiza la información de las cuentas de usuario.
### Relaciones
* Tiene relación con los proveedores, usuario, inventario, usuario y soporte.

Las funciones son privadas solo los administradores pueden realizar las funciones de esta entidad. Gestionan los encargados de soporte, los proveedores, el inventario y las cuentas de usuario.

## Proveedores
### Atributos
* Id_provider: Es tipo entero desinga un numero de identificación del proveedor.
* Provider_Name: Es tipo string designa el nombre del proveedor.
* Contact_Num: Es tipo entero guarda el numero de contacto del proveedor.
* Adress: Es tipo string guarda la dirección del proveedor.
* Email: Es tipo string guarda el correo electronico del proveedor.
* Postal_Code: Es tipo entero guarda el codigo postal del proveedor.

Estos atributos son privados solo los proveedores tienen acceso a esta entidad.

### Funciones
* RegistrarProveedores(): Da respuesta tipo string registra a los proveedores autorizados.
* AbastecerInventario(Int): Abastece el numero de productos al inventario.
* ContactoProveedores(Int): Realiza el contacto a los proveedores.
### Relaciones
* Tiene relación con el administrador y el inventario.

Estas funciones son públicas ya que los administradores, proveedores y el inventario tienen acceso a las funciones. Estas funciones permiten proveer productos al inventario.

## Inventario
### Atributos
* Id_producto: Es tipo entero designa el numero de los productos del inventario. 
* Nombre_producto: Es tipo string guarda el nombre del producto.
* Categoría: Es tipo string designa la categoria del producto. 
* Cantidad: Es tipo entero designa la cantidad de productos. 
* Precio: Es tipo flotante designa el precio de los productos.
* Fecha_caducidad: Es tipo date designa la fecha de caducidad de los productos.

Estos atributos son privados solo los encargados del inventario tienen acceso a estos.

### Funciones
* AñadirProducto(Int): Da respuesta entero añade la cantidad de productos.
* MostrarProductos(): Muestra el nombre de los productos.
* EliminarProducto(Int): Da repuesta enteros elimina la cantidad de productos. 
* ModificarPrecio(Float): Modifica el precio de los productos. 
* ModificarFechaCaducidad(Date): Modifical la fecha de caducidad de los productos. 
### Relaciones
* Tiene relación con el administrador, proveedores, sucursales y productos.

Estas funciones son públicas tienen acceso los administradores y los proveedores aumentan la cantidad de inventario. Las funciones son para modificar la cantidad de productos y proveer productos para la venta en las sucursuales.

## Reseñas
### Atributos
* review_id: Es tipo entero desinga un número de identificación de la reseña.
* client_id: Es tipo entero relaciona el numero de identificador del cliente.
* product_id: Es tipo entero relaciona el número de identificación del producto.
* rating: Es tipo entero de 1 a 5 sirve para guardar la calificación del rating.
* review_text: Es tipo texto tiene la función de permitir escribir el texto de la reseña.
* date_review: Es tipo fecha guarda la fecha de la reseña.

Estos atributos son privados y públicos tienen acceso tanto los usuarios como los encargados de las reseñas.

### Funciones
* CalificarReseña(): Califica la reseña da tipo entero con su limite de 1 a 5.
* EscribirReseña(): Es tipo texto el usuario escribe la reseña acerca del producto.
* LeerReseña(): Es tipo texto permite leer la reseña escrita.
* EliminarReseña(): Es tipo lógico permite eliminar la reseña de los productos.
* ActualizarReseña(): Es tipo lógico permite actualizar la reseña antes ya públicada.
### Relaciones
* Tiene relación con los clientes y los pedidos.

Estas funciones son públicas se utiliza para la realización de las reseñas de los pedidos.

### Sucursal

> La sucursal es una infrastructura fisica que corresponde a un area de trabajo independiente

#### Atributos_Sucursal

- id_sucursal: Tipo int autoincremental como clave primaria e identificador unico de cada sucursal
- id_zona: Tipo int funciona como clave foranea referente a zonas, esto sirve para asignar varias sucursales dentro de una misma zona
- nombre: Tipo varchar o string que funciona para los usuarios como una identificación más común ante el publico
- descripcion: Tipo text permite poner una descripción referente a la sucursal
- direccion: Tipo text permite poner una dirección especifica sobre la localización de la sucursal

#### Acciones_Sucursal

> Cuando un usuario o persona solicita empleo o contratación hacia la empresa, esta solicitud se envia a las sucursales cercanas, la cual deside si contratar o no, asignadole el id_sucursal como identificador de donde deberá trabajar

#### Relaciones_Sucursal

- Una sucursal tiene varios empleados contratados
- Una sucursal puede tener registrados varios vehiculos en sí
- Una sucursal corresponde a una zona
- Una sucursal tiene varios productos y/o puede producirlos

### Zona

> La zona es comúnmente como un identificador general de la ubicación (Ejemplo, Zona norte de merida).

#### Atributos_Zona

- id_zona: Tipo int autoincremental como clave primaria e identificador unico de cada zona
- nombre: Tipo varchar o string que funciona como identificador comun
- ciudad: Tipo varchar o string que funciona como geolocalizador de zona más amplia
- estado: Tipo varchar o string que funciona como un geolocalizador mucho más amplio y ambiguo.

#### Acciones_Zona

> No tiene acciones directas, sin embargo, cuando una nueva sucursal es creada en automatico se le asiganará la zona correspondiente a la ubicación

#### Relaciones_Zona

- Una zona puede tener multiples sucursales

### Vehiculo

> Son los vehiculos asignados o registrados dentro de una sucursal cuales permite a los repartidores hacer su trabajo
> Se relaciona al requisito RF-003 (No lo cumple directamente, pero se requiere para poder lograrlo en ambito fisico o humano), pues para el reparto optimo de productos require de un vehiculo

#### Atributos_Vehiculo

- Matricula: Tipo varchar para poder ingresarla como corresponde, funciona como clave primaria (Temporalmente, puede ser sustituida por numero de serie) e identificador
- Modelo: Tipo varchar o string que permite dar el modelo
- Estado: Tipo varchar o string que permite conocer el estado en el que se encuentra el vehiculo
- Precio (En proceso de elección de agregar este atributo): Tipo Decimal(10,2) o double, permite saber el precio promedio que debe tener el vehiculo

#### Acciones_Vehiculo

> Sin acciones directas, sirve como medio de transporte que usará el empleado (repartidor) para la entrega de productos
> Se asgina a un repartidor

#### Relaciones_Vehiculo

- Un vehiculo puede tener varios repartidores (Ejemplo: Dependiendo del horario laboral, varios empleados pueden tener asignados este mismo)

### Factura

> Es una factura que involucra que se vendio, quien lo pidio, quien lo preparo, quien lo entregó, cuanto costo
> Se relaciona al requerimiento RF-005 (Auditoria), pues con este se puede realizar un seguimiento compleo de ingresos y egresos, con el respaldo de datos relacionados

#### Atributos_Factura

- id_factura: Tipo int autoincremental como clave primaria, este sirve como identificador de transacción
- id_pedido: Tipo int como clave foranea que identifica el numero de pedido para conocer quien compro un producto y que producto en cuestion ha sido comprado
- id_cocinero: Tipo int como clave foranea que permite identificar quien ha sido el empleado que preparó el producto (Puede servir como identificador de inutilidad laboral)
- id_repartidor: Tipo int como clave foranea que permite identificar quien ha sido el empleado que ha recibido y/o entregado el producto al cliente (Puede servir en caso de falta de entrega y responsabilidad)
- id_sucursal: Tipo int como clave foranea que permite identificar donde es que ha sido realizado el pedido o el origen del producto
- id_pago: Tipo int como clave foranea que permite identificar el metodo de pago, el estado de este pago, el monto y la fecha
- fecha: Tipo DateStamp, guarda la fecha en detalles hasta segundos actuales al momento de ser creada

#### Acciones_Factura

- Generar_factura_simple: Al comprar un producto se genera una variación de transacción "incompleta" cual solo relaciona el cliente que compro, el producto que ha sido comprado y por cuanto dinero (Protegido por nivel de acceso o implicado)
- Generar_factura_completa: Permite hacer una factura completamente terminada que permite vizualizar cada detalle del pedido desde la raiz (Datos privados de relacionados protegidos por seguridad)
- Resumen(Periodo): Permite generar un resumen de todas las transacciones hechas en un periodo de tiempo especificados (Devuelve un archivo que puede ser vizualizado de diversa forma dependiendo del estilo, restringida por sucursal)

#### Relaciones_Factura

- Una factura tiene un pedido implicado
- Una factura tiene un repartidor implicado
- Una factura tiene un cocinero implicado
- Una factura tiene una sucursal como origen implicada

### Cocinero

> Es un empleado con el cargo de cocinero, lo cual implica un nivel de acceso restringido pero ligeramente superior en algunas areas que clientes no pueden ver.
> Este tiene un detalle, dado que comparte gran cantidad de atributos similares a repartidor, puede esperarse una unificación de estos dos en uno solo, siendo una entidad unificada como empleado.

#### Atributos_Cocinero

- id_cocinero: Tipo int autoincremental como clave primaria a función de identificador del empleado
- id_usuario: Permite relacional al empleado con su cuenta general (Permite hacer un login general en lugar de bifurcaciones)
- id_sucursal: Tipo int como clave foreanea que permite ser asignado a una sucursal como empleado de dicha sucursal.
- fecha_contratar: Tipo date que funciona como registro del momento en el que fue contratado
- estado: Tipo varchar que funciona como validador que permite saber donde se muestra si el empleado esta activo, fue despedido, esta pendiente a ser contratado, renuncio u otro.
- curp: Tipo varchar o string que funciona como un identificador oficial
- rfc: Tipo varchar o string que funciona como identificador de trabajador adicional
- cuenta: Tipo varchar o string que permite proporcionar un numero de cuenta en el cual se le asginaría un sueldo

#### Acciones_Cocinero

- Renunciar(): Permite a cualquier empleado presentar la renuncia a la empresa o sucursal, en este caso no muestra nada más que un mensaje de renuncia completa o no (Boleado) al empleado, además cambia el estado de este empleado como "Renuncia".
- Cocinar_Producto(): Lejos de solo algo fisico, simplemente puede usarse para indicar que un pedido ha sido cocinado o preparado, no muestra nada más al empleado
- Cambio_sucursal(): El empleado puede solicitar un cambio de sucursal para seguir su labur, puede ser cambiado por gerentes
- Cambio_puesto(): El empleado puede solicitar un cambio de puesto de trabajo, aunque este estará sujeto a revisión, por lo cual no es seguro este cambio, de ser hecho este cambio se le modificara el puesto en su cuenta

#### Relaciones_Cocinero

- Un cocinero esta afiliado a una sucursal
- Un cocinero esta afiliado a un unico usuario (Referente a la cuenta que tiene email y password)

### Repartidor_Cocinero

> Este tiene un detalle, dado que comparte gran cantidad de atributos similares a repartidor, puede esperarse una unificación de estos dos en uno solo, siendo una entidad unificada como empleado.

#### Atributos_Repartidor

- id_repartidor: Tipo int autoincremental como clave primaria a función de identificador del empleado
- id_usuario: Permite relacional al empleado con su cuenta general (Permite hacer un login general en lugar de bifurcaciones)
- id_sucursal: Tipo int como clave foreanea que permite ser asignado a una sucursal como empleado de dicha sucursal.
- id_vehiculo: Tipo int como clave foranea que permite serle asignado un vehiculo en el cual pueda hacer el trabajo de la entrega de pedidos
- fecha_contratar: Tipo date que funciona como registro del momento en el que fue contratado
- estado: Tipo varchar que funciona como validador que permite saber donde se muestra si el empleado esta activo, fue despedido, esta pendiente a ser contratado, renuncio u otro.
- curp: Tipo varchar o string que funciona como un identificador oficial
- rfc: Tipo varchar o string que funciona como identificador de trabajador adicional
- cuenta: Tipo varchar o string que permite proporcionar un numero de cuenta en el cual se le asginaría un sueldo

#### Acciones_Repartidor

- Renunciar(): Permite a cualquier empleado presentar la renuncia a la empresa o sucursal, en este caso no muestra nada más que un mensaje de renuncia completa o no (Boleado) al empleado, además cambia el estado de este empleado como "Renuncia".
- Cambio_sucursal(): El empleado puede solicitar un cambio de sucursal para seguir su labur, puede ser cambiado por gerentes
- Cambio_puesto(): El empleado puede solicitar un cambio de puesto de trabajo, aunque este estará sujeto a revisión, por lo cual no es seguro este cambio, de ser hecho este cambio se le modificara el puesto en su cuenta
- Recogida_pedidos(): El repartidor lo usa para marcar cuales productos estan siendo recogidos por el repartidor para la entrega de estos mismos.
- Entregar_Pedido(): Simplemente requiere la participación del repartidor para confirmar que ido a entregar el producto al cliente, y el cliente para confirmar dicha entrega, puede servir como control de entrega y servicios.

#### Relaciones_Repartidor

- Un repartidor esta asingado a una sucursal
- Un repartidor tiene asignado un vehiculo
- Un repartidor esta afiliado a un unico usuario (Referente a cuenta donde esta email y password)












# Diseño de Datos para la Página Web EVO-Healthy-Foods

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
### Relaciones
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
### Funciones
* CalificarReseña(): Califica la reseña da tipo entero con su limite de 1 a 5.
* EscribirReseña(): Es tipo texto el usuario escribe la reseña acerca del producto.
* LeerReseña(): Es tipo texto permite leer la reseña escrita.
* EliminarReseña(): Es tipo lógico permite eliminar la reseña de los productos.
* ActualizarReseña(): Es tipo lógico permite actualizar la reseña antes ya públicada.
### Relaciones
* Tiene relación con los clientes y los pedidos.
Estas funciones son públicas se utiliza para la realización de las reseñas de los pedidos.








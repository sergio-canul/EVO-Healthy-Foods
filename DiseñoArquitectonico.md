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
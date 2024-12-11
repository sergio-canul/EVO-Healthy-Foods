# EVO Healthy Foods

## Integrantes

```md

  1. Sergio Canul (PM)
  2. Ricardo Maas (QA)
  3. Edrei Lizama (DEV)
  4. Alejandro Flores (DEV)
  5. Diego Pinzon (DEV)
  6. Gioser Dzib (DEV)
  7. Angel Pat (DEV)

```
# Tabla de contenido
- [EVO Healthy Foods](#evo-healthy-foods)
  - [Integrantes](#integrantes)
- [Tabla de contenido](#tabla-de-contenido)
- [Introducción](#introducción)
  - [Propósito](#propósito)
  - [Valores](#valores)
  - [Objetivo](#objetivo)
  - [Audiencia y Alcance](#audiencia-y-alcance)
    - [Audiencia](#audiencia)
    - [Alcance](#alcance)
  - [Referencias](#referencias)
- [Descripción del Proyecto](#descripción-del-proyecto)
  - [Perspectiva del producto](#perspectiva-del-producto)
  - [Caracteristicas del producto](#caracteristicas-del-producto)
  - [Clases y características de usuario](#clases-y-características-de-usuario)
    - [Cliente:](#cliente)
    - [Administrador del sistema:](#administrador-del-sistema)
    - [Repartidor:](#repartidor)
  - [Ambiente de operación](#ambiente-de-operación)
    - [Sociales](#sociales)
    - [Psicologicos](#psicologicos)
    - [Infraestructura](#infraestructura)
  - [Restricciones e implementaciones](#restricciones-e-implementaciones)
    - [Nutricional](#nutricional)
    - [Entrega a domicilio](#entrega-a-domicilio)
    - [Implicaciones con los usuarios](#implicaciones-con-los-usuarios)
    - [Los clientes](#los-clientes)
    - [El personal interno](#el-personal-interno)
    - [Repartidores](#repartidores)
    - [Problemas de negocio y derivados](#problemas-de-negocio-y-derivados)
  - [Documentacion del usuario](#documentacion-del-usuario)
    - [Introduccion](#introduccion)
    - [Requisitos del Sistema](#requisitos-del-sistema)
    - [Registro de Usuario](#registro-de-usuario)
    - [Iniciar Sesion](#iniciar-sesion)
    - [Navegacion en la Pagina](#navegacion-en-la-pagina)
    - [Proceso de Compra](#proceso-de-compra)
    - [Metodos de Pago](#metodos-de-pago)
    - [Seguimiento de Pedido](#seguimiento-de-pedido)
    - [Politicas de Devolucion y Reembolsos](#politicas-de-devolucion-y-reembolsos)
    - [Soporte al Cliente](#soporte-al-cliente)
    - [Seguridad y Privacidad](#seguridad-y-privacidad)
    - [Consejos y Recomendaciones](#consejos-y-recomendaciones)
  - [Suposiciones y dependencias](#suposiciones-y-dependencias)
    - [Factores Externos](#factores-externos)
    - [Factores Internos](#factores-internos)
- [Requerimientos](#requerimientos)
  - [Requerimientos del Sistema](#requerimientos-del-sistema)
  - [Requerimientos Funcionales](#requerimientos-funcionales)
    - [RF-001](#rf-001)
    - [RF-002](#rf-002)
    - [RF-003](#rf-003)
    - [RF-004](#rf-004)
    - [RF-005](#rf-005)
    - [RF-006](#rf-006)
    - [RF-007](#rf-007)
    - [RF-008](#rf-008)
    - [RF-009](#rf-009)
    - [RF-010](#rf-010)
    - [RF-011](#rf-011)
    - [RF-012](#rf-012)
    - [RF-013](#rf-013)
    - [RF-014](#rf-014)
    - [RF-015](#rf-015)
    - [RF-016](#rf-016)
    - [RF-017](#rf-017)
    - [RF-018](#rf-018)
    - [RF-019](#rf-019)
    - [RF-020](#rf-020)
    - [RF-021](#rf-021)
    - [RF-022](#rf-022)
  - [Requerimientos No Funcionales](#requerimientos-no-funcionales)
    - [Requerimientos del Producto](#requerimientos-del-producto)
    - [Requerimientos de Seguridad](#requerimientos-de-seguridad)
    - [Requerimientos de la entrega](#requerimientos-de-la-entrega)
    - [Requerimientos de ubicación](#requerimientos-de-ubicación)
    - [Requerimientos de la base de datos](#requerimientos-de-la-base-de-datos)
    - [Requerimiento de la actualizacion de la pagina](#requerimiento-de-la-actualizacion-de-la-pagina)
    - [Requerimiento de la página](#requerimiento-de-la-página)
    - [Requerimieno del navegador](#requerimieno-del-navegador)
    - [Requerimientos éticos](#requerimientos-éticos)
- [Diseño de Software](#diseño-de-software)
  - [Diseño de Datos](#diseño-de-datos)
  - [Diseño Arquitectonico](#diseño-arquitectonico)
  - [Diseño de Interfaz](#diseño-de-interfaz)

# Introducción

*EVO Healthy Foods* es una empresa que tiene por objetivo establecerse como la primera empresa en linea con la temática de "Comida Saludable" en Mérida, Yucatán. 

## Propósito
El proposito de la empresa es proporcionar opciones de comida saludable, rica y accesible a todos, fomentando un estilo de vida equilibrado y sano.

## Valores

- *Mejora continua:* Nos comprometemos a mejorar constantemente la calidad de nuestros productos y servicios.
- *Responsabilidad nutricional:* Ofrecemos alimentos que contribuyen positivamente a la salud de nuestros clientes.
- *Inclusión y equidad:* Nos esforzamos por incluir y apoyar a personas que han sido marginadas en el mercado laboral.

## Objetivo

1. Mejorar la dieta y salud de la población mediante la provisión de alimentos saludables.

## Audiencia y Alcance
### Audiencia
La audiencia para nuestra marca podría ser general, ya que una dieta saludable, variada y equilibrada es una necesidad básica en todos los humanos. Sin embargo, estamos conscientes de que no todas las personas tienen la oportunidad cuidar de su alimentación por cualquier circunstancia adversa o que algunas personas podrían encontrar problemas a la hora de consumir nuestros productos por situaciones particulares, por lo que apelaremos más que nada a personas que tengan un camino ya trazado en cuanto al entrenamiento físico y cuidado de la alimentación, o quienes estén determinados a incursionarse en él.
### Alcance
Nuestro alcance para empezar será local, abriendo una sucursal en Mérida. EVO Healthy Foods se rige por el valor de la mejoría constante, por lo que planeamos abrir más sucursales dependiendo de la aceptación del público ante nuestros productos y servicios.

## Referencias
> Marketing. (2022, January 31). Pasos para implementar el delivery en tu negocio - Cashlogy. Cashlogy. https://cashlogy.com/es/pasos-implementar-delivery-tu-negocio/
> 
> Palacios, C., & Palacios, C. (n.d.). Uso de aplicaciones móviles para intervenciones nutricionales. https://ve.scielo.org/scielo.php?script=sci_arttext&pid=S0798-07522020000200177
> 
> traqfood. (2024, June 12). “Food app”: Una tendencia en auge – traqfood. Traqfood. https://www.traqfood.com/es/blog/noticias-de-catering/article/food-app-una-tendencia-en-auge/
> 
> Martín, I. S. M., Fernández, M. G., & Yurrita, L. C. (2014). [Mobile applications for nutrition, dietetics and healthy habits; analysis and consequences of an increasing trend]. DOAJ (DOAJ: Directory of Open Access Journals), 30(1), 15–24. https://doi.org/10.3305/nh.2014.30.1.7398

# Descripción del Proyecto
   Este proyecto esta pensado para crear una empresa de alta eficiencia en producción y venta de alimentos saludables para los comensales, de igual forma contar con un amplio catalogo de suplementos alimenticios saludables con una visión expansionista e innovadora del mercado, al mismo tiempo mantener precios asequibles para toda la población.

## Perspectiva del producto
- Funcionalidad.- Los productos, alimentos o snacks deben estar bajo en azúcares y altos en fibra, satisfaciendo el hambre sin perjudicar o compremeter la salud.
- Diseño.- Los productos tendran un empaque atractivo y funcional que sea fácil de llevar, con información clara sobre los ingredientes y beneficios nutricionales.
- Mercado.- Nuestro producto tiene el mercado dirigido a personas activas y conscientes de su salud, utilizando redes sociales y marketing digital para conectar con su audiencia.
- Costos.- La empresa realiza un análisis de costos para asegurarse de que el precio de venta cubra los costos de producción y marketing, sin perder competitividad frente a otras marcas.
- Sostenibilidad.- Nuestros productos hacen uso de ingredientes orgánicos y empaques biodegradables, así como prácticas de producción que minimizan el impacto ambiental.
## Caracteristicas del producto

 1. Pagina web con un diseño atractivo
    ```md
     - Diseño limpio y moderno que refleje el enfoque en la comida saludadable
     - Debe mostrar información clara sobre los valores de la empresa
     - Debe ser una pagina web facil de darle mantenimiento
    ```
 2. Catalogo de productos
    ```md
     - Listado de todos los productos
     - Cada producto debe tener una imagen, descripción, información nutricional, ingredientes y precio
     - Debe tener filtros para que los usuarios puedan buscar productos por categorias
    ```
 3. Funcionalidad de pedidos en linea 
    ```md
     - Contará con un carrito de compras donde el usuario podra agregar productos y pagarlos para posteriormente ser enviados
     - Se integrará con plataformas de pago seguras 
     - El usuario tendrá la posibilidad de programar entregas o seleccionar un horario de entrega conveniente
    ```
## Clases y características de usuario
### Cliente:
1. Registro, inicio de sesión y gestión de su perfil.
2. Capacidad de agregar productos al carrito, realizar compras y recibir promociones.
3. Visualización del estado de sus pedidos en tiempo real y acceso al historial de pedidos.
### Administrador del sistema:
1. Gestión de usuarios, productos, pedidos e inventarios.
2. Acceso a auditorías e informes financieros.
3. Control de permisos y niveles de acceso para otros usuarios.
### Repartidor:
1. Visualización de pedidos asignados y rutas óptimas de entrega.
2. Actualización del estado de los pedidos (en camino, entregado).

## Ambiente de operación
### Sociales
* Evitar actos de discriminación, racismo o clasismo.
* Ambiente tranquilo libre de conflictos.
### Psicologicos
* Control de la productividad de los trabajadores para evitar bornout.
* Cuidado de las emociones.
* Reducción de estrés.
### Infraestructura
* Temperatura laboral adecuada.
* Optima iluminación.
* Circulación de aire.


## Restricciones e implementaciones
Las aplicaciones de comida y delivery tienen diversas implicaciones y restricciones dependiendo del enfoque al cual se pretenda enfocar

### Nutricional
*Implementación de dietas para una salud óptima basadas en alimentos nutritivos y adaptadas a las preferencias del usuario*

El enfoque nutricional adecuado debe adaptarse a las necesidades individuales de cada usuario, ya que las recomendaciones generalizadas suelen no ser efectivas y pueden generar contradicciones y problemas. En este contexto, las aplicaciones móviles de intervención nutricional enfrentan retos significativos, especialmente en términos de personalización y adherencia del usuario. 

Además, la falta de retroalimentación integrada y de apoyo social dentro de las aplicaciones es un factor crítico que afecta la motivación y la continuidad. Las aplicaciones que brindan retroalimentación oportuna y personalizada, ya sea a través de mensajes integrados o de redes sociales, tienden a ser más efectivas en fomentar cambios de comportamiento.

Las aplicaciones que optan por menús de comidas predefinidas suelen ser más eficientes en términos operativos, ya que evitan la complejidad de los análisis individualizados y permiten una experiencia más estandarizada tanto para el usuario como para el personal de cocina. Este enfoque facilita la contratación y gestión del personal culinario al enfocarse en recetas comunes y repetitivas, en lugar de adaptaciones individuales, lo que puede ser atractivo para un público más amplio.

El público objetivo principal de estas aplicaciones suelen ser jóvenes y adultos jóvenes, un segmento que se siente atraído por la conveniencia de las soluciones digitales y la personalización de servicios. A medida que se continúan desarrollando estas aplicaciones, es esencial enfocar esfuerzos en mejorar la experiencia de uso, la integración de retroalimentación y el apoyo social para maximizar el impacto positivo en los patrones alimenticios y la salud de los usuarios.


### Entrega a domicilio
El delivery enfrenta grandes problemas de logística que deben plantearse con anticipación y están limitados por rutas y lugares de entrega.

El éxito del servicio de entrega a domicilio depende de la planificación logística adecuada, que incluye la elección del modelo de delivery, la adaptación del menú y el uso de un empaque adecuado. Es fundamental establecer tiempos de entrega precisos y dar visibilidad a los clientes sobre el estado de sus pedidos.

### Implicaciones con los usuarios
md
Los usuarios como actores principales son los productores, los repartidores y los consumidores. Cada tipo de usuario tiene diferentes requisitos o los mismos pero con diferencias, de igual forma existen ciertos tipo de usuarios especificos como auditores o similares; las complicaciones se dan si el origen se vuelve una empresa "Centralizada" de cierta forma, similar a una cadena de comida similar a McDonal, o si es "Distribuida" similar a Uber.

### Los clientes
El tiempo de entrega de los alimentos debe ser estandarizado, asegurando un costo de transporte adecuado que facilite la entrega rápida y segura del pedido. Los clientes también deben tener la capacidad de ver una estimación de tiempo de entrega que se respete.

### El personal interno
Los cocineros deben contar con utensilios y materias primas, así como cumplir con regulaciones sanitarias, lo que representa un costo adicional en conjunto con los salarios. Además, es crucial que el personal esté capacitado para manejar pedidos de manera eficiente y mantener la calidad de los alimentos.

### Repartidores
El transporte y la orientación son cruciales, ya que se requieren vehículos y una visualización clara de los destinos para realizar entregas en los tiempos estipulados. La formación de los repartidores en la atención al cliente y en el manejo de los productos es esencial para asegurar la satisfacción del cliente.

### Problemas de negocio y derivados
1. *Baja Adherencia del Usuario*: La baja retención de usuarios reduce el impacto a largo plazo y la sostenibilidad financiera de las aplicaciones nutricionales, este problema se relaciona con la fatiga de registrar constantemente la ingesta de alimentos o la percepción de que la aplicación ya no aporta valor. 
   > *Ejemplo*: Aplicaciones como [MyFitnessPal](https://www.myfitnesspal.com/es) muestran una caída en el uso tras el primer mes, lo cual disminuye su efectividad en promover cambios sostenibles y afecta la retención de usuarios, reduciendo los ingresos potenciales de suscripciones o anuncios.
2. *Falta de Retroalimentación y Personalización*: La falta de personalización y retroalimentación en tiempo real disminuye el compromiso del usuario y dificulta la diferenciación en el mercado.
   > *Ejemplificación*: Sin la capacidad de ajustar los consejos y el apoyo a las necesidades individuales, como lo hace la aplicación [Noom](https://www.noom.com/es/) con entrenadores personalizados, los usuarios no sienten una conexión personal con la aplicación, lo que disminuye su compromiso.
3. *Dificultad para Escalar Personalización*: La complejidad y costos de personalizar recomendaciones nutricionales dificultan la escalabilidad y competitividad de las aplicaciones.
4. *Altos Costos de Desarrollo y Actualización*: Los elevados costos de desarrollo y mantenimiento ponen en riesgo la viabilidad económica de las aplicaciones si no logran un flujo de ingresos constante.
   > *Ejemplo*: [Yazio](https://www.yazio.com/es) debe constantemente actualizar sus bases de datos de alimentos y ajustar sus algoritmos para mantenerse relevante, lo que implica un gasto continuo en desarrollo y pruebas. Sin un modelo de ingresos sostenible, estas aplicaciones corren el riesgo de volverse financieramente inviables.
5. *Resistencia al Cambio del Usuario*: La dificultad de cambiar hábitos alimenticios limita la efectividad percibida de las aplicaciones y puede afectar su reputación y uso continuado.
6. *Competencia en Mercado Saturado*: La saturación del mercado con múltiples opciones dificulta la diferenciación y la captación de usuarios, especialmente para nuevas aplicaciones sin respaldo robusto.
   > Aplicaciones nuevas, como [Nutrium](https://nutrium.com/es), luchan por diferenciarse de gigantes ya establecidos y ganarse la confianza del usuario. Este entorno competitivo hace difícil captar una base de usuarios significativa sin una propuesta de valor claramente diferenciada o una inversión significativa en marketing.
7. *Cumplimiento Regulatorio Complejo*: Cumplir con las normativas de salud y privacidad es costoso y complejo, y el incumplimiento puede dañar gravemente la reputación y operación del negocio, al igual que condiciones salubres adecuadas en las instalaciones fisicas.
   > *Ejmplo de falla*: Una falla en el manejo de datos sensibles en la aplicación [Calory](https://calory.app) podría resultar en sanciones graves, afectando su reputación y operaciones.

## Documentacion del usuario
### Introduccion
La página web de alimentos saludables ofrece una plataforma en línea donde los usuarios pueden comprar productos frescos, naturales y orgánicos. Nuestro objetivo es promover hábitos alimenticios saludables ofreciendo una variedad de productos que satisfagan las necesidades nutricionales de las personas.

### Requisitos del Sistema
Navegador: Google Chrome, Mozilla Firefox, Safari o Microsoft Edge (versión más reciente).

Conexión a internet: estable, mínima de 5 Mbps para una experiencia óptima.

Dispositivos compatibles: PC, portátiles, tabletas y teléfonos móviles.

### Registro de Usuario
Navega a la página principal y haz clic en "Registrarse".

Completa los campos obligatorios como nombre, dirección de correo electrónico y contraseña.

Acepta los términos y condiciones.

Haz clic en "Crear cuenta". Recibirás un correo de confirmación.

Verifica tu cuenta a través del correo electrónico.

### Iniciar Sesion
En la página principal, selecciona "Iniciar sesión".

Introduce tu correo electrónico y contraseña registrados.

Haz clic en "Ingresar".

### Navegacion en la Pagina
Inicio: Presenta los productos destacados y las promociones actuales.

Categorías de Productos: Organiza los alimentos saludables en diferentes categorías como frutas, verduras, productos orgánicos, y más.

Búsqueda: Utiliza el cuadro de búsqueda para encontrar productos específicos.

Carrito de Compras: Muestra los productos que el usuario ha agregado para la compra.

### Proceso de Compra
Navega por las categorías de productos o utiliza la barra de búsqueda para encontrar lo que necesitas.
Haz clic en el producto deseado para ver sus detalles.

Selecciona la cantidad que deseas comprar y haz clic en "Agregar al carrito".

Una vez hayas agregado todos los productos, haz clic en el icono del carrito de compras.

Revisa los productos en tu carrito y haz clic en "Proceder al pago".

Introduce tus datos de envío y selecciona el método de pago.

Confirma tu pedido y recibirás una confirmación por correo electrónico.

### Metodos de Pago
Tarjeta de crédito/débito (Visa, Mastercard)

PayPal

Transferencia bancaria

Pago contra entrega (disponible en ciertas ubicaciones)

### Seguimiento de Pedido
Inicia sesión en tu cuenta.

Ve a "Mis pedidos" en el menú de usuario.

Selecciona el pedido que deseas seguir. Verás el estado de tu pedido (procesando, enviado, entregado).

### Politicas de Devolucion y Reembolsos
Los productos pueden ser devueltos dentro de los 14 días posteriores a la entrega si no están abiertos ni dañados.

El reembolso se procesará una vez que se confirme la recepción del producto devuelto.

### Soporte al Cliente
Correo electrónico: soporte@EVO-Healthy-Foods.com

Teléfono: +123 456 7890

Chat en línea: Disponible de lunes a viernes de 9 AM a 6 PM

### Seguridad y Privacidad
La pagina debe implementar autenticación segura, como lo es HTTPS, y encriptación de datos sensibles, por ejemplo contraseñas y datos bancarios.

### Consejos y Recomendaciones
Mantén tu perfil actualizado con la dirección correcta para envíos rápidos y precisos.

Suscríbete a nuestro boletín para recibir notificaciones de ofertas especiales y nuevos productos.

## Suposiciones y dependencias
### Factores Externos
* Se priorizará las tendencias del mercado y redes sociales.
* Se cumplirá con las regulaciones éticas y sanitarias.
* Se venderán los alimentos de manera en linea tanto en las tiendas físicas como en los pedidos de la página.
* Los pedidos tendrán alimentos en buen estado a toda la ciudad de mérida.
* Le llegarán los pedidos de manera adecuada a cada usuario.

### Factores Internos
* Personal competente, chefs, nutricionistas, personal al cliente, abogados.
* Sistema de gestión de pedidos y una base de datos adecuada.
* Equipo de marketing para llevar la publicidad de la empresa en todo el estado.
* Ingenieros de software competentes para el cuidado de la base de datos y la realización del back-end y front-end de la página.
* Buena gestión de la página web y un buen diseño publicitario.
* Se realizarán analisis de datos en las ventas y retroalimentaciones de mercado.

# Requerimientos 
## Requerimientos del Sistema
EVO HEALTHY FOODS, es una empresa digital, por lo tanto es importante que nuestros usuarios sean conscientes de los requerimientos principales del sistema, por eso se encuentran dividido en funcionales y no funcionales.

## Requerimientos Funcionales
### RF-001
El sistema deberá reconocer de manera efectiva el correo y contraseña del usuario al iniciar sesión para poder realizar cualquier compra en la página web.
### RF-002
El sistema tendrá que hacer envío de un correo electronico para asegurar que se completo el registro de pago del cliente en nuestros productos.
### RF-003
El sistema gestionará los pedidos para asegurar una coordinación eficiente y rápida en su entrega, proporcionando seguimiento en tiempo real para los clientes.
### RF-004
El repartidor podrá visualizar la ruta más óptima para entregar el producto al cliente, así mismo el cliente deberá ser capaz de visualizar el seguimiento del paquete hasta su entrega.
### RF-005
El sistema proporcionará una visualización de los ingresos y egresos que se tienen en determinados periodos de tiempo, con las vistas requeridas para una auditoría financiera, bajo usuarios con niveles de acceso específicos 
### RF-006
El sistema mostrara los contenidos nutricionales del producto cada vez que el cliente pase el raton sobre este.
### RF-007
El usuario podra hacer uso de un carrito de compras al cual podra agregar todos los productos que desea comprar dandole click al boton de "agregar al carrito"
### RF-008
El sistema contará con un algoritmo que le mostrará al cliente platillos en los que haya detectado que ha mostrado interés.
### RF-009
El sistema recomendará al usuario los complementos que normalmente se compran junto al alimento que elija comprar.
### RF-010
El sistema enviará promociones si asi lo desea el usuario, de descuentos y promociones por compras en la página.
### RF-011
El usuario podrá cancelar pedidos en un plazo de 24 hrs despues que lo pidio.
### RF-012
El sistema deberá tener un traductor para permitirle al usuario cambiar el idioma al de su preferencia para poder navegar en nuestra página.
### RF-013
El sistema debe ser compatible tanto en dispositivos moviles como en PC's con distinto OS.
### RF-014
El sistema contará con un apartado en la pantalla de inicio que mostrará los platillos que hayan detectados por el algoritmo.
### RF-015
El sistema será responsivo a través de todos los dispositivos que soporte.
### RF-016
El sistema debe registrar las fechas y detalles de los cambios realizados por el administrador.
### RF-017
El sistema debe permitir registrar nuevos proveedores y debe proporcionar opciones de contacto de los proveedores.
### RF-018
El sistema debe permitir agregar, modificar y eliminar productos del inventario.
### RF-019
El sistema debe mostrar las recetas favoritas al darle click en comidas favoritas.
### RF-020
El sistema debe mostrar las recetas al darle click en cualquier commida favorita.
### RF-021
El sistema mostrará un apartado de pedido después del pago para poder localizar el progreso que tenga el mismo a la hora de alcanzar la ubicación del usuario.
### RF-022
El sistema debe permitir las funciones de cambiar datos del perfil del usuario, escoger diferentes idiomas, borrar el caché; el apartado de acerca de, que muestra una información resumida del proyecto; opciones de privacidad y la opción de cerrar sesión.
## Requerimientos No Funcionales
### Requerimientos del Producto
Los usuarios tendrán un plazo de 3 días para poder pagar cualquier producto comprado desde la página de EVO Healthy Foods, mediante pago por tarjeta de credito o debito, pago por Paypal, Transferencia bancaria u OXXO.
### Requerimientos de Seguridad
La pagina debe implementar autenticación segura, como lo es HTTPS, y encriptación de datos sensibles, por ejemplo contraseñas y datos bancarios.
### Requerimientos de la entrega
* La página debe estar optimizada para un aumento en el número de pedidos, y garantizar que las entregas se gestionen sin retardos.
* Se le debe enviar al usuario la guia de entrega de los encargos, con el que podrá ser visible y privado solo para el comprador, junto con el status de entrega.
### Requerimientos de ubicación
El sistema le preguntará al usuario si desea que se guarde su ubicación para agilizar futuros pedidos
### Requerimientos de la base de datos
* El sistema alojará sus bases de datos en un lugar seguro para proteger la privacidad de los usuarios.
* El sistema de base datos reflejará la cantidad de articulos disponibles para la compra y el precio de forma correcta.
### Requerimiento de la actualizacion de la pagina
El sistema debe ser capaz de estar actualizando la lista de productos de acuerdo a su popularidad, novedad y precios.
### Requerimiento de la página
Debe tener un sistema de respaldo automático diario para asegurar la recuperación de datos en caso de fallo.
### Requerimieno del navegador 
La página debe funcionar correctamente en los navegadores más populares y usados (Chrome, Firefox, Safari, Edge) y en dispositivos móviles.
### Requerimientos éticos
* En la página se aclarará de manera conscisa que los productos que vendemos deben ser acompañados de cuidados a la salud como el ejercicio físico y un buen sueño para evitar que los usuarios se sientan engañados por no ver resultados.
* Nuestras bases de datos no guardarán las contraseñas, usarán un método de encriptación para asegurar la preservación de la calidad de los usuarios.

# Diseño de Software
* [Carpeta de los Diagramas](Diagramas)

## Diseño de Datos
* [Diseño UML](DiseñoDeDatos.md)

## Diseño Arquitectonico
* [Diseño C4](DiseñoArquitectonico.md)

## Diseño de Interfaz
* [Diseño de la aplicación](DiseñoDeInterfaz.md)
* [Carpeta de los diseños](Interfaz)
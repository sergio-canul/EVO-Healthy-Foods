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
  - [Visión](#visión)
  - [Valores](#valores)
  - [Objetivos](#objetivos)
  - [Políticas](#políticas)
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
  - [Audiencia y Alcance](#audiencia-y-alcance)
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
  - [Requerimientos No Funcionales](#requerimientos-no-funcionales)
    - [Requerimientos del Producto](#requerimientos-del-producto)
    - [Requerimientos de Seguridad](#requerimientos-de-seguridad)
    - [Requerimientos de Compatibilidad](#requerimientos-de-compatibilidad)
    - [Requerimientos de la página](#requerimientos-de-la-página)
    - [Requerimientos de la entrega](#requerimientos-de-la-entrega)
    - [Requerimientos de ubicación](#requerimientos-de-ubicación)
    - [Requerimientos de la base de datos](#requerimientos-de-la-base-de-datos)

# Introducción

*EVO Healthy Foods* es una empresa que tiene por objetivo establecerse como la primera empresa en linea con la temática de "Comida Saludable" en Mérida, Yucatán. 

## Propósito
El proposito de la empresa es proporcionar opciones de comida saludable, rica y accesible a todos, fomentando un estilo de vida equilibrado y sano.


## Visión

Convertirnos en la primera marca mexicana que ofrezca comida rápida y saludable, mejorando constantemente nuestras recetas conforme a los avances en la ciencia nutricional para garantizar sabores excepcionales y beneficios nutricionales.

## Valores

- *Mejora continua:* Nos comprometemos a mejorar constantemente la calidad de nuestros productos y servicios.
- *Responsabilidad nutricional:* Ofrecemos alimentos que contribuyen positivamente a la salud de nuestros clientes.
- *Inclusión y equidad:* Nos esforzamos por incluir y apoyar a personas que han sido marginadas en el mercado laboral.

## Objetivos

1. Mejorar la dieta y salud de la población mediante la provisión de alimentos saludables.
2. Convertirnos en una de las mejores empresas de comida saludable en el estado de Yucatán.

## Políticas

- Cumplimiento de normas sanitarias y estándares de calidad.
- Transparencia en la comunicación interna y externa.
- Fomento de la sostenibilidad ambiental y la responsabilidad social corporativa.
- Diversidad e inclusión en la fuerza laboral.

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
El sistema mostrará las comidas disponibles en el primer plano.
### RF-009
El sistema recomendará al usuario los complementos que normalmente se compran junto al alimento que elija comprar.
### RF-010
El sistema enviará promociones si asi lo desea el usuario, de descuentos y promociones por compras en la página.
## Requerimientos No Funcionales
### Requerimientos del Producto
Los usuarios tendrán un plazo de 3 días para poder pagar cualquier producto comprado desde la página de EVO Healthy Foods, mediante pago por tarjeta de credito o debito, pago por Paypal, Transferencia bancaria u OXXO.
### Requerimientos de Seguridad
La pagina debe implementar autenticación segura, como lo es HTTPS, y encriptación de datos sensibles, por ejemplo contraseñas y datos bancarios.
### Requerimientos de Compatibilidad
El sistema debe ser compatible tanto en dispositivos moviles como en PC's con distinto OS.
### Requerimientos de la página
El sistema deberá tener un traductor para permitirle al usuario cambiar el idioma al de su preferencia para poder navegar en nuestra página.
### Requerimientos de la entrega
* El sistema debe ser escalable para manejar un aumento en el número de pedidos, y garantizar que las entregas se gestionen sin retardos.
* Se le debe enviar al usuario la guia de entrega de los encargos, con el que podrá ser visible y privado solo para el comprador, el status de entrega.
### Requerimientos de ubicación
El sistema guardara la ubicación del cliente para agilizar futuros pedidos
### Requerimientos de la base de datos
* El sistema mostrará estadísticas ordenadas que le sean pertinentes al área de marketing y finanzas.
* El sistema de base datos reflejará la cantidad de articulos disponibles para la compra y el precio de forma correcta.

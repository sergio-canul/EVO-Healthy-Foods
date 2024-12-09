<h1>Diseño de interfaz</h1>

- [General](#general)
  - [Pagina\_principal](#pagina_principal)
    - [Componentes](#componentes)
  - [Menu\_desplegable](#menu_desplegable)
    - [Componentes\_menu\_Desplegable](#componentes_menu_desplegable)
- [Cuentas](#cuentas)
  - [Log\_in](#log_in)
    - [Componentes\_IniciarSesion](#componentes_iniciarsesion)
  - [Sing\_in](#sing_in)
    - [Componentes\_Crearcuenta](#componentes_crearcuenta)
  - [Postulación\_A\_trabajo](#postulación_a_trabajo)
    - [Componetes\_Postulante](#componetes_postulante)
- [Vista\_compras](#vista_compras)
  - [Carrito\_compras](#carrito_compras)
    - [Componentes\_carrito\_compras](#componentes_carrito_compras)
- [Vista\_Auditor](#vista_auditor)
  - [Ingresos](#ingresos)
    - [Componentes\_ganancias](#componentes_ganancias)
  - [Gastos](#gastos)
    - [Componentes\_Perdidas](#componentes_perdidas)

# General

## Pagina_principal

![Alt text](./Interfaz/Interfaz_Home(Andre).svg)

### Componentes

- Btn_Notificación: Es un botón simple que despliega la página de notificaciones, pero solo puede accederse si el usuario está autenticado.
  > RF-001: El sistema debe reconocer al usuario y permitir el acceso a ciertos componentes solo si está identificado. Este botón es un ejemplo de cómo el sistema restringe el acceso a las notificaciones hasta que el usuario haya iniciado sesión.
  >
  > RH#002 (Seguridad): La restricción de acceso a ciertas funcionalidades según el estado de autenticación garantiza que la privacidad del usuario se mantenga segura.

- btn_carrito: Un botón dentro de la caja de presentación de productos que permite agregar productos al carrito de compras, pero solo si el usuario ha iniciado sesión.
  > RF-007: Este botón cumple con la función de agregar productos al carrito, tal como se describe en el requerimiento funcional que establece la necesidad de permitir a los usuarios agregar productos al carrito de compras.
  >
  > RF-001: Solo puede ser usado si el usuario está autenticado, lo cual refuerza la necesidad de iniciar sesión para realizar compras en la plataforma.
  > 
  > RH#003 (Recomendaciones personalizadas): Al estar vinculado al carrito de compras, este botón podría también interactuar con un sistema de recomendaciones de productos personalizados, basado en los gustos y hábitos de compra del usuario.

- btn_favoritos: Similar al btn_carrito, pero en lugar de agregar productos al carrito, los guarda en una lista de favoritos del usuario.
  > RF-009: Este botón también está alineado con el requerimiento funcional de recomendar productos que comúnmente se compran junto al artículo seleccionado, pues guarda los productos preferidos del cliente y permite que el sistema aprenda sus gustos.
  > 
  > RF-003: Este componente también puede ayudar a mejorar la experiencia del cliente al permitirle ver y gestionar sus preferencias de manera sencilla, lo que a su vez podría optimizar las recomendaciones futuras.
  > 
  > RH#003 (Recomendaciones personalizadas): El sistema puede utilizar los favoritos para ofrecer recomendaciones más acertadas en función de las preferencias del cliente.

- btn_menu_desplegable: Un botón ubicado en la parte superior izquierda que despliega un menú con varias opciones. Sin embargo, muchas de ellas están bloqueadas hasta que el usuario haya iniciado sesión.
  > RF-001: Refuerza la importancia de que el usuario esté autenticado para acceder a la mayoría de las opciones en la página. Al estar bloqueadas muchas de las opciones del menú para usuarios no autenticados, este botón enfatiza el requerimiento de inicio de sesión.
  > 
  > RF-012: El sistema debería ser capaz de ofrecer una navegación clara y segmentada en función de las preferencias del usuario, y el menú de opciones podría ser una de las áreas donde se ofrezcan funciones según el nivel de acceso (administrador, cliente, etc.).
  > 
  > RH#012 (Compatibilidad con dispositivos móviles y de escritorio): El menú debe ser responsivo y adaptarse bien a dispositivos móviles y escritorios, asegurando una buena experiencia de usuario.

- seccion_basada: Sección que muestra productos recomendados basados en los gustos o intereses previos del usuario, utilizando algoritmos para personalizar la experiencia.
  > RF-004: Esta sección está alineada con el requerimiento de mostrar productos de acuerdo a los gustos del cliente, utilizando el algoritmo para predecir productos de su interés, mejorando la experiencia de compra.
  > 
  > RF-008: Relacionado con el sistema de recomendaciones, este componente muestra productos basados en el comportamiento de compra anterior del usuario.
  > 
  > RH#003 (Recomendaciones personalizadas): Esta sección es un claro ejemplo de cómo el sistema personaliza la experiencia de compra, mostrando productos que el cliente podría estar interesado en función de su comportamiento en la página.

- btn_buscador: Una barra de búsqueda con un botón de filtro que permite a los usuarios buscar productos en el inventario de manera rápida y con opciones de filtrado.
  > RF-007: El sistema debe permitir que los usuarios busquen productos en el inventario, lo que se cumple con esta barra de búsqueda que facilita la localización de productos.
  > 
  > RH#013 (Compatibilidad multiplataforma): Este componente debe funcionar correctamente en todos los dispositivos y navegadores, permitiendo una búsqueda fluida y eficiente tanto en móviles como en escritorios.

- Sección_promocion: Una sección destacada que muestra los productos más vendidos o populares durante un periodo de tiempo determinado, con diferentes categorías para facilitar la navegación.
  > RF-010: Este componente puede estar relacionado con la promoción de productos y descuentos, mostrándolos en una sección destacada y ayudando al usuario a encontrar ofertas o productos de interés.
  > 
  > RH#003 (Recomendaciones personalizadas): Muestra productos destacados, que podrían ser los más vendidos o populares, lo cual está alineado con el deseo de personalizar la experiencia del cliente.

## Menu_desplegable

![Alt text](./Interfaz/Interfaz_menu_desplegable(Andre).svg)

### Componentes_menu_Desplegable

- **btn_menu_desplegable**: Este botón despliega un menú lateral donde se muestran las subpáginas de la aplicación móvil.
  > Relación con Requerimientos Funcionales (RF-001 y RF-003): El botón es clave para acceder a diferentes secciones de la página, pero algunas de estas secciones estarán restringidas hasta que el usuario inicie sesión.

- **img_perfil**: Muestra la imagen del perfil del usuario que está iniciado en sesión, ubicada en el menú desplegable.
  > Relación con Requerimientos Funcionales (RF-001): Solo se muestra cuando el usuario ha iniciado sesión, cumpliendo con el requisito de autenticar al usuario antes de mostrar información personal.

- **Sección_menu_Botones**: Muestra todas las opciones disponibles en la aplicación web, aunque algunas secciones solo estarán accesibles si el usuario tiene una cuenta activa.
  > Relación con Requerimientos Funcionales (RF-001): El menú desplegable organiza las funciones accesibles para el usuario, pero restringe el acceso a ciertas opciones hasta que se inicie sesión, cumpliendo con la política de acceso restringido.

---

# Cuentas

## Log_in

![Alt text](./Interfaz/Interfaz_login(Andre).svg)

### Componentes_IniciarSesion

- **Sección_Descripción**: Esta sección solo muestra detalles sobre la página en la que se encuentra el usuario, mostrando un título y una pequeña descripción.
  > Relación con Requerimientos Funcionales (RF-001): El sistema debe proporcionar una página clara de inicio de sesión para que los usuarios puedan ingresar sus credenciales y acceder a las funciones restringidas.

- **Sección_formulario**: Muestra un título sobre el tipo de datos requeridos, acompañado de etiquetas (labels) correspondientes para cada campo.
  > Relación con Requerimientos Funcionales (RF-001): El formulario es esencial para la autenticación del usuario, permitiendo la entrada de correo y contraseña, lo que es requerido para iniciar sesión correctamente.

- **Sección_Cuenta_boton**: Muestra una pequeña descripción y un botón que permite alternar entre iniciar sesión y crear una cuenta.
  > Relación con Requerimientos Funcionales (RF-001 y RF-002): Facilita el acceso tanto a la creación de cuenta como al inicio de sesión, cumpliendo con el requerimiento de permitir la autenticación de los usuarios.

- **Label_input**: Un simple label que sirve como entrada de datos, con diferentes tipos de entrada como texto, botones o archivos.
  > Relación con Requerimientos Funcionales (RF-001): Estos campos de entrada permiten la autenticación del usuario, cumpliendo con los requisitos de permitir la entrada de datos de forma clara y accesible.

- **btn_cuenta**: Existen tres variantes: iniciar sesión, crear cuenta y cerrar sesión. Este botón envía los datos del usuario para iniciar sesión, crear cuenta o cerrar sesión, dependiendo del estado.
  > Relación con Requerimientos Funcionales (RF-001): Este componente es clave para la funcionalidad de inicio y cierre de sesión, permitiendo la correcta administración de la cuenta del usuario.

## Sing_in

![Alt text](./Interfaz/Interfaz_signin(Andre).svg)

### Componentes_Crearcuenta

- **Sección_Descripción**: Similar al componente de inicio de sesión, esta sección solo muestra detalles sobre la página de creación de cuenta, con un título y una breve descripción.
  > Relación con Requerimientos Funcionales (RF-001): Es una sección crucial para el registro de nuevos usuarios en el sistema, permitiendo que los usuarios creen una cuenta para acceder a las funcionalidades.

- **Sección_formulario**: Muestra un título y las etiquetas (labels) correspondientes para los datos necesarios para crear una cuenta.
  > Relación con Requerimientos Funcionales (RF-001): Este formulario es esencial para la recopilación de datos del usuario (como correo y contraseña) y la creación de la cuenta en el sistema.

- **Sección_Cuenta_boton**: Proporciona un botón para alternar entre la opción de iniciar sesión y crear una cuenta.
  > Relación con Requerimientos Funcionales (RF-001 y RF-002): Permite a los usuarios crear una cuenta y acceder a las opciones de inicio de sesión, facilitando la autenticación y la creación de nuevas cuentas.

- **Label_input**: Similar al campo de entrada de datos en el inicio de sesión, con diferentes tipos de entrada para el registro de información.
  > Relación con Requerimientos Funcionales (RF-001): Facilita la entrada de datos relevantes para el registro, como correo y contraseña, cumpliendo con los requisitos de recolección de datos para nuevas cuentas.

- **btn_cuenta**: Similar al de "Log_in", el botón cambia entre iniciar sesión, crear cuenta y cerrar sesión, dependiendo del estado del usuario.
  > Relación con Requerimientos Funcionales (RF-001): Este botón es necesario para completar el proceso de registro y autenticación del usuario.

---

## Postulación_A_trabajo

![Alt text](./Interfaz/Interfaz_Potulantes(Andre).svg)

### Componetes_Postulante

- **btn_formulario**: Recoge los datos ingresados y los envía a revisión.  
  > **Relación con RF-001:** Este componente asegura que la información ingresada por el repartidor (o postulante) sea enviada para su validación, permitiendo el acceso o registro en el sistema.

- **label_input**: Input básico para la autenticación del repartidor o postulante.  
  > **Relación con RF-001:** Facilita el ingreso seguro al sistema mediante el reconocimiento de correo y contraseña.

- **btn_elección**: Despliega una lista de opciones para que el usuario elija el rol al que desea postular, como cocinero, repartidor, etc.  
  > **Relación con RF-017:** Permite la gestión de usuarios y roles, facilitando el registro de nuevos postulantes según su interés.

- **btn_archivo**: Permite abrir el explorador de archivos para adjuntar documentos o comprobantes necesarios para la postulación.  
  > **Relación con RF-017:** Facilita el registro de nuevos postulantes al permitir cargar documentación relevante para su perfil.

- **notificación**: Muestra un mensaje de confirmación al usuario, como la validación de que el formulario se ha enviado correctamente.  
  > **Relación con RF-002:** Notifica al usuario que su postulación o solicitud fue registrada correctamente.

- **sección_formulario**: Un formulario compuesto por inputs correspondientes para completar el registro de postulantes o actualización de datos.  
  > **Relación con RF-017:** Permite registrar nuevos usuarios según el rol seleccionado y recopilar su información.

- **sección_descripción**: Muestra el título de la sección y una pequeña descripción que guía al usuario sobre el propósito del formulario.  
  > **Relación con RF-017:** Proporciona contexto sobre el registro o postulación, mejorando la experiencia del usuario.

---

# Vista_compras

## Carrito_compras

![Alt text](./Interfaz/Interfaz_CarritoCompra(Gioser).svg)

### Componentes_carrito_compras

- **box_producto**: Muestra una vista general del producto en el carrito de compras.
  > Relación con Requerimientos Funcionales (RF-007): Este componente permite al usuario ver los productos que ha seleccionado para comprar, cumpliendo con la funcionalidad de un carrito de compras.

- **img_producto**: Muestra una miniatura del producto dentro del carrito de compras.
  > Relación con Requerimientos Funcionales (RF-007): Facilita la visualización de los productos seleccionados para compra, alineado con la funcionalidad de agregar productos al carrito.

- **btn_seleccionar**: Permite seleccionar qué productos del carrito se desean comprar al realizar el pedido.
  > Relación con Requerimientos Funcionales (RF-007): Permite al usuario proceder con la compra de los productos seleccionados, asegurando que solo los productos elegidos sean adquiridos.

- **btn_favoritos**: Permite agregar un producto a la lista de favoritos del usuario.
  > Relación con Requerimientos Funcionales (RF-009): Este botón ayuda a personalizar las recomendaciones de productos basadas en los gustos del usuario, cumpliendo con el requisito de mostrar productos recomendados.

- **btn_cantidad**: Permite al usuario elegir la cantidad de productos que desea comprar en un pedido.
  > Relación con Requerimientos Funcionales (RF-007): Este componente facilita la modificación de la cantidad de productos en el carrito, lo que es esencial para el proceso de compra.

- **sección_detalle**: Muestra el número de productos y el monto total de la compra.
  > Relación con Requerimientos Funcionales (RF-005): Este componente ayuda a visualizar los ingresos y el total de los productos comprados, facilitando el seguimiento financiero y de ventas.

- **btn_compra**: Procede al proceso de compra de los productos seleccionados, enviándolos a la pestaña de pagos.
  > Relación con Requerimientos Funcionales (RF-005): Este botón es el paso final en el proceso de compra, facilitando la transacción del usuario y generando ingresos para la plataforma.

---

# Vista_Auditor

## Ingresos

![Alt text](./Interfaz/Interfaz_Graficos_Ganancias(Andre).svg)

### Componentes_ganancias

- btn_periodo: Este componente permite cambiar entre diferentes períodos de tiempo, lo cual es esencial para visualizar las ganancias en diferentes intervalos, permitiendo a los administradores auditar el desempeño de manera dinámica.
  > Relación con Requerimientos Funcionales (RF-005): Este componente está directamente relacionado con la visualización de los ingresos y egresos en distintos períodos de tiempo, permitiendo una auditoría financiera detallada.

- Leyenda_canvas_circular: Se encarga de mostrar qué categoría corresponde a cada sección del gráfico circular. Este tipo de leyenda facilita la comprensión de los datos presentados en los gráficos.
  > Relación con Requerimientos Funcionales (RF-005): Ayuda a desglosar los datos visualizados, proporcionando claridad para los informes financieros que deben ser auditados por usuarios con acceso específico (como se requiere en RF-005).

- Label_especifico: Muestra detalles adicionales sobre las categorías del gráfico, lo cual es útil para análisis más profundos.
  > Relación con Requerimientos Funcionales (RF-005): Al mostrar detalles más específicos de los gráficos, permite a los auditores comprender mejor las ganancias en función de las categorías no completamente visibles en el gráfico.

- Canvas_circular: Presenta los datos de manera visual mediante un gráfico circular. Es adecuado para mostrar la distribución general de las ganancias.
  > Relación con Requerimientos Funcionales (RF-005): La visualización clara de los datos financieros en un formato comprensible cumple con el requerimiento de proporcionar una vista que facilite la auditoría financiera.

- Canvas_circular_2: Similar al canvas circular, pero con un diseño que incluye leyendas a la derecha sin mostrar datos específicos, lo que permite una vista más general.
  > Relación con Requerimientos Funcionales (RF-005): Facilita la visualización general de las ganancias, complementando el análisis de datos de forma accesible.

- Canvas_escalonado: Muestra categorías más detalladas en un formato escalonado, permitiendo al usuario observar información más granular sobre las ganancias.
  > Relación con Requerimientos Funcionales (RF-005): Proporciona una vista detallada y útil para auditores que necesiten desglosar las ganancias en categorías más específicas.

- Canvas_barra: Un gráfico de barras tradicional que muestra las ganancias durante un periodo de tiempo determinado, facilitando la comparación entre diferentes puntos temporales.
  > Relación con Requerimientos Funcionales (RF-005): Permite un análisis de las ganancias de manera temporal, lo que ayuda a realizar auditorías de ingresos de forma clara y visual.

## Gastos

![Alt text](./Interfaz/Interfaz_Graficos_Perdidas(Andre).svg)

### Componentes_Perdidas

- btn_periodo: Similar al de ingresos, este componente permite cambiar entre diferentes períodos de tiempo para observar las pérdidas en distintos intervalos.
  > Relación con Requerimientos Funcionales (RF-005): Permite a los auditores y usuarios gestionar la visualización de pérdidas de forma flexible en función del período seleccionado.

- Canvas_circular_2: Utilizado para mostrar los gastos de forma general sin entrar en detalles específicos, similar al canvas de ganancias.
  > Relación con Requerimientos Funcionales (RF-005): Proporciona una visión general de los gastos en las diferentes categorías sin profundizar en los detalles, lo que es útil para auditorías rápidas.

- Leyenda_canvas_circular: Muestra las leyendas que corresponden a las categorías del gráfico, ayudando a los usuarios a identificar los gastos correctamente.
  > Relación con Requerimientos Funcionales (RF-005): Facilita la comprensión de las pérdidas al mostrar claramente qué categoría corresponde a cada parte del gráfico.

- Canvas_barra_comparador: Este gráfico compara las ventas frente al costo de insumos, permitiendo evaluar la eficiencia del negocio.
  > Relación con Requerimientos Funcionales (RF-005): Ayuda a realizar auditorías comparativas entre las ventas y los costos de insumos, lo cual es clave para determinar las pérdidas de forma precisa.

- Canvas_escalonado: Similar al de ganancias, muestra más categorías de pérdidas, proporcionando información más detallada.
  > Relación con Requerimientos Funcionales (RF-005): Al permitir un análisis detallado de las pérdidas, ayuda a cumplir con el requerimiento de facilitar una auditoría financiera completa y precisa.

- Label_especifico: Muestra más detalles sobre los datos del gráfico, lo que es esencial para auditores que necesiten información específica sobre las pérdidas.
  > Relación con Requerimientos Funcionales (RF-005): Proporciona un desglose más preciso de las pérdidas, facilitando la comprensión de los datos que no se presentan completamente en el gráfico.
# prueba Trabajo
repositorio prueba de trabajo Ruby on rails

desarrolle la prueba de acorde al esquema que me enviaron por correo 
se realizó un sistema de información el cual maneja la creación de películas con sus datos específicos y la creación de reservas teniendo en cuenta dichas películas las cuales cada una tiene 10 puestos por día en la cual va estar disponible

pasos:
1. cuando se abre la aplicación lo dirige a la dirección raíz la cual es el índex, donde se muestran las películas que han sido creadas y están disponibles
2. si se escoge una película de estas no va pasar nada es solo el banner de dicha película , en la parte superior derecha hay un botón el cual dice crear película, en este se crea un formulario el cual se puede agregar los datos de la película con las fechas correspondientes a esta, como fecha de estreno y la fecha final de función, con sus botones correspondientes como cerrar el formulario o enviarlo, en el caso de  enviarlo, se crea la película y redirecciona al índex
3. de nuevo en el índex se puede observar en la parte izquierda el menú con dos botones, el botón películas redirecciona a la misma página y el botón reservas redirecciona a la lista de reservas totales que han sido realizadas
4. para poder realizar una reserva primero se debe buscar la película correspondiente a la fecha que se quiere realizar dicha reserva, para ello en la parte superior en el input de tipo date se escoge la fecha y se oprime el botón buscar luego este va a mostrar las películas de dicho día, en este punto se escoge y se oprime el banner de la película que quiere reservar y va a aparecer un formulario para generar la reserva(este ya tiene la fecha correspondiente para crear la reserva) luego de llenar los datos, le damos crear y va redireccionar a la lista de reservas
5. para consultar las reservas de un día correspondiente también hay un input disponible para filtrar la búsqueda, se escoge la fecha y se oprime el botón buscar
6. en el caso de crear la una película se arroja un mensaje en la barra de navegación el cual dice "se creó la película", en el caso de que se cree la reserva saldrá un mensaje en la barra de navegación "se creó la reserva" algo para tener en cuanta si se reserva la misma película en la misma fecha más de 10 veces saldrá un mensaje en la barra de navegación que dirá" no hay sillas disponibles para la función" y no redireccionara a la lista de reservas si no al índex

Nota: el desarrollo del proyecto se realizó con Ruby on rails, Bootstrap 6 y  SQLite, en este punto pido disculpas tuve un problema con el reconocimiento de la gema para unirlo con PostgreSQL, cree un proyecto desde cero con la especificación de la base de datos de PostgreSQL y tampoco me funciono :( creo que el problema está en mi Windows, de antemano no me quiero quedar con la duda y si se presta la posibilidad de otra reunión poder tocar este tema rápidamente, muchas gracias por la posibilidad que me están dando. dios los bendiga se despide atentamente:
Edwin stiven galviz quimbayo

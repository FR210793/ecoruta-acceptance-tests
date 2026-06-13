Feature: Guardado de rutas frecuentes de aire limpio

Como usuario que entrena diariamente
Quiero guardar mis trayectos con mejor calidad de aire
Para no tener que configurarlos desde cero todos los días

Scenario: Guardar nueva ruta favorita
Given que el usuario termina un recorrido excelente
And desea repetirlo en sus próximos entrenamientos
When pulsa el botón guardar favorito
Then el sistema le pide asignar un nombre
And lo almacena en su biblioteca personal

# INPUT:
# - Recorrido finalizado con buena calidad de aire
# - Solicitud del usuario para guardar la ruta como favorita
# - Nombre asignado por el usuario a la ruta

# OUTPUT:
# - Solicitud para asignar nombre a la ruta
# - Ruta guardada en la biblioteca personal del usuario

Scenario: Acceder a ruta guardada
Given que el usuario abre la aplicación
And tiene rutas favoritas previamente guardadas
When ingresa a la sección mis rutas
Then puede iniciar la navegación con un solo clic
And ver si el aire sigue limpio ese día

# INPUT:
# - Aplicación abierta por el usuario
# - Rutas favoritas guardadas previamente
# - Acceso a la sección mis rutas

# OUTPUT:
# - Ruta disponible para iniciar navegación con un solo clic
# - Estado actualizado de la calidad del aire de la ruta

Scenario: Actualización de estado ambiental
Given que el usuario selecciona una ruta guardada
And justo hoy presenta niveles altos de esmog
When intenta iniciar el trayecto
Then la app le sugiere no tomarla
And recomienda una alternativa más segura temporalmente

# INPUT:
# - Ruta guardada seleccionada por el usuario
# - Datos ambientales actuales con niveles altos de esmog
# - Solicitud para iniciar el trayecto

# OUTPUT:
# - Advertencia para no tomar la ruta seleccionada
# - Recomendación de una ruta alternativa más segura temporalmente
    
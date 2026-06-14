Feature: Filtrar rutas por contaminación

Como usuario
quiero filtar rutas por niveles de contaminación
para elegir la mejor opción

Scenario 1: Aplicar filtro de contaminación
Given el usuario está en el mapa
And existen diferentes niveles de contaminación
When aplica el filtro de contaminación
Then el sistema muestra rutas filtradas
And oculta las no relevantes

INPUT:
Ubicación actual
Destino
Niveles de contaminación
Rutas disponibles

OUTPUT:
Rutas filtradas por contaminación
Mapa actualizado
Indicador visual de rutas saludables

Scenario 2: Cambiar el nivel de filtro
Given que el usuario aplica un filtro inicial de contaminación
And desea ajustar el nivel de filtro
When modifica el nivel de contaminación aceptable
Then el sistema actualiza los resultados
And mantiene la navegación fluida

INPUT:
Ubicación actual
Destino
Niveles de contaminación ajustados
Rutas disponibles
OUTPUT:
Rutas actualizadas según el nuevo filtro
Mapa actualizado
Indicador visual de rutas saludables ajustado

Scenario 3: Sin resultados disponibles
Given que el usuario aplica un filtro de contaminación muy estricto
And no hay rutas disponibles que cumplan con el criterio
When se ejecuta la busqueda
Then el sistema muestra un mensaje de advertencia
And sugiere relajar el filtro para obtener resultados

INPUT:
Ubicación actual
Destino
Niveles de contaminación muy estrictos
Rutas disponibles
OUTPUT:
Mensaje de advertencia de no resultados
Sugerencia para relajar el filtro
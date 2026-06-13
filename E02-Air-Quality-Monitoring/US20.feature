Feature: Comparativa de distritos

Como vecino de la ciudad
Quiero comparar el AQI de dos distritos diferentes
Para decidir a qué lugar es más sano mudarme o trabajar

Scenario: Comparación de dos zonas específicas
Given que el usuario entra a la opción de comparar
And elige los distritos de Lince y San Isidro
When le da al botón de ver resultados
Then el sistema muestra dos barras con los niveles de cada uno
And resalta al distrito que tiene mejor aire

# INPUT:
# - Opción de comparar seleccionada por el usuario
# - Distrito de Lince seleccionado
# - Distrito de San Isidro seleccionado
# - Solicitud para ver los resultados

# OUTPUT:
# - Barras comparativas con los niveles de AQI de cada distrito
# - Distrito con mejor calidad de aire resaltado

Scenario: Comparación con el promedio de la ciudad
Given que el usuario está viendo los datos de su distrito
And quiere saber si su zona está peor que las demás
When carga la gráfica comparativa en pantalla
Then el sistema muestra una línea con el nivel general
And explica si el distrito del usuario es más sano que el resto

# INPUT:
# - Datos de calidad del aire del distrito del usuario
# - Promedio general de calidad del aire de la ciudad
# - Solicitud para cargar la gráfica comparativa

# OUTPUT:
# - Línea comparativa con el nivel general de la ciudad
# - Explicación sobre si el distrito del usuario es más sano o menos sano que el resto

Scenario: Buscar el lugar con el aire más puro
Given que el usuario quiere pasear por un lugar limpio
And entra a la lista de todos los distritos
When ordena la lista para ver los mejores primero
Then el sistema muestra los nombres de mayor a menor limpieza
And permite ver dónde quedan exactamente en el mapa

# INPUT:
# - Lista de todos los distritos disponibles
# - Datos de calidad del aire de cada distrito
# - Ordenamiento solicitado para mostrar los mejores primero

# OUTPUT:
# - Distritos ordenados de mayor a menor limpieza del aire
# - Ubicación exacta de cada distrito mostrada en el mapa
    
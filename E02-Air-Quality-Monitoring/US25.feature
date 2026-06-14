Feature: Consulta de historial detallado por estación

Como usuario interesado
Quiero ver el historial de mediciones de una estación específica
Para entender en qué momentos del día suele subir más la contaminación

Scenario: Ver el punto más alto de contaminación
Given el usuario tiene abierta la ficha de una estación
And selecciona la opción de ver el gráfico del día
When el sistema carga los datos de las últimas 24 horas
Then el sistema marca con un punto rojo la hora más contaminada
And muestra el valor exacto de AQI en ese momento

INPUT:
- Estación seleccionada
- Datos de calidad del aire de las últimas 24 horas
- Historial de mediciones por hora
- Vista de gráfico diario

OUTPUT:
- Hora de mayor contaminación marcada
- Valor exacto de AQI mostrado
- Visualización del pico de contaminación


Scenario: Comparar datos de toda la semana
Given el usuario está revisando el gráfico del día
And desea ver la tendencia de días anteriores
When presiona la opción de vista por semana
Then el sistema agrupa los niveles de lunes a domingo
And muestra qué día tuvo el aire más limpio

INPUT:
- Datos diarios de la semana
- Selección de vista semanal
- Historial de mediciones por día

OUTPUT:
- Gráfico semanal agrupado
- Día con aire más limpio identificado
- Tendencia general de la semana


Scenario: Aviso de falta de datos antiguos
Given el usuario intenta ver el pasado de una estación nueva
And la estación ha sido instalada recientemente
When el sistema busca registros anteriores
Then muestra un aviso de que no hay historial disponible
And recomienda consultar otra estación cercana

INPUT:
- Estación recién instalada
- Solicitud de datos históricos
- Base de datos sin registros antiguos

OUTPUT:
- Mensaje de falta de historial
- Recomendación de estación alternativa
- Información limitada disponible
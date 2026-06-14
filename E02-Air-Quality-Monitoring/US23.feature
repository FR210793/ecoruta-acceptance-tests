Feature: Monitoreo de calidad del aire

Como persona interesada en el ambiente
Quiero ver cómo estuvo la calidad del aire en el último mes
Para saber si la contaminación está bajando o subiendo

Scenario: Revisar los datos de la semana
Given el usuario entra a la parte de estadísticas
And selecciona el filtro de últimos siete días
When el usuario pasa el dedo o cursor sobre las barras del gráfico
Then el sistema muestra el nivel exacto de calidad del aire de cada día
And cambia el color de las barras según la gravedad del aire

INPUT:
- Usuario en sección de estadísticas
- Filtro de últimos 7 días activado
- Datos de calidad del aire disponibles
- Gráfico de barras cargado

OUTPUT:
- Nivel exacto de contaminación por día
- Barras coloreadas según gravedad
- Visualización interactiva del gráfico


Scenario: Comparar un mes con otro
Given el usuario quiere ver si el aire mejoró con el tiempo
And selecciona el mes pasado y el mes actual
When el usuario presiona el botón de generar comparación
Then el sistema muestra un gráfico comparativo entre ambos meses
And resalta cuál mes tuvo días más limpios

INPUT:
- Mes actual seleccionado
- Mes anterior seleccionado
- Datos históricos de contaminación
- Opción de comparación activada

OUTPUT:
- Gráfico comparativo de ambos meses
- Mes más limpio resaltado
- Tendencia de mejora o empeoramiento


Scenario: Descargar reporte de contaminación
Given el usuario necesita la información para una tarea
And está visualizando el gráfico del año completo
When el usuario presiona el botón de descargar informe
Then el sistema genera un documento con todos los datos del año
And lo guarda en la carpeta del dispositivo

INPUT:
- Datos de contaminación del año
- Vista del gráfico anual
- Botón de descarga activado

OUTPUT:
- Documento descargable generado
- Reporte con datos organizados
- Archivo guardado en el dispositivo
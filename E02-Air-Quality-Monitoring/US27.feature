Feature: Visualización histórica de la calidad del aire

Como usuario interesado en el estado ambiental
Quiero visualizar el historial de la calidad del aire en mi zona
Para identificar patrones y tomar decisiones informadas

Scenario: Consulta de historial diario
Given el usuario accede a la sección de calidad del aire
And existen datos históricos disponibles
When el usuario selecciona un día específico
Then el sistema muestra los niveles de contaminación registrados
And presenta la información de forma clara

INPUT:
- Usuario en sección de calidad del aire
- Datos históricos disponibles
- Día seleccionado por el usuario
- Base de datos de mediciones

OUTPUT:
- Niveles de contaminación del día seleccionado
- Información estructurada y clara
- Visualización del historial diario


Scenario: Visualización de tendencias
Given el usuario consulta el historial
And existen datos de varios días
When el usuario analiza la información
Then el sistema muestra la tendencia de la calidad del aire
And permite identificar variaciones en el tiempo

INPUT:
- Historial de varios días
- Datos de calidad del aire
- Selección de vista de análisis

OUTPUT:
- Gráfico de tendencias
- Identificación de variaciones
- Comportamiento del aire en el tiempo


Scenario: Falta de datos históricos
Given no existen datos históricos disponibles
And el usuario intenta consultarlos
When el sistema procesa la solicitud
Then muestra un aviso de información no disponible
And mantiene visible la información actual

INPUT:
- Solicitud del usuario
- Base de datos sin historial
- Datos actuales del sistema

OUTPUT:
- Mensaje de información no disponible
- Visualización de datos actuales
- Aviso de limitación de historial
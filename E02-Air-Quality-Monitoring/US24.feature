Feature: Visualización de contaminantes específicos

Como usuario interesado en conocer la calidad del aire
Quiero visualizar los principales contaminantes presentes en mi zona
Para entender qué factores afectan a mi entorno

Scenario: Visualización de contaminantes principales
Given el usuario accede a la información de calidad del aire
And existen datos disponibles de contaminantes
When el usuario visualiza los detalles de su zona
Then el sistema muestra los contaminantes principales
And presenta sus niveles correspondientes

INPUT:
- Ubicación del usuario
- Datos de calidad del aire disponibles
- Base de datos de contaminantes
- Zona seleccionada

OUTPUT:
- Lista de contaminantes principales
- Niveles de cada contaminante
- Visualización de información por zona


Scenario: Identificación del contaminante predominante
Given el sistema cuenta con datos de múltiples contaminantes
And uno presenta mayor concentración
When el usuario consulta la información
Then el sistema resalta el contaminante predominante
And muestra su nivel de impacto en la calidad del aire

INPUT:
- Datos de múltiples contaminantes
- Valores de concentración por contaminante
- Zona analizada

OUTPUT:
- Contaminante predominante identificado
- Nivel de impacto mostrado
- Resaltado visual del contaminante principal


Scenario: Falta de datos de contaminantes
Given no existen datos disponibles para ciertos contaminantes
And el usuario consulta la información
When el sistema procesa la solicitud
Then muestra un aviso de datos incompletos
And mantiene visible la información disponible

INPUT:
- Solicitud del usuario
- Base de datos parcial o incompleta
- Zona seleccionada

OUTPUT:
- Mensaje de datos incompletos
- Información parcial disponible
- Aviso de limitación de datos
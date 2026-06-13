Feature: Precisión de datos de monitoreo

Como usuario que toma decisiones basadas en la calidad del aire
Quiero que la información mostrada sea confiable y precisa
Para poder tomar decisiones seguras sobre mis actividades

Scenario: Escenario 1: Visualización de datos confiables
Given que el usuario consulta la calidad del aire
And el sistema obtiene datos de diferentes fuentes
When se muestran los resultados
Then los datos deben ser consistentes
And reflejar valores confiables para la toma de decisiones

# INPUT:
# - Consulta de calidad del aire realizada por el usuario
# - Datos obtenidos desde diferentes fuentes de monitoreo
# - Resultados procesados por el sistema

# OUTPUT:
# - Datos consistentes mostrados al usuario
# - Valores confiables para apoyar la toma de decisiones

Scenario: Escenario 2: Validación con fuentes oficiales
Given que el sistema recopila datos de múltiples sensores
And existen fuentes oficiales disponibles
When procesa la información
Then valida los datos con fuentes confiables
And descarta valores inconsistentes

# INPUT:
# - Datos recopilados desde múltiples sensores
# - Fuentes oficiales disponibles para validación
# - Información procesada por el sistema

# OUTPUT:
# - Datos validados con fuentes confiables
# - Valores inconsistentes descartados por el sistema

Scenario: Escenario 3: Manejo de datos no confiables
Given que el sistema detecta datos erróneos o incompletos
And no puede garantizar su precisión
When el usuario consulta la información
Then muestra un aviso de validación
And limita la recomendación basada en esos datos

# INPUT:
# - Datos erróneos o incompletos detectados por el sistema
# - Falta de precisión garantizada en la información
# - Consulta realizada por el usuario

# OUTPUT:
# - Aviso de validación mostrado al usuario
# - Recomendación limitada según la confiabilidad de los datos
    
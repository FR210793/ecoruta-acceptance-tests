Feature: Pronóstico de calidad del aire por horas

Como usuario preventivo
Quiero consultar el pronóstico de la calidad del aire por horas
Para planificar el mejor momento para realizar actividades al aire libre

Scenario: Escenario 1: Visualización del pronóstico por horas
Given que el usuario accede a la sección de calidad del aire
And existen datos disponibles del pronóstico
When selecciona la opción de pronóstico
Then el sistema muestra los niveles de contaminación por horas
And resalta los periodos con mejor calidad del aire

# INPUT:
# - Acceso del usuario a la sección de calidad del aire
# - Datos disponibles del pronóstico por horas
# - Selección de la opción de pronóstico

# OUTPUT:
# - Niveles de contaminación mostrados por horas
# - Periodos con mejor calidad del aire resaltados

Scenario: Escenario 2: Identificación de horarios no recomendados
Given que el usuario consulta el pronóstico
And existen periodos con alta contaminación
When revisa la información
Then el sistema indica los horarios de riesgo
And recomienda evitar actividades en esos periodos

# INPUT:
# - Consulta del pronóstico de calidad del aire
# - Periodos detectados con alta contaminación
# - Revisión de la información por parte del usuario

# OUTPUT:
# - Horarios de riesgo indicados por el sistema
# - Recomendación para evitar actividades al aire libre en esos periodos

Scenario: Escenario 3: Falta de conexión a internet
Given que el usuario no cuenta con conexión a internet
And accede a la sección de pronóstico
When el sistema intenta cargar los datos
Then muestra la última información disponible
And advierte que los datos pueden no estar actualizados

# INPUT:
# - Usuario sin conexión a internet
# - Acceso a la sección de pronóstico
# - Intento del sistema por cargar nuevos datos

# OUTPUT:
# - Última información disponible mostrada al usuario
# - Advertencia de que los datos pueden no estar actualizados
    
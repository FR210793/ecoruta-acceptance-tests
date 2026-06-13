Feature: Validación de reportes comunitarios

Como usuario
Quiero validar o rechazar reportes realizados por otros usuarios
Para asegurar que la información mostrada sea confiable y útil

Scenario: Confirmar reporte existente
Given que el usuario visualiza un reporte en el mapa
And se encuentra en la misma zona
When selecciona la opción confirmar
Then el sistema aumenta la confiabilidad del reporte
And mantiene el reporte visible para otros usuarios

# INPUT:
# - Reporte visible en el mapa
# - Confirmación del usuario

# OUTPUT:
# - Confiabilidad aumentada
# - Reporte visible en el mapa

Scenario: Rechazar reporte incorrecto
Given que el usuario detecta un reporte incorrecto
And no observa contaminación en la zona
When marca el reporte como incorrecto
Then el sistema reduce su relevancia
And evalúa retirarlo del mapa

# INPUT:
# - Reporte incorrecto
# - Rechazo del usuario

# OUTPUT:
# - Relevancia reducida
# - Reporte evaluado para eliminación

Scenario: Reporte sin interacción
Given que un reporte no recibe validaciones comunitarias
And pasa un tiempo determinado
When el sistema actualiza la información
Then reduce la visibilidad del reporte
And lo muestra como no confirmado

# INPUT:
# - Reporte sin validaciones
# - Tiempo transcurrido

# OUTPUT:
# - Visibilidad reducida
# - Reporte marcado como no confirmado

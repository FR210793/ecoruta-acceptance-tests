Feature: Experiencia del usuario y personalización

Como usuario
Quiero que la aplicación muestre información basada en mi uso frecuente
Para facilitar la selección de rutas sin buscar desde cero

Scenario: Uso frecuente de rutas
Given que el usuario utiliza rutas repetidas
And la aplicación registra su comportamiento
When muestra los resultados
Then prioriza rutas similares
And presenta opciones relacionadas

# INPUT:
# - Rutas frecuentes del usuario
# - Historial de uso

# OUTPUT:
# - Rutas similares priorizadas
# - Opciones relacionadas

Scenario: Cambio de ubicación
Given que el usuario cambia de zona
And utiliza la aplicación
When el sistema detecta la nueva ubicación
Then actualiza la información
And muestra rutas disponibles en la zona

# INPUT:
# - Nueva ubicación detectada
# - Uso de la aplicación

# OUTPUT:
# - Información actualizada
# - Rutas disponibles

Scenario: Usuario nuevo
Given que el usuario no tiene historial
And usa la aplicación por primera vez
When solicita información
Then el sistema muestra opciones generales
And presenta rutas estándar

# INPUT:
# - Usuario sin historial
# - Primera interacción

# OUTPUT:
# - Opciones generales
# - Rutas estándar

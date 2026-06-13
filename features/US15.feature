Feature: Filtrado de rutas por condiciones climáticas

Como deportista urbano
Quiero filtrar rutas evitando calles con alta humedad o neblina
Para entrenar en condiciones ambientales óptimas

Scenario: Escenario 1: Filtrar rutas por condiciones climáticas
Given que el usuario busca una ruta
And existen variaciones climáticas en diferentes zonas
When aplica el filtro de condiciones climáticas
Then el sistema muestra rutas con condiciones favorables
And oculta las rutas con condiciones adversas

# INPUT:
# - Ruta solicitada por el usuario
# - Datos climáticos de las zonas disponibles
# - Filtro de condiciones climáticas aplicado

# OUTPUT:
# - Rutas con condiciones climáticas favorables
# - Rutas con condiciones adversas ocultadas

Scenario: Escenario 2: Recomendación de rutas alternativas
Given que una ruta presenta condiciones climáticas desfavorables
And el usuario consulta opciones
When el sistema analiza las condiciones
Then sugiere rutas alternativas
And prioriza aquellas con menor impacto climático

# INPUT:
# - Ruta con condiciones climáticas desfavorables
# - Consulta de opciones alternativas por parte del usuario
# - Datos climáticos actuales de las rutas disponibles

# OUTPUT:
# - Rutas alternativas sugeridas
# - Priorización de rutas con menor impacto climático

Scenario: Escenario 3: Falta de datos climáticos
Given que el usuario aplica filtros climáticos
And no hay información disponible en algunas zonas
When el sistema procesa la solicitud
Then muestra un aviso de datos incompletos
And permite visualizar rutas sin filtrado climático

# INPUT:
# - Filtro climático aplicado por el usuario
# - Zonas sin información climática disponible
# - Solicitud de rutas procesada por el sistema

# OUTPUT:
# - Aviso de datos climáticos incompletos
# - Opción para visualizar rutas sin filtrado climático
    
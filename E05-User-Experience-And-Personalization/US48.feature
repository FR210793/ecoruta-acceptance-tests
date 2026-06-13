Feature: Historial de rutas

Como usuario
Quiero visualizar mi historial de rutas y actividades
Para analizar recorridos anteriores y repetir los más seguros o eficientes

Scenario: Visualizar historial de rutas
Given que el usuario accede a su perfil
And entra a la sección historial
When se carga la información
Then el sistema muestra las rutas realizadas
And presenta los detalles de cada recorrido

# INPUT:
# - Usuario en su perfil
# - Historial disponible

# OUTPUT:
# - Rutas realizadas
# - Detalles del recorrido

Scenario: Reutilizar ruta anterior
Given que el usuario selecciona una ruta del historial
And desea repetirla
When confirma la selección
Then el sistema carga la ruta
And permite iniciar la navegación

# INPUT:
# - Ruta previa seleccionada
# - Confirmación del usuario

# OUTPUT:
# - Ruta cargada
# - Navegación disponible

Scenario: Historial vacío
Given que el usuario no tiene rutas registradas
And accede al historial
When se muestra la pantalla
Then el sistema indica que no existen datos
And sugiere realizar un nuevo recorrido

# INPUT:
# - Usuario sin rutas registradas
# - Acceso al historial

# OUTPUT:
# - Mensaje de historial vacío
# - Sugerencia de nuevo recorrido

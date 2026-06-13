Feature: Visualización organizada de información

Como usuario
Quiero visualizar rutas y calidad del aire organizadas por prioridad y riesgo
Para entender fácilmente las opciones disponibles

Scenario: Ordenamiento de información
Given que el usuario realiza una búsqueda de ruta
And existen varias opciones disponibles
When el sistema muestra los resultados
Then ordena las opciones por prioridad
And permite identificar la mejor alternativa

# INPUT:
# - Búsqueda de ruta
# - Varias opciones disponibles

# OUTPUT:
# - Opciones ordenadas
# - Mejor alternativa identificable

Scenario: Diferenciación visual
Given que existen rutas con distintos niveles de riesgo
And el usuario revisa los resultados
When se muestran las opciones
Then el sistema utiliza colores y etiquetas
And diferencia rutas saludables, moderadas y riesgosas

# INPUT:
# - Rutas con distintos niveles de riesgo
# - Resultados generados

# OUTPUT:
# - Colores y etiquetas visibles
# - Rutas diferenciadas por riesgo

Scenario: Sin información disponible
Given que no existen datos suficientes
And el usuario consulta la aplicación
When el sistema procesa la información
Then muestra un mensaje claro
And mantiene la interfaz organizada

# INPUT:
# - Datos insuficientes
# - Consulta del usuario

# OUTPUT:
# - Mensaje de falta de información
# - Interfaz sin errores

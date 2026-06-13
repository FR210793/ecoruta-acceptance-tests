Feature: Comparativa de Tiempo vs Salud

Como estudiante universitario
Quiero comparar el tiempo estimado frente a la calidad del aire
Para decidir si priorizo llegar rápido o cuidar mis pulmones

Scenario: Escenario 1: Comparación directa en pantalla
Given que el usuario busca ir a la universidad
And el sistema encuentra varias opciones de vías
When se muestran los resultados finales
Then aparece una tarjeta comparativa en pantalla
And detalla la diferencia de tiempo versus la toxicidad

# INPUT:
# - Destino ingresado por el usuario
# - Opciones de rutas disponibles
# - Datos de tiempo estimado y calidad del aire de cada ruta

# OUTPUT:
# - Tarjeta comparativa mostrada en pantalla
# - Diferencia entre tiempo de llegada y nivel de toxicidad

Scenario: Escenario 2: Elección de ruta rápida
Given que el usuario está muy apurado por una clase
And decide tomar la ruta más rápida disponible
When selecciona la opción veloz
Then el sistema inicia el viaje inmediatamente
And recomienda usar mascarilla por la alta contaminación

# INPUT:
# - Ruta más rápida disponible
# - Selección de la opción veloz por parte del usuario
# - Datos de alta contaminación en la ruta seleccionada

# OUTPUT:
# - Inicio inmediato de la navegación
# - Recomendación de usar mascarilla por contaminación elevada

Scenario: Escenario 3: Elección de ruta saludable
Given que el usuario prioriza su bienestar físico
And no tiene apuro para llegar a su destino
When selecciona la ruta con menor nivel de contaminación
Then el sistema confirma la selección de la ruta
And guía al usuario por calles con menor exposición a contaminantes

# INPUT:
# - Rutas disponibles con datos de contaminación
# - Selección de la ruta con menor nivel de contaminación
# - Preferencia del usuario por una opción saludable

# OUTPUT:
# - Confirmación de la ruta saludable seleccionada
# - Navegación por calles con menor exposición a contaminantes
    
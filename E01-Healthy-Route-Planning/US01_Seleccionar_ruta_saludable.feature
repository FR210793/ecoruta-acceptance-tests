
Feature: Seleccionar ruta saludable

Como deportista urbano			
quiero seleccionar rutas con menor contaminación			
para entrenar de forma segura

Scenario 1: Selección de ruta con menor contaminación
Given el usuario visualiza el mapa			
And existen múltiples rutas disponibles			
When selecciona una ruta			
Then el sistema muestra la opción con menor contaminación			
And resalta visualmente la ruta recomendada

INPUT:
Ubicación actual
Destino
Rutas disponibles
Niveles de contaminación

OUTPUT:
Ruta recomendada
Mapa actualizado
Indicador visual de menor contaminación


Scenario 2: Visualización de múltiples rutas
Given que el usuario realiza una búsqueda			
And el sistema encuentra varias rutas			
When se muestran los resultados			
Then se listan diferentes opciones			
And se indica el nivel de contaminación de cada una			

INPUT:
Ubicación actual
Destino seleccionado
Información de tráfico
Datos de contaminación por ruta

OUTPUT:
Listado de rutas disponibles
Nivel de contaminación por cada ruta
Tiempo estimado de recorrido
Ruta recomendada destacada

Scenario 3: Selección manual de ruta
Given que el usuario prefiere una ruta específica			
And decide no elegir la recomendada			
When selecciona otra opción			
Then el sistema permite continuar			
And mantiene visible la información ambiental

INPUT:
Ruta seleccionada por el usuario
Listado de rutas disponibles
Niveles de contaminación asociados
Preferencias del usuario

OUTPUT:
Ruta elegida mostrada en el mapa
Información ambiental de la ruta seleccionada
Tiempo estimado de recorrido
Confirmación de selección de ruta
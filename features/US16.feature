Feature: Visualización de AQI local vía GPS

Como ciudadano consciente
Quiero ver el índice AQI exacto de mi ubicación actual
Para saber si el aire que respiro en este momento es seguro

Scenario: Consulta de aire actual
Given que el usuario abre la aplicación en la calle
And tiene el sensor GPS del celular activado
When la pantalla principal termina de cargar
Then muestra un gran círculo con el valor AQI numérico
And usa colores universales según el nivel de riesgo

# INPUT:
# - Aplicación abierta por el usuario
# - Permiso de ubicación activado
# - Sensor GPS del celular activo
# - Ubicación actual del usuario

# OUTPUT:
# - Valor AQI numérico mostrado en pantalla
# - Círculo visual con el nivel de calidad del aire
# - Colores universales según el nivel de riesgo

Scenario: Cambio de ubicación
Given que el usuario está en movimiento continuo
And cruza hacia un distrito con más tráfico
When el GPS detecta la nueva zona
Then el valor del AQI se actualiza automáticamente
And envía una notificación si la calidad del aire empeora

# INPUT:
# - Usuario en movimiento
# - Nueva ubicación detectada por GPS
# - Datos de calidad del aire del nuevo distrito

# OUTPUT:
# - Valor AQI actualizado automáticamente
# - Notificación enviada si la calidad del aire empeora

Scenario: GPS desactivado
Given que el usuario tiene la ubicación del celular apagada
And abre la aplicación para consultar el aire
When el sistema intenta cargar el dato
Then pide permisos obligatorios de ubicación
And permite ingresar el distrito manualmente como alternativa

# INPUT:
# - Aplicación abierta por el usuario
# - Ubicación del celular desactivada
# - Solicitud de consulta de calidad del aire

# OUTPUT:
# - Solicitud de permisos de ubicación
# - Opción para ingresar el distrito manualmente
    
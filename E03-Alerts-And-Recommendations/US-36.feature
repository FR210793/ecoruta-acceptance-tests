Feature: Tiempo de respuesta de alertas en tiempo real

Como usuario
Quiero que el sistema responda rápidamente al generar alertas de contaminación
Para poder tomar decisiones inmediatas durante mi desplazamiento

Scenario: Tiempo de respuesta en condición normal

Given que el usuario se encuentra en una ruta activa
And el sistema detecta una zona con alta contaminación
When se genera la alerta
Then el sistema muestra la alerta en un tiempo menor o igual a 3 segundos
And visualiza correctamente en la interfaz del usuario

# INPUT:
# - Usuario: Miguel (en ruta)
# - Ubicación: Av. Morales Duárez, Lince
# - Zona detectada: PM2.5 > 75
# - Sistema: Normal, carga de usuario moderada
# - Tiempo de generación: t=0

# OUTPUT:
# - Alerta mostrada: t ≤ 3 segundos
# - Tipo de notificación: Visual + sonora
# - Contenido: "Zona crítica detectada" con AQI actual
# - Localización: Popup superpuesto en mapa
# - Acciones disponibles: "Ver alternativas" / "Desviar ruta" / "Ignorar"

Scenario: Tiempo de respuesta con alta carga

Given que múltiples usuarios están utilizando la aplicación al mismo tiempo
And se genera una alerta de contaminación
When el sistema procesa la información
Then el tiempo de respuesta no supera los 5 segundos
And la alerta se muestra sin errores ni interrupciones

# INPUT:
# - Usuario: Múltiples (100+ activos)
# - Ubicación: Zona de alta circulación (Avenida Abancay)
# - Evento: Incendio o congestión vehicular detectados
# - Carga del servidor: 85% de capacidad
# - Sensores activados: 15 sensores simultáneos

# OUTPUT:
# - Tiempo máximo de respuesta: t ≤ 5 segundos
# - Estado del sistema: Sin errores, sin caídas
# - Prioridad de alerta: Crítica (rojo)
# - Notificación push: Enviada a usuarios cercanos
# - Actualización de mapa: Zona marcada en rojo

Scenario: Fallo en el tiempo de respuesta

Given que el sistema presenta retrasos en la generación de alertas
And el tiempo de respuesta supera los 5 segundos
When ocurre esta situación
Then el sistema notifica un retraso
And actualiza la alerta lo antes posible

# INPUT:
# - Usuario: Carolina
# - Ubicación: San Isidro, Lima
# - Evento: Alerta de zona contaminada
# - Tiempo de generación real: 8 segundos
# - Causa: Conexión lenta o latencia de servidor

# OUTPUT:
# - Notificación: "Alerta con retraso detectada"
# - Información mostrada: AQI actualizado (aunque atrasado)
# - Timestamp: "Actualizado hace 8 segundos"
# - Recomendación: "Información podría no ser actual"
# - Acción sugerida: Permitir usuario decidir si cambiar ruta

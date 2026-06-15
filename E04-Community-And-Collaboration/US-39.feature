Feature: Reporte de zonas contaminadas

Como usuario de EcoRuta
Quiero reportar zonas con humo o tráfico pesado
Para que otros usuarios reciban alertas en tiempo real

Scenario: Generación de Reporte Comunitario

Given que detecto una zona con alta contaminación
And quiero avisar a la comunidad
When pulso el botón "Reportar" en la app
Then EcoRuta actualiza el mapa de color
And otros usuarios reciben notificación inmediata

# INPUT:
# - Usuario: Luis (corredor)
# - Ubicación: Av. Paseo de la República, Lima
# - Tipo de contaminación: Humo visible (posible incendio)
# - Severidad: Alta (AQI estimado > 150)
# - Hora del reporte: 12:45
# - Descripción: "Congestión vehicular + humo de vehículos"

# OUTPUT:
# - Confirmación: "Reporte enviado"
# - Mapa actualizado: Zona marcada en rojo
# - Notificación comunitaria: Otros usuarios en zona reciben alerta
# - Durabilidad: Reporte válido por 2 horas
# - Puntos: Usuario gana +30 puntos eco
# - Visibilidad: Reporte visible en mapa para todos

Scenario: Alerta de Proximidad a Zona Reportada

Given que un usuario reporta una zona crítica
And yo estoy en ruta cercana
When la app me alerta de la zona
Then puedo elegir ruta alternativa
And la app registra mi decisión

# INPUT:
# - Usuario: Miguel
# - Ubicación actual: 600m de la zona reportada
# - Zona reportada: Av. Paseo de la República (AQI 165)
# - Ruta en progreso: En curso
# - Tiempo hasta zona: 4 minutos

# OUTPUT:
# - Notificación: "Zona reportada cerca: Av. Paseo de la República"
# - Detalles: "Un usuario reportó congestión y humo"
# - Opciones: "Ver alternativas" / "Continuar ruta"
# - Ruta alternativa: Sugerida automáticamente
# - Acción registrada: Sistema registra decisión del usuario

Scenario: Normalización de la Ruta

Given que el reporte fue enviado
And la zona se vuelve segura o menos contaminada
When el sistema valida la información con sensores y reportes posteriores
Then se elimina alerta temporal
And se notifica a usuarios que la ruta es ahora segura

# INPUT:
# - Reporte original: Zona crítica - Av. Paseo de la República
# - Hora del reporte: 12:45
# - Validación: Sensores actualizados + 3 reportes posteriores
# - Nueva medición AQI: 45 (saludable)
# - Tiempo transcurrido: 90 minutos

# OUTPUT:
# - Alerta eliminada: Zona ya no crítica
# - Notificación: "Condiciones mejoraron en Av. Paseo"
# - Mapa actualizado: Zona cambia de rojo a verde
# - Usuarios notificados: Todos los usuarios activos en zona
# - Reporte original: Marcado como "Resuelto"
# - Punto de cierre: "Zona normalizó gracias a reportes comunitarios"

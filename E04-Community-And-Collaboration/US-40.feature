Feature: Visualización de reportes recientes

Como ciclista urbano
Quiero ver reportes recientes de otros usuarios
Para evitar zonas con contaminación alta

Scenario: Planificación Informada

Given que estoy planificando mi ruta
And la app tiene reportes recientes de la comunidad
When abro el mapa de rutas
Then se muestran zonas críticas y limpias
And puedo elegir ruta más saludable

# INPUT:
# - Usuario: Miguel
# - Hora: 06:30 (mañana)
# - Reportes activos: 5 reportes recientes
# - Rango temporal: Últimas 2 horas
# - Zona mapa: Centro y Sur de Lima

# OUTPUT:
# - Zonas críticas visibles: 3 (marcadas en rojo)
# - Zonas limpias visibles: 4 (marcadas en verde)
# - Detalles por zona: Hora del reporte, tipo de contaminación
# - Reportes mostrados: Congestión, humo, contaminación
# - Opción seleccionar: Puedo hacer click para más detalles
# - Recomendación: Sistema sugiere ruta por zona verde

Scenario: Alerta de Proximidad Activa

Given que un reporte reciente indica tráfico pesado
And estoy cerca de la zona
When consulto la app
Then recibo alerta visual y sonora
And puedo cambiar mi ruta

# INPUT:
# - Usuario: Carolina
# - Reporte detectado: Tráfico pesado - Av. Arequipa
# - Hora del reporte: Hace 15 minutos
# - Ubicación usuario: 500m de zona reportada
# - Tipo alerta: Proximidad activa

# OUTPUT:
# - Alerta: "Reporte activo cerca de ti"
# - Contenido: "Tráfico pesado en Av. Arequipa (reportado hace 15 min)"
# - Mapa: Zona destacada en naranja/rojo
# - Opciones: "Ver ruta alternativa" / "Ignorar" / "Confirmar reporte"
# - Duración: Alerta activa hasta reporte se cierre

Scenario: Optimización de Datos Visuales

Given que la app recibe múltiples reportes
And algunos son redundantes
When visualizo el mapa
Then se consolidan los reportes para claridad
And puedo distinguir rutas confiables

# INPUT:
# - Reportes redundantes: 5 reportes de misma zona
# - Zona: Av. Paseo de la República
# - Fecha reportes: Últimas 60 minutos
# - Consenso: 4/5 reportes confirman contaminación

# OUTPUT:
# - Consolidación: Se muestran como UN reporte fortalecido
# - Indicador: "5 usuarios reportaron esta zona"
# - Confiabilidad: Aumenta (consenso = +40% confianza)
# - Visualización: Una sola marca (más clara)
# - Detalles: "Confirmado por múltiples reportes"
# - Recomendación: Sistema más confiado en sugerir alternativa

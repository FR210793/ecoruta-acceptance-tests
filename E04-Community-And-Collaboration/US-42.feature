Feature: Alertas de rutas seguras compartidas por padres

Como padre de familia
Quiero recibir notificaciones de rutas seguras compartidas por otros padres
Para proteger a mis hijos

Scenario: Recepción de Sugerencia Solidaria

Given que otro padre comparte su ruta segura
And se encuentra cerca de mi ubicación
When abro la app
Then recibo notificación con ruta recomendada
And puedo aceptarla o rechazarla

# INPUT:
# - Usuario: Carolina (madre)
# - Notificación de: Otro padre (Pablo)
# - Ruta compartida: Parque El Olivar (ruta segura)
# - Hora compartida: 07:00
# - Distancia: 2.3 km desde mi ubicación
# - Compatibilidad: Ruta similar a mi destino

# OUTPUT:
# - Notificación: "Padre cerca comparte ruta segura"
# - Contenido: "Pablo compartió: Parque El Olivar (AQI 22)"
# - Ruta mostrada: Mapa con ruta en verde
# - Opciones: "Aceptar ruta" / "Ver diferencias" / "Rechazar"
# - Datos: Tiempo: 28 min, Distancia: 11 km, AQI promedio: 22

Scenario: Validación del Trayecto Familiar

Given que sigo la ruta recomendada
And llego al parque con mis hijos
When finalizo recorrido
Then la app indica condiciones favorables
And se registra éxito del reporte

# INPUT:
# - Usuario: Carolina
# - Ruta seleccionada: Ruta de Pablo (segura)
# - Acompañantes: 2 hijos
# - Inicio: 07:15
# - Fin: 07:43
# - Paradas: 0 (ruta directa)

# OUTPUT:
# - Confirmación: "Trayecto seguro completado"
# - Exposición: Mínima: AQI promedio 22
# - Registro: Se guarda experiencia positiva
# - Retroalimentación: "Gracias por usar ruta segura"
# - Puntos: Carolina gana +25 puntos eco
# - Validación comunitaria: Se refuerza confiabilidad de ruta de Pablo

Scenario: Alerta de Cambio de Condiciones

Given que hay cambio en condiciones de la ruta compartida
And recibo alerta en tiempo real
When se detecta aumento de contaminación
Then recibo notificación urgente
And puedo ajustar mi ruta

# INPUT:
# - Ruta activa: Parque El Olivar (ruta segura compartida)
# - Usuario: Carolina en ruta con hijos
# - Evento: Congestión vehicular inesperada
# - Nueva lectura AQI: 65 (sube de 22)
# - Ubicación usuario: A mitad de recorrido

# OUTPUT:
# - Alerta: "Cambio de condiciones detectado"
# - Información: "Aumento de contaminación en tu ruta (AQI 65)"
# - Recomendación: "Considera cambiar de ruta"
# - Alternativa: 2 opciones de desvío disponibles
# - Botones: "Desviar ahora" / "Continuar"
# - Notificación adicional: Se notifica al usuario que compartió la ruta

Feature: Comentar sobre la condición de rutas

Como usuario activo
Quiero comentar sobre la condición de rutas
Para agregar contexto a los reportes

Scenario: Enriquecimiento de Reportes

Given que paso por una ruta con polen o polvo visible
And quiero informar a otros
When escribo comentario en la app
Then se añade al reporte
And otros usuarios pueden verlo

# INPUT:
# - Usuario: Luis (corredor)
# - Ubicación: Av. Arequipa 260, Lince
# - Observación: Polvo visible por construcción
# - Tipo comentario: Descripción adicional
# - Texto: "Hay construcción + polvo en la vereda"

# OUTPUT:
# - Confirmación: "Comentario añadido"
# - Reporte actualizado: Ahora incluye contexto del comentario
# - Visibilidad: Otros usuarios ven el comentario
# - Puntos: Usuario gana +15 puntos eco
# - Mostrado en: Tooltip cuando otros usuarios pasan

Scenario: Moderación y Relevancia

Given que otro usuario comenta una ruta
And su comentario necesita revisión
When el sistema valida el contenido
Then se aprueba el comentario
And se publica en el mapa colaborativo

# INPUT:
# - Usuario: Otro usuario
# - Comentario: "Construcción abierta sin control de polvo"
# - Contenido: Relevante y descriptivo
# - Validación: Sistema revisa sin spam
# - Hora envío: 11:30

# OUTPUT:
# - Estado: Aprobado
# - Publicación: Se publica en mapa colaborativo
# - Visibilidad: Todos los usuarios cercanos ven el comentario
# - Reporte original: Se fortalece con comentario validado
# - Contexto: Se registra que minimicé exposición a riesgos

Scenario: Actualización de Estado

Given que el reporte fue enviado
And la zona mejoró
When agrego comentario de seguimiento
Then el reporte original se marca como actualizado
And se notifica a la comunidad

# INPUT:
# - Reporte original: Zona crítica - Construcción
# - Comentario de seguimiento: "Construcción finalizada, zona limpia ahora"
# - Usuario: Mismo que reportó originalmente
# - Tiempo transcurrido: 4 horas desde reporte

# OUTPUT:
# - Actualización: "Reporte actualizado"
# - Contenido: Comentario visible
# - Estado zona: Cambia de rojo a verde
# - Notificación comunitaria: Usuarios reciben actualización
# - Marca temporal: Se registra hora de comentario
# - Reporte final: Se marca como "Resuelto por usuario"

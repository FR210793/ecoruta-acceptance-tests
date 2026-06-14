# language: es
Funcionalidad: Comentar sobre la condición de rutas
  Como usuario activo
  Quiero comentar sobre la condición de rutas
  Para agregar contexto a los reportes

  Escenario 1: Enriquecimiento de Reportes
    Dado que paso por una ruta con polen o polvo visible
    Y quiero informar a otros
    Cuando escribo comentario en la app
    Entonces se añade al reporte
    Y otros usuarios pueden verlo

    # INPUT
    Entrada:
      | Campo | Valor |
      | Usuario | Luis (corredor) |
      | Ubicación | Av. Arequipa 260, Lince |
      | Observación | Polvo visible por construcción |
      | Tipo comentario | Descripción adicional |
      | Texto | "Hay construcción + polvo en la vereda" |

    # OUTPUT
    Salida esperada:
      | Confirmación | ✅ "Comentario añadido" |
      | Reporte actualizado | Ahora incluye contexto del comentario |
      | Visibilidad | Otros usuarios ven: "Hay construcción + polvo" |
      | Puntos | Usuario gana +15 puntos eco |
      | Mostrado en | Tooltip cuando otros usuarios pasan |

  Escenario 2: Moderación y Relevancia
    Dado que otro usuario comenta una ruta
    Y su comentario necesita revisión
    Cuando el sistema valida el contenido
    Entonces se aprueba el comentario
    Y se publica en el mapa colaborativo

    # INPUT
    Entrada:
      | Campo | Valor |
      | Usuario | Otro usuario |
      | Comentario | "Construcción abierta sin control de polvo" |
      | Contenido | Relevante y descriptivo |
      | Validación | Sistema revisa: ✓ Sin spam, ✓ Relevante |
      | Hora envío | 11:30 |

    # OUTPUT
    Salida esperada:
      | Estado | Aprobado ✅ |
      | Publicación | Se publica en mapa colaborativo |
      | Visibilidad | Todos los usuarios cercanos ven el comentario |
      | Reporte original | Se fortalece con comentario validado |
      | Contexto | "Se registra que minimicé exposición a riesgos" |

  Escenario 3: Actualización de Estado
    Dado que el reporte fue enviado
    Y la zona mejoró
    Cuando agrego comentario de seguimiento
    Entonces el reporte original se marca como actualizado
    Y se notifica a la comunidad

    # INPUT
    Entrada:
      | Campo | Valor |
      | Reporte original | Zona crítica - Construcción |
      | Comentario de seguimiento | "Construcción finalizada, zona limpia ahora" |
      | Usuario | Mismo que reportó originalmente |
      | Tiempo transcurrido | 4 horas desde reporte |

    # OUTPUT
    Salida esperada:
      | Actualización | ℹ️ "Reporte actualizado" |
      | Contenido | Comentario visible: "Construcción finalizada" |
      | Estado zona | Cambia de rojo a verde |
      | Notificación comunitaria | Usuarios reciben actualización |
      | Marca temporal | Se registra: "Comentario de cierre a las 15:30" |
      | Reporte final | Se marca como "Resuelto por usuario" |

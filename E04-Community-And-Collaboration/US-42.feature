# language: es
Funcionalidad: Alertas de rutas seguras compartidas por padres
  Como padre de familia
  Quiero recibir notificaciones de rutas seguras compartidas por otros padres
  Para proteger a mis hijos

  Escenario 1: Recepción de Sugerencia Solidaria
    Dado que otro padre comparte su ruta segura
    Y se encuentra cerca de mi ubicación
    Cuando abro la app
    Entonces recibo notificación con ruta recomendada
    Y puedo aceptarla o rechazarla

    # INPUT
    Entrada:
      | Campo | Valor |
      | Usuario | Carolina (madre) |
      | Notificación de | Otro padre (Pablo) |
      | Ruta compartida | Parque El Olivar (ruta segura) |
      | Hora compartida | 07:00 |
      | Distancia | 2.3 km desde mi ubicación |
      | Compatibilidad | Ruta similar a mi destino |

    # OUTPUT
    Salida esperada:
      | Notificación | 🔔 "Padre cerca comparte ruta segura" |
      | Contenido | "Pablo compartió: Parque El Olivar (AQI 22)" |
      | Ruta mostrada | Mapa con ruta en verde |
      | Opciones | "Aceptar ruta" / "Ver diferencias" / "Rechazar" |
      | Datos | Tiempo: 28 min, Distancia: 11 km, AQI promedio: 22 |

  Escenario 2: Validación del Trayecto Familiar
    Dado que sigo la ruta recomendada
    Y llego al parque con mis hijos
    Cuando finalizo recorrido
    Entonces la app indica condiciones favorables
    Y se registra éxito del reporte

    # INPUT
    Entrada:
      | Campo | Valor |
      | Usuario | Carolina |
      | Ruta seleccionada | Ruta de Pablo (segura) |
      | Acompañantes | 2 hijos |
      | Inicio | 07:15 |
      | Fin | 07:43 |
      | Paradas | 0 (ruta directa) |

    # OUTPUT
    Salida esperada:
      | Confirmación | ✅ "Trayecto seguro completado" |
      | Exposición | Mínima: AQI promedio 22 |
      | Registro | Se guarda experiencia positiva |
      | Retroalimentación | "Gracias por usar ruta segura" |
      | Puntos | Carolina gana +25 puntos eco |
      | Validación comunitaria | Se refuerza confiabilidad de ruta de Pablo |

  Escenario 3: Alerta de Cambio de Condiciones
    Dado que hay cambio en condiciones de la ruta compartida
    Y recibo alerta en tiempo real
    Cuando se detecta aumento de contaminación
    Entonces recibo notificación urgente
    Y puedo ajustar mi ruta

    # INPUT
    Entrada:
      | Campo | Valor |
      | Ruta activa | Parque El Olivar (ruta segura compartida) |
      | Usuario | Carolina en ruta con hijos |
      | Evento | Congestión vehicular inesperada |
      | Nueva lectura AQI | 65 (sube de 22) |
      | Ubicación usuario | A mitad de recorrido |

    # OUTPUT
    Salida esperada:
      | Alerta | ⚠️ "Cambio de condiciones detectado" |
      | Información | "Aumento de contaminación en tu ruta (AQI 65)" |
      | Recomendación | "Considera cambiar de ruta" |
      | Alternativa | 2 opciones de desvío disponibles |
      | Botones | "Desviar ahora" / "Continuar" |
      | Notificación adicional | Se notifica al usuario que compartió la ruta |

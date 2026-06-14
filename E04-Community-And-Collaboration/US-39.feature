# language: es
Funcionalidad: Reporte de zonas contaminadas
  Como usuario de EcoRuta
  Quiero reportar zonas con humo o tráfico pesado
  Para que otros usuarios reciban alertas en tiempo real

  Escenario 1: Generación de Reporte Comunitario
    Dado que detecto una zona con alta contaminación
    Y quiero avisar a la comunidad
    Cuando pulso el botón "Reportar" en la app
    Entonces EcoRuta actualiza el mapa de color
    Y otros usuarios reciben notificación inmediata

    # INPUT
    Entrada:
      | Campo | Valor |
      | Usuario | Luis (corredor) |
      | Ubicación | Av. Paseo de la República, Lima |
      | Tipo de contaminación | Humo visible (posible incendio) |
      | Severidad | Alta (AQI estimado > 150) |
      | Hora del reporte | 12:45 |
      | Descripción | "Congestión vehicular + humo de vehículos" |

    # OUTPUT
    Salida esperada:
      | Confirmación | ✅ "Reporte enviado" |
      | Mapa actualizado | Zona marcada en rojo |
      | Notificación comunitaria | Otros usuarios en zona reciben alerta |
      | Durabilidad | Reporte válido por 2 horas |
      | Puntos | Usuario gana +30 puntos eco |
      | Visibilidad | Reporte visible en mapa para todos |

  Escenario 2: Alerta de Proximidad a Zona Reportada
    Dado que un usuario reporta una zona crítica
    Y yo estoy en ruta cercana
    Cuando la app me alerta de la zona
    Entonces puedo elegir ruta alternativa
    Y la app registra mi decisión

    # INPUT
    Entrada:
      | Campo | Valor |
      | Usuario | Miguel |
      | Ubicación actual | 600m de la zona reportada |
      | Zona reportada | Av. Paseo de la República (AQI 165) |
      | Ruta en progreso | En curso |
      | Tiempo hasta zona | 4 minutos |

    # OUTPUT
    Salida esperada:
      | Notificación | 🔔 "Zona reportada cerca: Av. Paseo de la República" |
      | Detalles | "Un usuario reportó congestión y humo" |
      | Opciones | "Ver alternativas" / "Continuar ruta" |
      | Ruta alternativa | Sugerida automáticamente |
      | Acción registrada | Sistema registra decisión del usuario |

  Escenario 3: Normalización de la Ruta
    Dado que el reporte fue enviado
    Y la zona se vuelve segura o menos contaminada
    Cuando el sistema valida la información con sensores y reportes posteriores
    Entonces se elimina alerta temporal
    Y se notifica a usuarios que la ruta es ahora segura

    # INPUT
    Entrada:
      | Campo | Valor |
      | Reporte original | Zona crítica - Av. Paseo de la República |
      | Hora del reporte | 12:45 |
      | Validación | Sensores actualizados + 3 reportes posteriores |
      | Nueva medición AQI | 45 (saludable) |
      | Tiempo transcurrido | 90 minutos |

    # OUTPUT
    Salida esperada:
      | Alerta eliminada | ✅ Zona ya no crítica |
      | Notificación | "Condiciones mejoraron en Av. Paseo" |
      | Mapa actualizado | Zona cambia de rojo a verde |
      | Usuarios notificados | Todos los usuarios activos en zona |
      | Reporte original | Marcado como "Resuelto" |
      | Punto de cierre | "Zona normalizó gracias a reportes comunitarios" |

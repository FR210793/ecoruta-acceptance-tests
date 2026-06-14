# language: es
Funcionalidad: Recomendación de horarios adecuados para actividades
  Como usuario que realiza actividades al aire libre
  Quiero recibir recomendaciones de horarios con mejor calidad del aire
  Para planificar mis actividades de forma segura

  Escenario 1: Recomendación de horario favorable
    Dado que existen variaciones en la calidad del aire durante el día
    Y el sistema cuenta con datos históricos
    Cuando el usuario consulta recomendaciones
    Entonces el sistema sugiere horarios con menor contaminación
    Y los presenta como opciones preferentes

    # INPUT
    Entrada:
      | Campo | Valor |
      | Usuario | Miguel (deportista) |
      | Ubicación | Av. Arequipa 260, Lince, Lima |
      | Hora actual | 09:30 |
      | Tipo de actividad | Ciclismo |
      | Horarios a evaluar | 06:00-08:00, 09:00-11:00, 17:00-19:00 |

    # OUTPUT
    Salida esperada:
      | Horario recomendado | 06:00-08:00 |
      | AQI sugerido | 17 (Aire óptimo) |
      | Mensaje | "¡Buen momento para un paseo!" |
      | Indicadores visibles | PM2.5 (verde), PM10 (verde), Nivel polen (bajo) |

  Escenario 2: Evitar horarios con alta contaminación
    Dado que existen horarios con niveles elevados de contaminación
    Y el usuario revisa la información
    Cuando el sistema analiza los datos
    Entonces indica los períodos no recomendados
    Y sugiere evitar actividades en esos momentos

    # INPUT
    Entrada:
      | Campo | Valor |
      | Usuario | María (madre) |
      | Ubicación | Lince, Lima |
      | Hora actual | 14:30 |
      | Horarios a evaluar | 12:00-14:00 (AQI 85), 17:00-19:00 (AQI 42) |

    # OUTPUT
    Salida esperada:
      | Horarios no recomendados | 12:00-14:00 |
      | AQI detectado | 85 (Moderado-Alto) |
      | Recomendación | "Evita esta hora, mejor en 17:00-19:00" |
      | Indicador crítico | PM10 en naranja |

  Escenario 3: Falta de datos suficientes
    Dado que no existen datos suficientes para generar recomendaciones
    Y el usuario solicita información
    Cuando el sistema procesa la solicitud
    Entonces muestra un aviso de información limitada
    Y mantiene visible la información disponible

    # INPUT
    Entrada:
      | Campo | Valor |
      | Usuario | Nuevo usuario |
      | Ubicación | Zona sin sensores cercanos |
      | Datos históricos | < 24 horas |
      | Hora de consulta | 10:00 |

    # OUTPUT
    Salida esperada:
      | Mensaje | "Información limitada disponible" |
      | Datos mostrados | Datos de sensores más cercanos (5 km) |
      | Recomendación | Datos generales de calidad de aire |
      | Estado | Visible pero con indicador de baja confianza |

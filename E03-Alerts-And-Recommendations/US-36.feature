# language: es
Funcionalidad: Tiempo de respuesta de alertas en tiempo real
  Como usuario
  Quiero que el sistema responda rápidamente al generar alertas de contaminación
  Para poder tomar decisiones inmediatas durante mi desplazamiento

  Escenario 1: Tiempo de respuesta en condición normal
    Dado que el usuario se encuentra en una ruta activa
    Y el sistema detecta una zona con alta contaminación
    Cuando se genera la alerta
    Entonces el sistema debe mostrarla en un tiempo menor o igual a 3 segundos
    Y debe visualizarse correctamente en la interfaz del usuario

    # INPUT
    Entrada:
      | Campo | Valor |
      | Usuario | Miguel (en ruta) |
      | Ubicación | Av. Morales Duárez, Lince |
      | Zona detectada | PM2.5 > 75 (Riesgo moderado) |
      | Sistema | Normal, carga de usuario moderada |
      | Tiempo de generación | t=0 |

    # OUTPUT
    Salida esperada:
      | Alerta mostrada | t ≤ 3 segundos |
      | Tipo de notificación | Visual + sonora |
      | Contenido | "Zona crítica detectada" con AQI actual |
      | Localización | Popup superpuesto en mapa |
      | Acciones disponibles | "Ver alternativas" / "Desviar ruta" / "Ignorar" |

  Escenario 2: Tiempo de respuesta con alta carga
    Dado que múltiples usuarios están utilizando la aplicación al mismo tiempo
    Y se genera una alerta de contaminación
    Cuando el sistema procesa la información
    Entonces el tiempo de respuesta no debe superar los 5 segundos
    Y la alerta debe mostrarse sin errores ni interrupciones

    # INPUT
    Entrada:
      | Campo | Valor |
      | Usuario | Múltiples (100+ activos) |
      | Ubicación | Zona de alta circulación (Avenida Abancay) |
      | Evento | Incendio o congestión vehicular detectados |
      | Carga del servidor | 85% de capacidad |
      | Sensores activados | 15 sensores simultáneos |

    # OUTPUT
    Salida esperada:
      | Tiempo máximo de respuesta | t ≤ 5 segundos |
      | Estado del sistema | Sin errores, sin caídas |
      | Prioridad de alerta | Crítica (rojo) |
      | Notificación push | Enviada a usuarios cercanos |
      | Actualización de mapa | Zona marcada en rojo |

  Escenario 3: Fallo en el tiempo de respuesta
    Dado que el sistema presenta retrasos en la generación de alertas
    Y el tiempo de respuesta supera los 5 segundos
    Cuando ocurre esta situación
    Entonces el sistema debe notificar un retraso
    Y actualizar la alerta lo antes posible

    # INPUT
    Entrada:
      | Campo | Valor |
      | Usuario | Carolina |
      | Ubicación | San Isidro, Lima |
      | Evento | Alerta de zona contaminada |
      | Tiempo de generación real | 8 segundos |
      | Causa | Conexión lenta o latencia de servidor |

    # OUTPUT
    Salida esperada:
      | Notificación | "Alerta con retraso detectada" |
      | Información mostrada | AQI actualizado (aunque atrasado) |
      | Timestamp | "Actualizado hace 8 segundos" |
      | Recomendación | "Información podría no ser actual" |
      | Acción sugerida | Permitir usuario decidir si cambiar ruta |

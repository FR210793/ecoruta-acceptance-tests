# language: es
Funcionalidad: Recomendaciones personalizadas según hábitos del usuario
  Como usuario
  Quiero recibir recomendaciones basadas en mis rutas y horarios frecuentes
  Para reducir mi exposición a la contaminación de forma personalizada

  Escenario 1: Usuario con patrones de ruta frecuentes
    Dado que el usuario suele desplazarse por las mismas rutas
    Y el sistema registra su historial de trayectos
    Cuando analiza sus patrones de movilidad
    Entonces genera recomendaciones personalizadas
    Y propone rutas con menor contaminación en esos trayectos habituales

    # INPUT
    Entrada:
      | Campo | Valor |
      | Usuario | Miguel (deportista) |
      | Historial de rutas | Parque El Olivar → Casa (20 veces) |
      | Horario frecuente | 06:30-07:30 |
      | Rutas analizadas | 5 posibles alternativas |

    # OUTPUT
    Salida esperada:
      | Recomendación principal | Parque El Olivar (AQI 22 😊) |
      | Alternativa 1 | Parque San Miguel (AQI 18 😊) |
      | Alternativa 2 | Parque Reducto (AQI 48 😐) |
      | Distancia adicional | +2.5 km máximo |
      | Tiempo estimado | 28-32 minutos |

  Escenario 2: Usuario con horarios definidos
    Dado que el usuario se moviliza en horarios similares cada día
    Y existen variaciones de contaminación en esos horarios
    Cuando el sistema analiza la información
    Entonces sugiere horarios alternativos más favorables
    Y muestra comparaciones de niveles de contaminación

    # INPUT
    Entrada:
      | Campo | Valor |
      | Usuario | Carolina (madre con hijo asmático) |
      | Horario habitual | 15:00-16:00 (para ir al colegio) |
      | Datos históricos | 30 días de registros |
      | Sensibilidad registrada | Asma infantil |

    # OUTPUT
    Salida esperada:
      | Horario actual | 15:00 (AQI 65 😐) |
      | Horario recomendado | 08:00 (AQI 28 😊) |
      | Mejora en exposición | -58% menor contaminación |
      | Comparación visual | Gráfico de tendencias PM2.5 |

  Escenario 3: Usuario sin historial suficiente
    Dado que el usuario no cuenta con historial de uso
    Y solicita recomendaciones
    Cuando el sistema procesa la información
    Entonces muestra recomendaciones generales
    Y adapta progresivamente las sugerencias según el uso

    # INPUT
    Entrada:
      | Campo | Valor |
      | Usuario | Nuevo usuario |
      | Historial de rutas | 0 registros |
      | Perfil completado | Nombre, ubicación, sensibilidades |
      | Consulta | Ver recomendaciones iniciales |

    # OUTPUT
    Salida esperada:
      | Recomendaciones | Generales por zona de Lima |
      | Mensaje | "Recomendaciones generales. Se adaptarán con el uso" |
      | Opciones mostradas | 3 rutas populares saludables |
      | Actualización | Sistema aprenderá después de 5 rutas |

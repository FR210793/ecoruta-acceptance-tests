# language: es
Funcionalidad: Calificación de rutas
  Como usuario urbano
  Quiero calificar rutas recomendadas por otros
  Para ayudar a la comunidad a identificar rutas confiables

  Escenario 1: Retroalimentación del Usuario
    Dado que acabo de usar una ruta sugerida
    Y quiero compartir experiencia
    Cuando asigno calificación en la app
    Entonces la calificación se refleja en la ruta
    Y otros usuarios la ven

    # INPUT
    Entrada:
      | Campo | Valor |
      | Usuario | Miguel (ciclista) |
      | Ruta calificada | Parque El Olivar (ruta verde) |
      | Experiencia | Muy buena, AQI realmente bajo |
      | Calificación | 5 estrellas ⭐⭐⭐⭐⭐ |
      | Comentario | "Excelente ruta, aire muy limpio, muy recomendada" |

    # OUTPUT
    Salida esperada:
      | Confirmación | ✅ "Calificación registrada" |
      | Estrella mostrada | 5/5 ⭐ para Parque El Olivar |
      | Visibilidad | Otros usuarios ven calificación |
      | Impacto | Calificación ponderada de ruta sube a 4.8/5 |
      | Puntos | Miguel gana +20 puntos eco |
      | Reputación | Su calificación es marcada como "Confiable" |

  Escenario 2: Inteligencia Colectiva
    Dado que múltiples usuarios califican la misma ruta
    Y las calificaciones varían
    Cuando visualizo promedio
    Entonces se muestra calificación consolidada
    Y se actualiza la percepción de confiabilidad

    # INPUT
    Entrada:
      | Campo | Valor |
      | Ruta | Parque El Olivar |
      | Calificaciones | 5★ (Miguel), 4★ (Carolina), 5★ (Luis), 3★ (Pablo) |
      | Total usuarios | 4 calificaciones |
      | Rango | Últimas 7 días |

    # OUTPUT
    Salida esperada:
      | Promedio | 4.25/5 ⭐⭐⭐⭐ |
      | Confiabilidad | "Muy recomendada por comunidad" |
      | Distribución | Se muestra gráfico de estrellas |
      | Información | "4 usuarios califican esta ruta" |
      | Señal | Sistema aumenta confianza en recomendación |
      | Ranking | Ruta sube en ranking de mejores rutas |

  Escenario 3: Filtro de Seguridad por Baja Calificación
    Dado que una ruta tiene baja calificación
    Y hay reportes recientes de contaminación
    Cuando la consulto
    Entonces la app recomienda alternativa
    Y se evita exposición a riesgos

    # INPUT
    Entrada:
      | Campo | Valor |
      | Ruta | Av. Arequipa (ruta histórica) |
      | Calificación promedio | 2.1/5 ⭐⭐ |
      | Comentarios negativos | "Mucha contaminación", "Tráfico" |
      | Reportes activos | 2 (congestión + humo) |
      | Alternativa disponible | Parque El Olivar (4.8/5) |

    # OUTPUT
    Salida esperada:
      | Advertencia | ⚠️ "Ruta con baja calificación (2.1/5)" |
      | Razones | "Usuarios reportan contaminación y tráfico" |
      | Recomendación | "Considera alternativa: Parque El Olivar (4.8/5)" |
      | Comparación | Se muestran diferencias de AQI |
      | Botón | "Ver alternativa recomendada" |
      | Filtro automático | Sistema excluye esta ruta de sugerencias para nuevos usuarios |

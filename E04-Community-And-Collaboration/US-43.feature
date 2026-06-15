Feature: Calificación de rutas

Como usuario urbano
Quiero calificar rutas recomendadas por otros
Para ayudar a la comunidad a identificar rutas confiables

Scenario: Retroalimentación del Usuario

Given que acabo de usar una ruta sugerida
And quiero compartir experiencia
When asigno calificación en la app
Then la calificación se refleja en la ruta
And otros usuarios la ven

# INPUT:
# - Usuario: Miguel (ciclista)
# - Ruta calificada: Parque El Olivar (ruta verde)
# - Experiencia: Muy buena, AQI realmente bajo
# - Calificación: 5 estrellas
# - Comentario: "Excelente ruta, aire muy limpio, muy recomendada"

# OUTPUT:
# - Confirmación: "Calificación registrada"
# - Estrella mostrada: 5/5 para Parque El Olivar
# - Visibilidad: Otros usuarios ven calificación
# - Impacto: Calificación ponderada de ruta sube a 4.8/5
# - Puntos: Miguel gana +20 puntos eco
# - Reputación: Su calificación es marcada como "Confiable"

Scenario: Inteligencia Colectiva

Given que múltiples usuarios califican la misma ruta
And las calificaciones varían
When visualizo promedio
Then se muestra calificación consolidada
And se actualiza la percepción de confiabilidad

# INPUT:
# - Ruta: Parque El Olivar
# - Calificaciones: 5★ (Miguel), 4★ (Carolina), 5★ (Luis), 3★ (Pablo)
# - Total usuarios: 4 calificaciones
# - Rango: Últimas 7 días

# OUTPUT:
# - Promedio: 4.25/5
# - Confiabilidad: "Muy recomendada por comunidad"
# - Distribución: Se muestra gráfico de estrellas
# - Información: "4 usuarios califican esta ruta"
# - Señal: Sistema aumenta confianza en recomendación
# - Ranking: Ruta sube en ranking de mejores rutas

Scenario: Filtro de Seguridad por Baja Calificación

Given que una ruta tiene baja calificación
And hay reportes recientes de contaminación
When la consulto
Then la app recomienda alternativa
And se evita exposición a riesgos

# INPUT:
# - Ruta: Av. Arequipa (ruta histórica)
# - Calificación promedio: 2.1/5
# - Comentarios negativos: "Mucha contaminación", "Tráfico"
# - Reportes activos: 2 (congestión + humo)
# - Alternativa disponible: Parque El Olivar (4.8/5)

# OUTPUT:
# - Advertencia: "Ruta con baja calificación (2.1/5)"
# - Razones: "Usuarios reportan contaminación y tráfico"
# - Recomendación: "Considera alternativa: Parque El Olivar (4.8/5)"
# - Comparación: Se muestran diferencias de AQI
# - Botón: "Ver alternativa recomendada"
# - Filtro automático: Sistema excluye esta ruta de sugerencias para nuevos usuarios

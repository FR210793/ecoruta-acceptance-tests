Feature: Recomendación de horarios adecuados para actividades

Como usuario que realiza actividades al aire libre
Quiero recibir recomendaciones de horarios con mejor calidad del aire
Para planificar mis actividades de forma segura

Scenario: Recomendación de horario favorable

Given que existen variaciones en la calidad del aire durante el día
And el sistema cuenta con datos históricos
When el usuario consulta recomendaciones
Then el sistema sugiere horarios con menor contaminación
And los presenta como opciones preferentes

# INPUT:
# - Usuario: Miguel (deportista)
# - Ubicación: Av. Arequipa 260, Lince, Lima
# - Hora actual: 09:30
# - Tipo de actividad: Ciclismo
# - Horarios a evaluar: 06:00-08:00, 09:00-11:00, 17:00-19:00

# OUTPUT:
# - Horario recomendado: 06:00-08:00
# - AQI sugerido: 17 (Aire óptimo)
# - Mensaje: "¡Buen momento para un paseo!"
# - Indicadores visibles: PM2.5 (verde), PM10 (verde), Nivel polen (bajo)

Scenario: Evitar horarios con alta contaminación

Given que existen horarios con niveles elevados de contaminación
And el usuario revisa la información
When el sistema analiza los datos
Then indica los períodos no recomendados
And sugiere evitar actividades en esos momentos

# INPUT:
# - Usuario: María (madre)
# - Ubicación: Lince, Lima
# - Hora actual: 14:30
# - Horarios a evaluar: 12:00-14:00 (AQI 85), 17:00-19:00 (AQI 42)

# OUTPUT:
# - Horarios no recomendados: 12:00-14:00
# - AQI detectado: 85 (Moderado-Alto)
# - Recomendación: "Evita esta hora, mejor en 17:00-19:00"
# - Indicador crítico: PM10 en naranja

Scenario: Falta de datos suficientes

Given que no existen datos suficientes para generar recomendaciones
And el usuario solicita información
When el sistema procesa la solicitud
Then muestra un aviso de información limitada
And mantiene visible la información disponible

# INPUT:
# - Usuario: Nuevo usuario
# - Ubicación: Zona sin sensores cercanos
# - Datos históricos: < 24 horas
# - Hora de consulta: 10:00

# OUTPUT:
# - Mensaje: "Información limitada disponible"
# - Datos mostrados: Datos de sensores más cercanos (5 km)
# - Recomendación: Datos generales de calidad de aire
# - Estado: Visible pero con indicador de baja confianza

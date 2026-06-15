Feature: Recomendaciones personalizadas según hábitos del usuario

Como usuario
Quiero recibir recomendaciones basadas en mis rutas y horarios frecuentes
Para reducir mi exposición a la contaminación de forma personalizada

Scenario: Usuario con patrones de ruta frecuentes

Given que el usuario suele desplazarse por las mismas rutas
And el sistema registra su historial de trayectos
When analiza sus patrones de movilidad
Then genera recomendaciones personalizadas
And propone rutas con menor contaminación en esos trayectos habituales

# INPUT:
# - Usuario: Miguel (deportista)
# - Historial de rutas: Parque El Olivar → Casa (20 veces)
# - Horario frecuente: 06:30-07:30
# - Rutas analizadas: 5 posibles alternativas

# OUTPUT:
# - Recomendación principal: Parque El Olivar (AQI 22)
# - Alternativa 1: Parque San Miguel (AQI 18)
# - Alternativa 2: Parque Reducto (AQI 48)
# - Distancia adicional: +2.5 km máximo
# - Tiempo estimado: 28-32 minutos

Scenario: Usuario con horarios definidos

Given que el usuario se moviliza en horarios similares cada día
And existen variaciones de contaminación en esos horarios
When el sistema analiza la información
Then sugiere horarios alternativos más favorables
And muestra comparaciones de niveles de contaminación

# INPUT:
# - Usuario: Carolina (madre con hijo asmático)
# - Horario habitual: 15:00-16:00 (para ir al colegio)
# - Datos históricos: 30 días de registros
# - Sensibilidad registrada: Asma infantil

# OUTPUT:
# - Horario actual: 15:00 (AQI 65)
# - Horario recomendado: 08:00 (AQI 28)
# - Mejora en exposición: -58% menor contaminación
# - Comparación visual: Gráfico de tendencias PM2.5

Scenario: Usuario sin historial suficiente

Given que el usuario no cuenta con historial de uso
And solicita recomendaciones
When el sistema procesa la información
Then muestra recomendaciones generales
And adapta progresivamente las sugerencias según el uso

# INPUT:
# - Usuario: Nuevo usuario
# - Historial de rutas: 0 registros
# - Perfil completado: Nombre, ubicación, sensibilidades
# - Consulta: Ver recomendaciones iniciales

# OUTPUT:
# - Recomendaciones: Generales por zona de Lima
# - Mensaje: "Recomendaciones generales. Se adaptarán con el uso"
# - Opciones mostradas: 3 rutas populares saludables
# - Actualización: Sistema aprenderá después de 5 rutas

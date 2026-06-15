Feature: Alertas de polen

Como usuario con alergias
Quiero recibir alertas de polen reportadas por la comunidad
Para decidir si recorro o evito la ruta

Scenario: Prevención Personalizada

Given que se registran niveles altos de polen
And mi perfil indica sensibilidad
When consulto mi ruta habitual
Then recibo notificación de alerta
And se sugiere ruta alternativa

# INPUT:
# - Usuario: Carolina (madre asmática)
# - Perfil de salud: Sensibilidad a polen
# - Ubicación: San Isidro, Lima
# - Ruta habitual: Parque Reducto
# - Nivel de polen: 78 µg/m³ (Alto)
# - Estado actual: Busca ruta segura

# OUTPUT:
# - Alerta: "Alerta de polen personalizada"
# - Contenido: "Nivel alto de polen en tu zona"
# - Indicador: "Nivel de polen: ALTO (78 µg/m³)"
# - Riesgo: Rojo - Riesgo alérgico
# - Recomendación: "Tu ruta tiene alto riesgo. Considera alternativa"
# - Alternativa: Parque El Olivar (nivel bajo: 12 µg/m³)

Scenario: Advertencia en Tiempo Real

Given que estoy cerca de un lugar con polen elevado
And otros usuarios reportan la condición
When abro el mapa en tiempo real
Then la ruta se marca con alerta
And puedo decidir cambiar mi recorrido

# INPUT:
# - Usuario: Carolina en ruta
# - Ubicación: 300m de Parque Reducto
# - Reporte comunitario: "Floración de flores silvestres, mucho polen"
# - Nivel de polen detectado: 95 µg/m³ (muy alto)
# - Sensibilidad usuario: Alérgica confirmada

# OUTPUT:
# - Notificación urgente: "Zona con alto polen muy cerca"
# - Detalles: "Usuarios reportan: Floración de flores silvestres"
# - Indicador mapa: Zona marcada en ROJO (muy alto riesgo)
# - Nivel en zona: 95 µg/m³ (Crítico para alérgicos)
# - Opciones: "Cambiar ruta" / "Continuar (usar máscara)" / "Posponer"
# - Recomendación: "Evita esta zona si tienes alergia"

Scenario: Recuperación de Ruta

Given que la concentración de polen disminuye
And la app recibe confirmación de otros usuarios
When reviso la ruta nuevamente
Then la alerta se elimina
And la ruta queda disponible como segura

# INPUT:
# - Ruta: Parque Reducto
# - Alerta anterior: Nivel alto de polen (95 µg/m³)
# - Tiempo transcurrido: 4 horas
# - Nueva medición: Nivel de polen: 32 µg/m³ (bajo)
# - Confirmación: 3 usuarios reportan: "Menos polen, mejor ahora"

# OUTPUT:
# - Alerta resuelta: "Condiciones mejoraron"
# - Nuevo nivel: Nivel de polen: BAJO (32 µg/m³)
# - Indicador mapa: Zona cambia de ROJO a VERDE
# - Notificación: "Parque Reducto es seguro ahora para alérgicos"
# - Recomendación: "Puedes usar tu ruta habitual sin problemas"
# - Marca temporal: "Actualizado a las 16:30"

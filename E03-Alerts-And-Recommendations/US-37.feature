Feature: Alertas de contaminación para ciclistas

Como ciclista urbano
Quiero recibir alertas en tiempo real sobre zonas con alta contaminación
Para poder cambiar mi ruta y proteger mi salud respiratoria

Scenario: Redirección Proactiva

Given que estoy iniciando mi ruta programada
And la app detecta un pico de PM2.5 en la zona que voy a recorrer
When me acerco a la zona contaminada
Then recibo una alerta de contaminación
And se muestra una ruta alternativa recomendada

# INPUT:
# - Usuario: Miguel (ciclista)
# - Ruta programada: Av. Morales Duárez → Av. Salaverry
# - Zona contaminada detectada: PM2.5 > 100 (crítico)
# - Distancia a zona: 500 metros
# - Tiempo hasta zona: 4 minutos

# OUTPUT:
# - Notificación: "Zona crítica detectada"
# - AQI en zona: 165 (Riesgo alto)
# - Opciones usuario: "Ver alternativas" / "Desviar ruta (+100m)" / "Ignorar alerta"
# - Ruta alternativa: Sug: +2.3 km, tiempo +12 min, AQI 45
# - Color indicador: Rojo en mapa

Scenario: Persistencia en Ruta Crítica

Given que ignoro la alerta de contaminación
And continúo por la ruta habitual
When paso por la zona crítica
Then EcoRuta registra mi decisión
And envía notificación de recordatorio de exposición

# INPUT:
# - Usuario: Miguel (ciclista persistente)
# - Alerta previa: Rechazada
# - Ruta seleccionada: Ruta original crítica
# - PM2.5 en zona: 120 µg/m³ (muy alto)
# - Tiempo en zona: 8 minutos

# OUTPUT:
# - Notificación: "Continuarás en ruta original"
# - Advertencia: "AQI alto: 165. Exposición estimada: 8 min"
# - Registro: Sistema guarda decisión del usuario
# - Notificación post-exposición: Recordatorio de exposición a contaminantes
# - Recomendación: "Próxima vez considera ruta alternativa"

Scenario: Confirmación de Beneficio

Given que he seguido la ruta alternativa sugerida
And he llegado a mi destino
When finalizo mi recorrido
Then la app confirma que minimicé exposición
And me da un resumen de la calidad del aire en mi trayecto

# INPUT:
# - Usuario: Miguel (ciclista consciente)
# - Ruta seleccionada: Ruta alternativa recomendada
# - Distancia recorrida: 15.2 km
# - Tiempo: 42 minutos
# - Parada final: Destino alcanzado

# OUTPUT:
# - Confirmación: "Ruta completada"
# - Exposición minimizada: "Evitaste zona crítica (AQI -120)"
# - Resumen exposición: Promedio AQI: 45 (saludable)
# - Distancia ahorrada vs crítica: "Ruta +2.3 km pero -70% exposición"
# - Recompensa: "+50 puntos eco"

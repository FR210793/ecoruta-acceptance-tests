Feature: Recomendación de pausas en zonas seguras

Como usuario
Quiero recibir recomendaciones de pausas en zonas con baja contaminación
Para reducir mi exposición durante trayectos largos

Scenario: Trayecto largo con alta exposición
Given el usuario realiza un trayecto prolongado
And el sistema detecta niveles altos de contaminación en la ruta
When el usuario analiza el recorrido
Then el sistema recomienda una zona con menor contaminación para detenerse
And muestra la ubicación en el mapa

INPUT:
- Ruta del usuario
- Tiempo estimado del trayecto
- Niveles de contaminación en la ruta
- Ubicación del usuario en tiempo real

OUTPUT:
- Recomendación de punto de pausa seguro
- Ubicación en el mapa del punto sugerido
- Indicador de baja contaminación en la zona


Scenario: Trayecto corto sin riesgo
Given el usuario realiza un trayecto corto
And no existen niveles altos de contaminación
When el sistema evalúa la ruta
Then no genera recomendaciones de pausa
And permite continuar con el trayecto sin interrupciones

INPUT:
- Ruta del usuario
- Duración del trayecto
- Niveles de contaminación bajos
- Datos de monitoreo ambiental

OUTPUT:
- Sin recomendaciones de pausa
- Continuidad del recorrido normal
- Confirmación de ruta segura


Scenario: Falta de zonas seguras cercanas
Given el usuario se encuentra en una zona con alta contaminación
And no hay puntos cercanos con baja contaminación
When el sistema analiza el entorno
Then informa la falta de zonas seguras
And sugiere continuar con precaución

INPUT:
- Ubicación del usuario
- Niveles altos de contaminación
- Base de datos de zonas seguras
- Rutas disponibles

OUTPUT:
- Aviso de falta de zonas seguras
- Recomendación de precaución
- Información de riesgo ambiental
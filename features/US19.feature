Feature: Configuración de alertas de calidad de aire

Como usuario sensible a la contaminación
Quiero configurar alertas
Para recibir una notificación cuando el aire sea no saludable en mi zona

Scenario: Escenario 1: Configuración de alerta crítica
Given que el usuario activa las notificaciones de la aplicación en ajustes
And define un nivel máximo de alerta de 100 AQI
When los sensores detectan que el aire llega a ese punto
Then el sistema envía una notificación de alerta inmediata
And muestra un icono de advertencia en la barra de estado

# INPUT:
# - Notificaciones de la aplicación activadas
# - Nivel máximo de alerta configurado en 100 AQI
# - Lectura de sensores que alcanza el nivel definido

# OUTPUT:
# - Notificación de alerta inmediata enviada al usuario
# - Icono de advertencia mostrado en la barra de estado

Scenario: Escenario 2: Alerta de vuelta a la normalidad
Given que el aire estuvo en nivel dañino previamente
And el usuario tiene las alertas de mejora activadas
When el AQI baja a un nivel saludable
Then el sistema envía un aviso de aire limpio
And sugiere que ya es seguro realizar actividades fuera

# INPUT:
# - Registro previo de aire en nivel dañino
# - Alertas de mejora activadas por el usuario
# - Nuevo valor AQI en nivel saludable

# OUTPUT:
# - Aviso de aire limpio enviado al usuario
# - Sugerencia para realizar actividades fuera de forma segura

Scenario: Escenario 3: Silenciar alertas temporalmente
Given que el usuario está en una reunión importante
And pulsa la opción de "No molestar" en la aplicación
When ocurre un cambio brusco en la calidad del aire
Then el sistema guarda la alerta de forma silenciosa
And la muestra solo cuando el usuario abre la aplicación de nuevo

# INPUT:
# - Modo "No molestar" activado por el usuario
# - Cambio brusco detectado en la calidad del aire
# - Aplicación cerrada o en segundo plano

# OUTPUT:
# - Alerta guardada de forma silenciosa
# - Alerta mostrada cuando el usuario vuelve a abrir la aplicación
    
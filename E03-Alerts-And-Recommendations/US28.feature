Feature: Alertas de contaminación en tiempo real

Como usuario
Quiero recibir alertas en tiempo real sobre zonas con alta contaminación
Para poder evitar rutas peligrosas

Scenario: Recepción de alerta en zona contaminada
Given el usuario se encuentra en una ruta activa
And el sistema detecta alta contaminación en su ubicación
When el usuario se aproxima a la zona de riesgo
Then recibe una notificación de alerta
And se le indica evitar la zona

INPUT:
- Ubicación actual del usuario
- Datos de contaminación en tiempo real
- Ruta activa del usuario
- Sistema de monitoreo ambiental

OUTPUT:
- Notificación de alerta enviada
- Aviso de zona contaminada
- Recomendación de evitar la zona


Scenario: Usuario fuera de zona de riesgo
Given el usuario está en una ruta sin contaminación
And no existen riesgos cercanos
When el sistema monitorea la zona
Then no se envían alertas
And el usuario continúa su trayecto normalmente

INPUT:
- Ubicación del usuario
- Datos ambientales sin riesgo
- Ruta activa
- Sistema de monitoreo en ejecución

OUTPUT:
- No se generan alertas
- Confirmación de zona segura
- Continuidad del recorrido


Scenario: Notificaciones desactivadas
Given el usuario tiene desactivadas las notificaciones
And entra a una zona contaminada
When el sistema detecta el riesgo
Then no se envía alerta push
And la advertencia se muestra dentro de la app

INPUT:
- Notificaciones desactivadas
- Ubicación en zona contaminada
- Datos de contaminación activos
- Sistema de monitoreo

OUTPUT:
- No hay notificación push
- Alerta dentro de la aplicación
- Advertencia visual interna
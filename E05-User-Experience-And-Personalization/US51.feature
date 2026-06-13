Feature: Gestión de notificaciones

Como usuario
Quiero activar o desactivar las notificaciones
Para decidir cuándo recibir alertas dentro de la aplicación

Scenario: Activar notificaciones
Given que el usuario accede a configuración
And desea recibir alertas
When activa las notificaciones
Then el sistema guarda la preferencia
And permite enviar alertas al usuario

# INPUT:
# - Usuario en configuración
# - Activación de notificaciones

# OUTPUT:
# - Preferencia guardada
# - Notificaciones habilitadas

Scenario: Desactivar notificaciones
Given que el usuario no desea recibir alertas
And accede a configuración
When desactiva las notificaciones
Then el sistema guarda la preferencia
And bloquea el envío de alertas

# INPUT:
# - Usuario en configuración
# - Desactivación de notificaciones

# OUTPUT:
# - Preferencia guardada
# - Notificaciones deshabilitadas

Scenario: Actualizar preferencia
Given que el usuario cambia la configuración de notificaciones
And confirma los cambios
When el sistema actualiza la información
Then aplica la nueva preferencia
And mantiene la elección del usuario

# INPUT:
# - Cambio en la configuración
# - Confirmación del usuario

# OUTPUT:
# - Nueva preferencia aplicada
# - Configuración mantenida

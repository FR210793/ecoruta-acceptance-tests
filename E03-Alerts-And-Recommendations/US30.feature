Feature: Priorización de alertas según nivel de riesgo

Como usuario que realiza actividades al aire libre
Quiero que las alertas se prioricen según el nivel de riesgo
Para identificar rápidamente las situaciones más peligrosas

Scenario: Aproximación a zona contaminada
Given existen múltiples alertas activas en la zona
And algunas presentan niveles de riesgo elevados
When el sistema muestra las notificaciones
Then prioriza las alertas más peligrosas
And las destaca visualmente

INPUT:
- Múltiples alertas activas
- Niveles de riesgo asociados (alto, medio, bajo)
- Ubicación del usuario
- Datos de contaminación en tiempo real

OUTPUT:
- Alertas priorizadas por nivel de riesgo
- Alertas críticas destacadas visualmente
- Orden de importancia actualizado


Scenario: Visualización diferenciada de alertas
Given el sistema detecta niveles estables de contaminación
And el usuario accede a las alertas
When el usuario revisa la información
Then clasifica las alertas por nivel (alto, medio, bajo)
And utiliza indicadores claros para diferenciarlas

INPUT:
- Alertas activas del sistema
- Niveles de contaminación estables
- Solicitud del usuario para ver alertas
- Datos ambientales actuales

OUTPUT:
- Alertas clasificadas por nivel de riesgo
- Indicadores visuales diferenciados
- Información organizada y legible


Scenario: Falta de datos predictivos
Given cambian las condiciones ambientales
And una alerta aumenta su nivel de riesgo
When el sistema actualiza la información
Then modifica la prioridad de la alerta
And notifica al usuario del cambio

INPUT:
- Cambios en condiciones ambientales
- Alertas existentes en el sistema
- Datos predictivos en actualización
- Sistema de monitoreo activo

OUTPUT:
- Prioridad de alertas actualizada
- Notificación de cambio de riesgo
- Reordenamiento de alertas críticas
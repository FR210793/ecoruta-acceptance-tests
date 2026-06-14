Feature: Notificaciones personalizadas por salud

Como usuario
Quiero recibir alertas según mi condición de salud
Para protegerme mejor durante mis desplazamientos

Scenario: Usuario con condición respiratoria
Given el usuario tiene asma o alergias
And existe alta contaminación en la zona
When el usuario inicia su trayecto
Then el sistema activa alertas más estrictas
And muestra recomendaciones de rutas seguras

INPUT:
- Perfil de salud del usuario (asma, alergias, etc.)
- Niveles altos de contaminación
- Ubicación del usuario
- Trayecto activo

OUTPUT:
- Alertas personalizadas de alta prioridad
- Recomendaciones de rutas seguras
- Advertencias reforzadas


Scenario: Usuario sin condición médica
Given el usuario no presenta condiciones de riesgo
And existe contaminación moderada
When el usuario se moviliza
Then el sistema muestra alertas estándar
And no aplica restricciones adicionales

INPUT:
- Perfil de salud sin condiciones
- Nivel de contaminación moderado
- Ubicación del usuario
- Datos ambientales

OUTPUT:
- Alertas estándar
- Información general de calidad del aire
- Sin restricciones personalizadas


Scenario: Cambio de configuración de salud
Given el usuario modifica su perfil de salud
And actualiza sus preferencias
When el sistema procesa el cambio
Then ajusta el tipo de alertas
And actualiza las recomendaciones automáticamente

INPUT:
- Perfil de salud actualizado
- Nueva configuración del usuario
- Datos de contaminación activos
- Sistema de notificaciones

OUTPUT:
- Alertas ajustadas al nuevo perfil
- Recomendaciones actualizadas
- Cambio aplicado en tiempo real
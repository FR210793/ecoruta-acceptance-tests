Feature: Recomendación preventiva basada en exposición acumulada

Como usuario
Quiero recibir recomendaciones según mi nivel de exposición a la contaminación
Para reducir riesgos en mi salud durante el día

Scenario: Alta exposición acumulada
Given el usuario ha estado expuesto a altos niveles de contaminación
And el sistema registra su historial reciente
When el sistema analiza su nivel de exposición
Then muestra una alerta preventiva
And sugiere evitar rutas con alta contaminación

INPUT:
- Historial de exposición del usuario
- Niveles altos de contaminación registrados
- Datos de rutas disponibles
- Sistema de monitoreo ambiental

OUTPUT:
- Alerta preventiva de alta exposición
- Recomendación de rutas seguras
- Sugerencia de evitar zonas contaminadas


Scenario: Exposición moderada
Given el usuario presenta un nivel moderado de exposición
And continúa su desplazamiento
When el sistema evalúa su historial
Then recomienda rutas con menor contaminación
And sugiere tomar precauciones durante el trayecto

INPUT:
- Historial de exposición moderada
- Ubicación actual del usuario
- Datos de rutas alternativas
- Información de calidad del aire

OUTPUT:
- Recomendación de rutas menos contaminadas
- Sugerencias de precaución
- Evaluación de riesgo moderado


Scenario: Baja exposición
Given el usuario tiene baja exposición acumulada
And consulta recomendaciones
When el sistema analiza los datos
Then permite continuar con la ruta seleccionada
And muestra información general sin alertas críticas

INPUT:
- Historial de exposición baja
- Ruta seleccionada por el usuario
- Datos ambientales actuales
- Evaluación de riesgo mínimo

OUTPUT:
- Confirmación de ruta segura
- Información ambiental general
- Sin alertas críticas
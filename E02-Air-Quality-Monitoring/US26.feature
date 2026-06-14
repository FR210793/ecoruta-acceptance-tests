Feature: Pronóstico de calidad del aire por horas

Como usuario que realiza actividades al aire libre
Quiero visualizar condiciones climáticas relacionadas con la calidad del aire
Para entender cómo afectan mi entorno antes de salir

Scenario: Visualización de condiciones climáticas
Given el usuario accede a la información ambiental
And existen datos de clima disponibles
When el usuario consulta el estado actual
Then el sistema muestra humedad y probabilidad de lluvia
And relaciona estos datos con la calidad del aire

INPUT:
- Ubicación del usuario
- Datos climáticos disponibles
- Información de calidad del aire en tiempo real
- Solicitud de consulta actual

OUTPUT:
- Humedad actual mostrada
- Probabilidad de lluvia
- Relación clima–calidad del aire visualizada


Scenario: Impacto del clima en la calidad del aire
Given el usuario revisa los niveles de contaminación
And existen condiciones climáticas relevantes
When el usuario visualiza los datos
Then el sistema indica cómo influyen en la calidad del aire
And permite comprender su comportamiento

INPUT:
- Datos de contaminación actuales
- Variables climáticas (humedad, lluvia, etc.)
- Historial o contexto ambiental

OUTPUT:
- Explicación del impacto climático
- Relación entre clima y contaminación
- Visualización interpretativa de datos


Scenario: Falta de datos climáticos
Given no existen datos climáticos disponibles
And el usuario consulta la información
When el sistema procesa la solicitud
Then muestra un aviso de datos incompletos
And mantiene la visualización de calidad del aire

INPUT:
- Solicitud del usuario
- Base de datos climática incompleta o vacía
- Datos de calidad del aire disponibles

OUTPUT:
- Mensaje de datos incompletos
- Visualización parcial de calidad del aire
- Sistema mantiene información disponible
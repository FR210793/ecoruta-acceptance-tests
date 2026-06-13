Feature: Disponibilidad del sistema

Como usuario
Quiero que la aplicación esté disponible en todo momento
Para acceder a la información cuando la necesite sin interrupciones

Scenario: Funcionamiento normal
Given que el usuario accede a la aplicación
And el sistema está operativo
When navega por las secciones principales
Then la aplicación responde sin errores
And mantiene una disponibilidad mínima del 99%

# INPUT:
# - Usuario accediendo a la aplicación
# - Sistema operativo

# OUTPUT:
# - Aplicación funcionando sin errores
# - Disponibilidad mínima del 99%

Scenario: Alta demanda
Given que múltiples usuarios utilizan la aplicación
And el sistema presenta alta carga
When el usuario intenta acceder
Then la aplicación mantiene su disponibilidad
And permite consultar la información principal

# INPUT:
# - Múltiples usuarios activos
# - Alta carga del sistema

# OUTPUT:
# - Disponibilidad mantenida
# - Información principal accesible

Scenario: Caída del sistema
Given que ocurre una falla del sistema
And el usuario intenta ingresar
When no se puede acceder al servicio
Then el sistema muestra un mensaje de indisponibilidad
And restablece el servicio en menos de 10 minutos

# INPUT:
# - Falla del sistema
# - Intento de ingreso del usuario

# OUTPUT:
# - Mensaje de indisponibilidad
# - Servicio restablecido

Feature: Alertas antes de iniciar el trayecto

Como usuario
Quiero recibir alertas antes de iniciar mi recorrido
Para planificar una ruta más segura

Scenario: Planificación con riesgo
Given el usuario ingresa su destino
And existen zonas contaminadas en la ruta
When el sistema genera la ruta
Then el usuario recibe una advertencia previa
And se sugieren alternativas más seguras

INPUT:
- Ubicación de origen del usuario
- Destino ingresado
- Datos de contaminación en la ruta
- Opciones de rutas disponibles

OUTPUT:
- Advertencia previa antes del trayecto
- Rutas alternativas sugeridas
- Identificación de zonas contaminadas


Scenario: Ruta sin contaminación
Given el usuario ingresa su destino
And la ruta no presenta contaminación
When el sistema calcula la ruta
Then no se muestran alertas
And se presenta la ruta normal

INPUT:
- Ubicación del usuario
- Destino seleccionado
- Datos ambientales sin contaminación
- Sistema de rutas activas

OUTPUT:
- Ruta normal sin alertas
- Confirmación de seguridad
- Visualización estándar de navegación


Scenario: Múltiples rutas disponibles
Given existen varias rutas disponibles
And algunas presentan niveles de contaminación
When el usuario revisa opciones
Then se destacan las rutas más limpias
And se indican niveles de riesgo de cada una

INPUT:
- Múltiples rutas posibles
- Niveles de contaminación por ruta
- Destino del usuario
- Datos de tráfico/ambiente

OUTPUT:
- Rutas ordenadas por nivel de limpieza
- Indicadores de riesgo por ruta
- Recomendación de mejor opción
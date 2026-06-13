Feature: Modo Ahorro de Datos

Como usuario con limitaciones de datos móviles
Quiero visualizar información simplificada
Para reducir el consumo de datos

Scenario: Escenario 1: Uso con internet muy lento
Given que el celular tiene poca señal o internet de baja velocidad
And el usuario intenta ver los mapas de la ciudad
When la pantalla demora más de diez segundos en cargar
Then el sistema deja de cargar los dibujos pesados
And muestra solo los números y datos más importantes

# INPUT:
# - Celular con poca señal o internet de baja velocidad
# - Solicitud del usuario para visualizar los mapas de la ciudad
# - Tiempo de carga mayor a diez segundos

# OUTPUT:
# - Carga de elementos visuales pesados detenida
# - Información simplificada mostrada al usuario
# - Números y datos principales visibles en pantalla

Scenario: Escenario 2: Activar el ahorro por cuenta propia
Given que el usuario quiere cuidar sus datos móviles
And activa la opción de ahorro en la configuración
When navega por las diferentes partes de la aplicación
Then el sistema deja de bajar elementos visuales complejos
And usa solo letras y números para gastar lo mínimo de megas

# INPUT:
# - Intención del usuario de reducir el consumo de datos móviles
# - Opción de ahorro de datos activada en la configuración
# - Navegación del usuario dentro de la aplicación

# OUTPUT:
# - Elementos visuales complejos desactivados
# - Visualización basada en letras y números
# - Reducción del consumo de megas durante el uso de la aplicación

Scenario: Escenario 3: Actualizar datos sin gastar batería ni megas
Given que el ahorro de datos está prendido
And el usuario tiene la aplicación abierta en el bolsillo
When la aplicación intenta buscar información nueva del aire
Then el sistema baja solo archivos de texto muy livianos
And evita prender el mapa para que el saldo dure más

# INPUT:
# - Modo ahorro de datos activado
# - Aplicación abierta en segundo plano o en el bolsillo
# - Solicitud automática para actualizar información nueva del aire

# OUTPUT:
# - Archivos de texto livianos descargados por el sistema
# - Mapa no activado durante la actualización
# - Menor consumo de datos móviles y batería

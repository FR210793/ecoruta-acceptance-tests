Feature: Guardado de preferencias

Como usuario
Quiero que la aplicación guarde mis preferencias de uso
Para no tener que configurarlas cada vez que ingreso

Scenario: Guardar preferencias
Given que el usuario configura sus preferencias
And decide guardarlas
When confirma la acción
Then el sistema almacena la información
And la mantiene disponible para próximos ingresos

# INPUT:
# - Preferencias configuradas
# - Confirmación del usuario

# OUTPUT:
# - Preferencias almacenadas
# - Información disponible

Scenario: Recuperar preferencias
Given que el usuario vuelve a ingresar a la aplicación
And tiene preferencias guardadas
When se carga su perfil
Then el sistema aplica sus preferencias
And mantiene la configuración anterior

# INPUT:
# - Usuario con preferencias guardadas
# - Perfil cargado

# OUTPUT:
# - Preferencias aplicadas
# - Configuración mantenida

Scenario: Error al guardar
Given que ocurre un error en el sistema
And el usuario intenta guardar sus preferencias
When la acción no se completa
Then el sistema muestra un mensaje de error
And solicita intentar nuevamente

# INPUT:
# - Error del sistema
# - Intento de guardado

# OUTPUT:
# - Mensaje de error
# - Solicitud de reintento

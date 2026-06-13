Feature: Configuración de perfil de usuario

Como usuario
Quiero configurar mi perfil de salud y preferencias personales
Para que el sistema adapte rutas, alertas y recomendaciones según mis necesidades

Scenario: Configuración inicial del perfil
Given que el usuario accede a la sección de ajustes
And completa su perfil de salud
When guarda la información
Then el sistema registra sus datos
And adapta las rutas según sus preferencias

# INPUT:
# - Perfil de salud completado
# - Preferencias personales ingresadas

# OUTPUT:
# - Perfil guardado
# - Rutas adaptadas al usuario

Scenario: Modificación del perfil
Given que el usuario cambia su información personal
And actualiza sus preferencias
When guarda los cambios
Then el sistema actualiza el perfil
And ajusta las recomendaciones mostradas

# INPUT:
# - Datos modificados
# - Nuevas preferencias

# OUTPUT:
# - Perfil actualizado
# - Recomendaciones ajustadas

Scenario: Perfil no configurado
Given que el usuario no completa su perfil
And solicita una ruta
When el sistema procesa la solicitud
Then muestra rutas generales
And presenta recomendaciones estándar

# INPUT:
# - Usuario sin perfil configurado
# - Solicitud de ruta

# OUTPUT:
# - Rutas generales
# - Recomendaciones estándar

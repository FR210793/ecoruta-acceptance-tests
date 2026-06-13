Feature: Personalización de visualización

Como usuario
Quiero elegir cómo se muestra la información en la aplicación
Para adaptarla a mis preferencias y mejorar mi experiencia de uso

Scenario: Modo simple
Given que el usuario selecciona el modo simple
And navega en la aplicación
When se carga la interfaz
Then el sistema muestra información resumida
And reduce los elementos visuales

# INPUT:
# - Modo simple seleccionado
# - Usuario navegando en la app

# OUTPUT:
# - Información resumida
# - Menos elementos visuales

Scenario: Modo detallado
Given que el usuario selecciona el modo detallado
And visualiza la información ambiental
When se carga la interfaz
Then el sistema muestra información completa
And presenta más detalles en pantalla

# INPUT:
# - Modo detallado seleccionado
# - Información ambiental disponible

# OUTPUT:
# - Información completa
# - Más detalles visibles

Scenario: Guardar visualización
Given que el usuario cambia la visualización
And guarda la configuración
When vuelve a ingresar a la aplicación
Then el sistema mantiene la preferencia
And aplica la misma vista seleccionada

# INPUT:
# - Configuración de visualización guardada
# - Nuevo ingreso del usuario

# OUTPUT:
# - Preferencia mantenida
# - Vista aplicada automáticamente

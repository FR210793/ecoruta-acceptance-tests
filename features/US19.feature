Feature: Configuración de alertas de calidad de aire

  Como usuario sensible a la contaminación
  Quiero configurar alertas
  Para recibir una notificación cuando el aire sea no saludable en mi zona

  Scenario: Configuración de alerta crítica
    Given que el usuario activa las notificaciones de la aplicación en ajustes
    And define un nivel máximo de alerta de 100 AQI
    When los sensores detectan que el aire llega a ese punto
    Then el sistema envía una notificación de alerta inmediata
    And muestra un icono de advertencia en la barra de estado

  Scenario: Alerta de vuelta a la normalidad
    Given que el aire estuvo en nivel dañino previamente
    And el usuario tiene las alertas de mejora activadas
    When el AQI baja a un nivel saludable
    Then el sistema envía un aviso de aire limpio
    And sugiere que ya es seguro realizar actividades fuera

  Scenario: Silenciar alertas temporalmente
    Given que el usuario está en una reunión importante
    And pulsa la opción de "No molestar" en la aplicación
    When ocurre un cambio brusco en la calidad del aire
    Then el sistema guarda la alerta de forma silenciosa
    And la muestra solo cuando el usuario abre la aplicación de nuevo
    
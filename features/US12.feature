Feature: Alerta de zona de construcción en la planificación

  Como usuario con sensibilidad respiratoria
  Quiero recibir alertas sobre obras viales activas en mi trayecto
  Para evitar inhalar polvo y escombros

  Scenario: Advertencia de obra en ruta
    Given que hay una obra registrada en la ruta trazada
    And genera una alta densidad de partículas de polvo
    When el usuario selecciona esa vía
    Then el sistema muestra una alerta roja
    And advierte del riesgo respiratorio inminente

  Scenario: Desvío automático
    Given que el usuario recibe la alerta de construcción
    And desea proteger sus vías respiratorias
    When presiona el botón de desviar ruta
    Then el sistema traza un camino alternativo
    And lo aleja al menos 100 metros de la zona de polvo

Feature: Alerta de zona de construcción en la planificación

  Como usuario con sensibilidad respiratoria
  Quiero recibir alertas sobre obras viales activas en mi trayecto
  Para evitar inhalar polvo y escombros

  Scenario: Escenario 1: Advertencia de obra en ruta
    Given que hay una obra registrada en la ruta trazada
    And genera una alta densidad de partículas de polvo
    When el usuario selecciona esa vía
    Then el sistema muestra una alerta roja
    And advierte del riesgo respiratorio inminente

    # INPUT:
    # - Ruta trazada por el usuario
    # - Obra vial registrada en la ruta
    # - Alta densidad de partículas de polvo

    # OUTPUT:
    # - Alerta roja mostrada al usuario
    # - Advertencia de riesgo respiratorio inminente

  Scenario: Escenario 2: Desvío automático
    Given que el usuario recibe la alerta de construcción
    And desea proteger sus vías respiratorias
    When presiona el botón de desviar ruta
    Then el sistema traza un camino alternativo
    And lo aleja al menos 100 metros de la zona de polvo

    # INPUT:
    # - Alerta de construcción recibida
    # - Solicitud del usuario para desviar la ruta
    # - Zona de polvo detectada en el trayecto

    # OUTPUT:
    # - Camino alternativo trazado por el sistema
    # - Ruta alejada al menos 100 metros de la zona de polvo

Feature: Pronóstico de calidad del aire por horas

  Como usuario preventivo
  Quiero consultar el pronóstico de la calidad del aire por horas
  Para planificar el mejor momento para realizar actividades al aire libre

  Scenario: Visualización del pronóstico por horas
    Given que el usuario accede a la sección de calidad del aire
    And existen datos disponibles del pronóstico
    When selecciona la opción de pronóstico
    Then el sistema muestra los niveles de contaminación por horas
    And resalta los periodos con mejor calidad del aire

  Scenario: Identificación de horarios no recomendados
    Given que el usuario consulta el pronóstico
    And existen periodos con alta contaminación
    When revisa la información
    Then el sistema indica los horarios de riesgo
    And recomienda evitar actividades en esos periodos

  Scenario: Falta de conexión a internet
    Given que el usuario no cuenta con conexión a internet
    And accede a la sección de pronóstico
    When el sistema intenta cargar los datos
    Then muestra la última información disponible
    And advierte que los datos pueden no estar actualizados
    
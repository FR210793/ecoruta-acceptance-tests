Feature: Precisión de datos de monitoreo

  Como usuario que toma decisiones basadas en la calidad del aire
  Quiero que la información mostrada sea confiable y precisa
  Para poder tomar decisiones seguras sobre mis actividades

  Scenario: Visualización de datos confiables
    Given que el usuario consulta la calidad del aire
    And el sistema obtiene datos de diferentes fuentes
    When se muestran los resultados
    Then los datos deben ser consistentes
    And reflejar valores confiables para la toma de decisiones

  Scenario: Validación con fuentes oficiales
    Given que el sistema recopila datos de múltiples sensores
    And existen fuentes oficiales disponibles
    When procesa la información
    Then valida los datos con fuentes confiables
    And descarta valores inconsistentes

  Scenario: Manejo de datos no confiables
    Given que el sistema detecta datos erróneos o incompletos
    And no puede garantizar su precisión
    When el usuario consulta la información
    Then muestra un aviso de validación
    And limita la recomendación basada en esos datos
    
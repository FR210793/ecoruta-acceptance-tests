Feature: Filtrado de rutas por condiciones climáticas

  Como deportista urbano
  Quiero filtrar rutas evitando calles con alta humedad o neblina
  Para entrenar en condiciones ambientales óptimas

  Scenario: Filtrar rutas por condiciones climáticas
    Given que el usuario busca una ruta
    And existen variaciones climáticas en diferentes zonas
    When aplica el filtro de condiciones climáticas
    Then el sistema muestra rutas con condiciones favorables
    And oculta las rutas con condiciones adversas

  Scenario: Recomendación de rutas alternativas
    Given que una ruta presenta condiciones climáticas desfavorables
    And el usuario consulta opciones
    When el sistema analiza las condiciones
    Then sugiere rutas alternativas
    And prioriza aquellas con menor impacto climático

  Scenario: Falta de datos climáticos
    Given que el usuario aplica filtros climáticos
    And no hay información disponible en algunas zonas
    When el sistema procesa la solicitud
    Then muestra un aviso de datos incompletos
    And permite visualizar rutas sin filtrado climático
    
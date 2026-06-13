Feature: Comparativa de Tiempo vs Salud

  Como estudiante universitario
  Quiero comparar el tiempo estimado frente a la calidad del aire
  Para decidir si priorizo llegar rápido o cuidar mis pulmones

  Scenario: Comparación directa en pantalla
    Given que el usuario busca ir a la universidad
    And el sistema encuentra varias opciones de vías
    When se muestran los resultados finales
    Then aparece una tarjeta comparativa en pantalla
    And detalla la diferencia de tiempo versus la toxicidad

  Scenario: Elección de ruta rápida
    Given que el usuario está muy apurado por una clase
    And decide tomar la ruta más rápida disponible
    When selecciona la opción veloz
    Then el sistema inicia el viaje inmediatamente
    And recomienda usar mascarilla por la alta contaminación

  Scenario: Elección de ruta saludable
    Given que el usuario prioriza su bienestar físico
    And no tiene apuro para llegar a su destino
    When selecciona la ruta con menor nivel de contaminación
    Then el sistema confirma la selección de la ruta
    And guía al usuario por calles con menor exposición a contaminantes
    
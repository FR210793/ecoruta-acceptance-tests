Feature: Localizador de estaciones de monitoreo cercanas

  Como usuario que se mueve por la ciudad
  Quiero ver una lista de las estaciones de aire más próximas a mi ubicación
  Para consultar los datos de la estación que me está afectando ahora mismo

  Scenario: Listado automático por cercanía
    Given que el usuario entra a la sección de estaciones
    And tiene activado el permiso de ubicación en su celular
    When la lista termina de cargar todos los puntos de medición
    Then el sistema ordena las estaciones poniendo primero la más cercana
    And muestra a cuántos metros o kilómetros se encuentra cada una

  Scenario: Selección de estación desde la lista
    Given que el usuario ve una estación a solo dos cuadras de su casa
    And decide que esa será su referencia principal
    When toca el nombre de la estación en la lista desplegada
    Then el sistema abre una pantalla con todos los detalles del aire
    And centra el mapa en ese punto exacto para que el usuario se ubique

  Scenario: Búsqueda manual cuando el GPS está apagado
    Given que el usuario tiene el GPS apagado por ahorro de batería
    And entra a la lista de estaciones de monitoreo
    When el sistema detecta que no puede sacar la ubicación actual
    Then el sistema muestra la lista por orden alfabético
    And pide al usuario que escriba su distrito para filtrar los resultados
    
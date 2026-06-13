Feature: Modo Ahorro de Datos

  Como usuario con limitaciones de datos móviles
  Quiero visualizar información simplificada
  Para reducir el consumo de datos

  Scenario: Uso con internet muy lento
    Given que el celular tiene poca señal o internet de baja velocidad
    And el usuario intenta ver los mapas de la ciudad
    When la pantalla demora más de diez segundos en cargar
    Then el sistema deja de cargar los dibujos pesados
    And muestra solo los números y datos más importantes

  Scenario: Activar el ahorro por cuenta propia
    Given que el usuario quiere cuidar sus datos móviles
    And activa la opción de ahorro en la configuración
    When navega por las diferentes partes de la aplicación
    Then el sistema deja de bajar elementos visuales complejos
    And usa solo letras y números para gastar lo mínimo de megas

  Scenario: Actualizar datos sin gastar batería ni megas
    Given que el ahorro de datos está prendido
    And el usuario tiene la aplicación abierta en el bolsillo
    When la aplicación intenta buscar información nueva del aire
    Then el sistema baja solo archivos de texto muy livianos
    And evita prender el mapa para que el saldo dure más
    
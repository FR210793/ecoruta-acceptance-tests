# language: es
Funcionalidad: Alertas de contaminación para ciclistas
  Como ciclista urbano
  Quiero recibir alertas en tiempo real sobre zonas con alta contaminación
  Para poder cambiar mi ruta y proteger mi salud respiratoria

  Escenario 1: Redirección Proactiva
    Dado que estoy iniciando mi ruta programada en EcoRuta
    Y la app detecta un pico de PM2.5 en la zona que voy a recorrer
    Cuando me acerco a la zona contaminada
    Entonces recibo una alerta de contaminación
    Y se muestra una ruta alternativa recomendada

    # INPUT
    Entrada:
      | Campo | Valor |
      | Usuario | Miguel (ciclista) |
      | Ruta programada | Av. Morales Duárez → Av. Salaverry |
      | Zona contaminada detectada | PM2.5 > 100 (crítico) |
      | Distancia a zona | 500 metros |
      | Tiempo hasta zona | 4 minutos |

    # OUTPUT
    Salida esperada:
      | Notificación | ⚠️ "Zona crítica detectada" |
      | AQI en zona | 165 (Riesgo alto 😟) |
      | Opciones usuario | "Ver alternativas" / "Desviar ruta (+100m)" / "Ignorar alerta" |
      | Ruta alternativa | Sug: +2.3 km, tiempo +12 min, AQI 45 |
      | Color indicador | Rojo en mapa |

  Escenario 2: Persistencia en Ruta Crítica
    Dado que ignoro la alerta de contaminación
    Y continúo por la ruta habitual
    Cuando paso por la zona crítica
    Entonces EcoRuta registra mi decisión
    Y envía notificación de recordatorio de exposición

    # INPUT
    Entrada:
      | Campo | Valor |
      | Usuario | Miguel (ciclista persistente) |
      | Alerta previa | Rechazada |
      | Ruta seleccionada | Ruta original crítica |
      | PM2.5 en zona | 120 µg/m³ (muy alto) |
      | Tiempo en zona | 8 minutos |

    # OUTPUT
    Salida esperada:
      | Notificación | ℹ️ "Continuarás en ruta original" |
      | Advertencia | "AQI alto: 165. Exposición estimada: 8 min" |
      | Registro | Sistema guarda: "Usuario ignoró alerta a las 07:15" |
      | Notificación post-exposición | Recordatorio de exposición a contaminantes |
      | Recomendación | "Próxima vez considera ruta alternativa" |

  Escenario 3: Confirmación de Beneficio
    Dado que he seguido la ruta alternativa sugerida
    Y he llegado a mi destino
    Cuando finalizo mi recorrido
    Entonces la app confirma que minimicé exposición
    Y me da un resumen de la calidad del aire en mi trayecto

    # INPUT
    Entrada:
      | Campo | Valor |
      | Usuario | Miguel (ciclista consciente) |
      | Ruta seleccionada | Ruta alternativa recomendada |
      | Distancia recorrida | 15.2 km |
      | Tiempo | 42 minutos |
      | Parada final | Destino alcanzado |

    # OUTPUT
    Salida esperada:
      | Confirmación | ✅ "Ruta completada" |
      | Exposición minimizada | "Evitaste zona crítica (AQI -120)" |
      | Resumen exposición | Promedio AQI: 45 (saludable) |
      | Distancia ahorrada vs crítica | "Ruta +2.3 km pero -70% exposición" |
      | Recompensa | "+50 puntos eco" |

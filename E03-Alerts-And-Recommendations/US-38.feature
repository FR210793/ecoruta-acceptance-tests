# language: es
Funcionalidad: Recomendaciones de horarios para padres
  Como padre de familia
  Quiero recibir recomendaciones de horarios para salir con mis hijos
  Para evitar exposición a aire contaminado

  Escenario 1: Planificación Preventiva
    Dado que planeo salir con mis hijos
    Y la app tiene registro de niveles de contaminación por horario
    Cuando consulto el horario recomendado
    Entonces EcoRuta me sugiere rutas y franjas horarias seguras
    Y muestra alertas de posibles zonas a evitar

    # INPUT
    Entrada:
      | Campo | Valor |
      | Usuario | Carolina (madre) |
      | Hijos | 2 (sensibles a contaminación) |
      | Plan | Ir al parque |
      | Horarios evaluados | 08:00, 14:00, 17:00 |
      | Ubicación actual | San Isidro |
      | Destino | Parque El Olivar |

    # OUTPUT
    Salida esperada:
      | Horario recomendado | 08:00-09:30 |
      | Calidad del aire | AQI 22 (😊 Saludable) |
      | Rutas sugeridas | 3 opciones seguras |
      | Zona a evitar | Av. Arequipa (AQI 68) |
      | Mensaje | "Excelente horario para disfrutar en familia" |
      | Detalles | PM2.5 bajo, Polen bajo |

  Escenario 2: Validación de Trayecto Seguro
    Dado que sigo la recomendación de la app
    Y realizo el inicio de la ruta en horario seguro
    Cuando paso por las rutas indicadas
    Entonces EcoRuta indica que tengo condiciones favorables
    Y se registra que minimicé exposición a contaminación

    # INPUT
    Entrada:
      | Campo | Valor |
      | Usuario | Carolina (madre) |
      | Ruta seleccionada | Ruta recomendada por app |
      | Horario inicio | 08:00 (seguro) |
      | Acompañantes | 2 hijos |
      | Paradas | 3 parques menores |

    # OUTPUT
    Salida esperada:
      | Confirmación en tiempo real | "Trayecto seguro en curso" |
      | Indicadores | Verde (AQI saludable) |
      | Notificación | "Condiciones favorables para tus hijos" |
      | Registro | Minimicé exposición: ✅ |
      | Estado de ruta | Se registra éxito del reporte |

  Escenario 3: Respuesta ante Riesgo en Tiempo Real
    Dado que ignoro la recomendación
    Y salgo a la ruta habitual
    Cuando me acerco a zonas críticas
    Entonces EcoRuta genera alerta en tiempo real
    Y me muestra rutas alternativas para minimizar riesgo

    # INPUT
    Entrada:
      | Campo | Valor |
      | Usuario | Carolina |
      | Horario seleccionado | 14:00 (no recomendado) |
      | Zona actual | Cercana a Av. Abancay (AQI 78) |
      | Acompañantes | 2 hijos con sensibilidad |
      | Distancia a zona crítica | 800 metros |

    # OUTPUT
    Salida esperada:
      | Alerta | ⚠️ "Riesgo para menores detectado" |
      | Causa | Zona con AQI 78 cerca de tu ubicación |
      | Recomendación urgente | "Cambiar ruta ahora" |
      | Rutas alternativas | 2 opciones disponibles |
      | Botones | "Desviar" / "Continuar con cuidado" |
      | Mensaje adicional | "Tus hijos están en grupo de riesgo" |

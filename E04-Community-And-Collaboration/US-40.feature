# language: es
Funcionalidad: Visualización de reportes recientes
  Como ciclista urbano
  Quiero ver reportes recientes de otros usuarios
  Para evitar zonas con contaminación alta

  Escenario 1: Planificación Informada
    Dado que estoy planificando mi ruta
    Y la app tiene reportes recientes de la comunidad
    Cuando abro el mapa de rutas
    Entonces se muestran zonas críticas y limpias
    Y puedo elegir ruta más saludable

    # INPUT
    Entrada:
      | Campo | Valor |
      | Usuario | Miguel |
      | Hora | 06:30 (mañana) |
      | Reportes activos | 5 reportes recientes |
      | Rango temporal | Últimas 2 horas |
      | Zona mapa | Centro y Sur de Lima |

    # OUTPUT
    Salida esperada:
      | Zonas críticas visibles | 3 (marcadas en rojo) |
      | Zonas limpias visibles | 4 (marcadas en verde) |
      | Detalles por zona | Hora del reporte, tipo de contaminación |
      | Reportes mostrados | Congestión, humo, contaminación |
      | Opción seleccionar | Puedo hacer click para más detalles |
      | Recomendación | Sistema sugiere ruta por zona verde |

  Escenario 2: Alerta de Proximidad Activa
    Dado que un reporte reciente indica tráfico pesado
    Y estoy cerca de la zona
    Cuando consulto la app
    Entonces recibo alerta visual y sonora
    Y puedo cambiar mi ruta

    # INPUT
    Entrada:
      | Campo | Valor |
      | Usuario | Carolina |
      | Reporte detectado | Tráfico pesado - Av. Arequipa |
      | Hora del reporte | Hace 15 minutos |
      | Ubicación usuario | 500m de zona reportada |
      | Tipo alerta | Proximidad activa |

    # OUTPUT
    Salida esperada:
      | Alerta | 🚨 "Reporte activo cerca de ti" |
      | Contenido | "Tráfico pesado en Av. Arequipa (reportado hace 15 min)" |
      | Mapa | Zona destacada en naranja/rojo |
      | Opciones | "Ver ruta alternativa" / "Ignorar" / "Confirmar reporte" |
      | Duración | Alerta activa hasta reporte se cierre |

  Escenario 3: Optimización de Datos Visuales
    Dado que la app recibe múltiples reportes
    Y algunos son redundantes
    Cuando visualizo el mapa
    Entonces se consolidan los reportes para claridad
    Y puedo distinguir rutas confiables

    # INPUT
    Entrada:
      | Campo | Valor |
      | Reportes redundantes | 5 reportes de misma zona |
      | Zona | Av. Paseo de la República |
      | Fecha reportes | Últimas 60 minutos |
      | Consenso | 4/5 reportes confirman contaminación |

    # OUTPUT
    Salida esperada:
      | Consolidación | Se muestran como UN reporte fortalecido |
      | Indicador | "5 usuarios reportaron esta zona" |
      | Confiabilidad | Aumenta (consenso = +40% confianza) |
      | Visualización | Una sola marca (más clara) |
      | Detalles | "Confirmado por múltiples reportes" |
      | Recomendación | Sistema más confiado en sugerir alternativa |

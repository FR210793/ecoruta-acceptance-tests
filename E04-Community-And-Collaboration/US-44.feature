# language: es
Funcionalidad: Alertas de polen
  Como usuario con alergias
  Quiero recibir alertas de polen reportadas por la comunidad
  Para decidir si recorro o evito la ruta

  Escenario 1: Prevención Personalizada
    Dado que se registran niveles altos de polen
    Y mi perfil indica sensibilidad
    Cuando consulto mi ruta habitual
    Entonces recibo notificación de alerta
    Y se sugiere ruta alternativa

    # INPUT
    Entrada:
      | Campo | Valor |
      | Usuario | Carolina (madre asmática) |
      | Perfil de salud | Sensibilidad a polen |
      | Ubicación | San Isidro, Lima |
      | Ruta habitual | Parque Reducto |
      | Nivel de polen | 78 µg/m³ (Alto) |
      | Estado actual | Busca ruta segura |

    # OUTPUT
    Salida esperada:
      | Alerta | 🌸 "Alerta de polen personalizada" |
      | Contenido | "Nivel alto de polen en tu zona" |
      | Indicador | "Nivel de polen: ALTO (78 µg/m³)" |
      | Riesgo | Rojo 😟 - Riesgo alérgico |
      | Recomendación | "Tu ruta tiene alto riesgo. Considera alternativa" |
      | Alternativa | Parque El Olivar (nivel bajo: 12 µg/m³) |

  Escenario 2: Advertencia en Tiempo Real
    Dado que estoy cerca de un lugar con polen elevado
    Y otros usuarios reportan la condición
    Cuando abro el mapa en tiempo real
    Entonces la ruta se marca con alerta
    Y puedo decidir cambiar mi recorrido

    # INPUT
    Entrada:
      | Campo | Valor |
      | Usuario | Carolina en ruta |
      | Ubicación | 300m de Parque Reducto |
      | Reporte comunitario | "Floración de flores silvestres, mucho polen" |
      | Nivel de polen detectado | 95 µg/m³ (muy alto) |
      | Sensibilidad usuario | Alérgica confirmada |

    # OUTPUT
    Salida esperada:
      | Notificación urgente | ⚠️ 🌸 "Zona con alto polen muy cerca" |
      | Detalles | "Usuarios reportan: Floración de flores silvestres" |
      | Indicador mapa | Zona marcada en ROJO (muy alto riesgo) |
      | Nivel en zona | 95 µg/m³ (Crítico para alérgicos) |
      | Opciones | "Cambiar ruta" / "Continuar (usar máscara)" / "Posponer" |
      | Recomendación | "Evita esta zona si tienes alergia" |

  Escenario 3: Recuperación de Ruta
    Dado que la concentración de polen disminuye
    Y la app recibe confirmación de otros usuarios
    Cuando reviso la ruta nuevamente
    Entonces la alerta se elimina
    Y la ruta queda disponible como segura

    # INPUT
    Entrada:
      | Campo | Valor |
      | Ruta | Parque Reducto |
      | Alerta anterior | Nivel alto de polen (95 µg/m³) |
      | Tiempo transcurrido | 4 horas |
      | Nueva medición | Nivel de polen: 32 µg/m³ (bajo) |
      | Confirmación | 3 usuarios reportan: "Menos polen, mejor ahora" |

    # OUTPUT
    Salida esperada:
      | Alerta resuelta | ✅ "Condiciones mejoraron" |
      | Nuevo nivel | Nivel de polen: BAJO (32 µg/m³) 😊 |
      | Indicador mapa | Zona cambia de ROJO a VERDE |
      | Notificación | "Parque Reducto es seguro ahora para alérgicos" |
      | Recomendación | "Puedes usar tu ruta habitual sin problemas" |
      | Marca temporal | "Actualizado a las 16:30" |

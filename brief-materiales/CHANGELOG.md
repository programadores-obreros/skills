# Changelog — brief-materiales

Todas las versiones siguen [semver](https://semver.org/lang/es/)
(`MAYOR.MENOR.PARCHE`) y se documentan con fecha.

## [1.3.0] - 2026-09-26

Ajustes tras la segunda ronda de pruebas (ChatGPT y Gemini).

- **Regla de oro**: nada se produce hasta que la persona escriba
  "confirmo" (ChatGPT y Gemini generaron antes de confirmar).
- El plan termina con las preguntas del logo del PO y del "Suscribite"
  explícitas (Gemini las salteó) y controla la coherencia de los datos
  (día de la semana vs. fecha).
- Archivos: usar el nombre y la extensión exactos de los adjuntos.
- QR: mínimo 2 × 2 cm impreso / 220 px digital; si no entra, solo el link
  (en la prueba el QR de la mariposa medía ~7 mm y no se podía escanear).
- **Plantilla HTML pre-diseñada** (`plantilla/plantilla-materiales.html`):
  un único archivo autocontenido, ya diseñado (posteo 1080×1080, historia
  1080×1920, hoja A4 con 4 mariposas A6 a color y en blanco y negro puro),
  con un solo bloque `MATERIAL` para completar contenido sin tocar el
  diseño. Sección 7 la recomienda como vía principal cuando está adjunta,
  para cualquier IA (evita que se redibujen logos o se gasten usos de
  imágenes). Verificada: QR decodificado con `zbarimg` en las 8 mariposas
  (color y B/N), hoja A6 exportada a exactamente 1 página A4 por variante.
- **La plantilla es un sistema de diseño, no un solo molde**:
  `MATERIAL.variante` elige entre 4 composiciones distintas que comparten
  la misma grilla, tamaños mínimos, QR y reglas de logos —
  `tipografico` (título grande, fondo blanco), `bloque` (campo de color a
  pleno, título en blanco), `foto` (foto real arriba, protagonista; sin
  foto real muestra un recuadro "FOTO: subí tu foto", nunca una imagen
  inventada) y `consigna` (la frase es la pieza, sin bajada ni cuerpo).
  También configurable dentro de esas reglas: `orden_datos` (bloque de
  fecha/hora/lugar antes o después del cuerpo) y la escala del título
  según sea corto, medio o largo (automática). Sección 7 le pide a la IA
  elegir la variante según el contenido y variarla entre materiales, en
  vez de repetir siempre el mismo molde. Corrige además un bug real de
  contraste: un logo del mismo tono que el color de acento (frecuente,
  porque el acento suele salir del propio logo de la agrupación) quedaba
  casi invisible sobre la variante `bloque` sin una chapita blanca detrás.

## [1.2.0] - 2026-09-26

Ajustes tras la primera prueba real en ChatGPT (charla de Tribuna Docente).

- **Fecha de realización**: siempre completa (`dd/mm/aaaa`), sin texto
  delante ("Producido el" fuera), lejos de la fecha del evento.
- El **plan** ahora incluye obligatoriamente: fecha de realización, si se
  suma el logo del PO (cuando firma una agrupación) y si va "Suscribite a
  Prensa Obrera" con QR (en la prueba no se ofreció).
- **Logos online** con enlace directo en
  `programadoresobreros.com.ar/materiales/logos` y guía de uso; si la IA
  no puede descargarlos, le pide al compañero que los baje y los suba.
- **Fotocopia**: versión real en blanco y negro obligatoria y tamaños
  mínimos de letra en impresos (en la prueba las mariposas salieron en
  color y el pie quedó muy chico).
- **Historias**: aprovechar el alto útil.

## [1.1.1] - 2026-09-26

- Todos los logos también en `.png` (1600 px, fondo transparente) para
  subirlos a ChatGPT/Gemini, que suelen rechazar `.svg`.

## [1.1.0] - 2026-09-26

- Suma **Tribuna Ambiental** (Instagram @tribunaambiental, verificado: su
  bio la ubica en el Partido Obrero). Sin logo todavía en el paquete.
- Nuevo elemento **opcional recomendado**: llamado a suscribirse/bancar a
  Prensa Obrera (`prensaobrera.com/bancar-a-prensa-obrera`), con **QR
  listo** en el paquete de logos (nunca generarlo con IA).
- Checklist final actualizado.

## [1.0.0] - 2026-09-26

Primera versión publicada.

- Rol del diseñador senior y guion de preguntas para compañeros con poca
  experiencia en IA.
- Reglas obligatorias: fecha de producción, agrupación firmante, redes
  verificadas, logos solo desde archivos adjuntos.
- Reglas de diseño anti-"plástico de IA" (jerarquía, tipografía, paleta,
  fotografía real, legibilidad).
- Formatos: Instagram 1080×1080, historia 1080×1920, A4/A5/A6 (mariposas),
  especificaciones de impresión (300 dpi, 3 mm de sangrado) y de
  fotocopia en blanco y negro.
- Salida diferenciada según la IA: imagen + texto plano (ChatGPT/Gemini) o
  HTML autocontenido para exportar/imprimir (DeepSeek y similares).
- Tabla de agrupaciones y tabla de redes sociales verificadas, tomadas de
  `odd/content/po-espacios-redes.md` (investigación 2026-09-26).
- Checklist final antes de entregar cualquier material.

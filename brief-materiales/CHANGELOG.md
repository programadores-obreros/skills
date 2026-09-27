# Changelog — brief-materiales

Todas las versiones siguen [semver](https://semver.org/lang/es/)
(`MAYOR.MENOR.PARCHE`) y se documentan con fecha.

## [1.4.1] - 2026-09-26

- `LEEME-PRIMERO.txt` con tildes y una aclaración: es para la persona, no
  hace falta subirlo al chat.

## [1.4.0] - 2026-09-26

Reescritura de la plantilla tras una auditoría independiente de la versión
anterior (commits `7e96b8e`/`addd25d`, nunca publicados: la versión previa
seguía diciendo 1.3.0 en el paquete aunque ya no era la 1.3.0 revisada por
el compañero — esta versión la reemplaza). Arregla todos los hallazgos
críticos y altos de esa auditoría, más los medios y los bajos aplicables.

- **Reescritura completa de `plantilla-materiales.html`** como un único
  sistema de armado en JavaScript (una sola función por pieza) en vez de
  10 copias de la misma marca repetidas a mano: más fácil de mantener y
  elimina el riesgo de que una IA "arregle" una copia y deje otra rota.
- **Contenido en JSON estricto** (`<script type="application/json"
  id="material">`), con `try/catch`: si el JSON es inválido o falta un
  campo obligatorio (`titulo`, `firma`, `fecha_realizacion`), se muestra
  un aviso rojo grande en pantalla y **no se arma ninguna pieza
  imprimible** — nunca más un contenido de ejemplo mostrado por error
  (antes, un simple apóstrofe en el título rompía el `<script>` y la
  página se quedaba mostrando el ejemplo sin avisar).
- **Nunca se trunca texto**: se sacó el recorte por CSS (`line-clamp`) que
  cortaba títulos largos con "…"; ahora un ajuste automático de escala
  achica el título (y la bajada) hasta que entra, y si ni así entra
  muestra un aviso visible en pantalla ("acortalo") en vez de cortar el
  texto en silencio.
- **Las 4 variantes ahora se ven realmente distintas** (antes solo
  cambiaba el fondo): `tipografico` (título dominante), `bloque` (campo de
  color en diagonal), `foto` (foto real a pleno con franja de título) y
  `consigna` (frase centrada a pleno color). Se agregó una tipografía
  condensada real (Anton, Google Fonts/OFL, embebida como subconjunto
  base64) en vez de depender de `Arial Black`, que en Linux/Android cae a
  una fuente sin peso.
- **QR solo en impresos**: se sacó el QR de posteo e historia (nadie puede
  escanear un código en la misma pantalla donde lo mira); en digital ahora
  va como texto ("Suscribite a Prensa Obrera · prensaobrera.com" o "link
  en bio").
- **Nuevos formatos A5 (148×210 mm) y A4 (210×297 mm)**, con resguardo y
  marcas de corte, sumados al posteo, la historia y la hoja A6.
- **Blanco y negro real** en la hoja A6: ya no es un filtro de escala de
  grises sobre el diseño a color (que dejaba áreas sólidas pesadas de
  tóner); ahora es su propio tratamiento (bloque de datos con borde en vez
  de relleno, sin áreas grandes sólidas), con el texto como vector real en
  el PDF.
- **Logos**: `logo_firma` vacío ya no deja el logo anterior puesto; un
  archivo de logo roto o faltante muestra el mismo recuadro
  "LOGO: [agrupación]" en vez de un ícono de imagen rota. Se sacó la
  chapita blanca automática detrás de los logos en la variante `bloque`
  (tapaba el diseño): la regla ahora es una sola — variante `-blanco`
  sobre campos de color, variante normal sobre fondo claro — reflejada
  también en `BRIEF.md` §4.
- **Fecha de producción**: ahora siempre a ≥ 5 mm de cualquier borde o
  corte y separada del pie (antes, 2 mm en la mariposa); en la historia se
  movió fuera de las zonas seguras de 250 px (antes quedaba adentro de la
  franja inferior reservada).
- **Ejemplo de contenido restaurado** al texto real confirmado por el
  responsable del proyecto (bajada y cuerpo de la charla de Tribuna
  Docente, tal cual los había dado, sin reescribirlos) y el lugar de
  ejemplo con una dirección neutra marcada `(ejemplo)` en vez de una
  dirección real.
- **Guardado**: instrucciones más simples en la propia plantilla — un
  botón "Ver en tamaño real" para posteo/historia (abre la pieza sola,
  del tamaño exacto, para sacarle una captura) y un botón "Imprimir /
  Guardar PDF" por cada hoja de impresión, sin necesitar herramientas de
  desarrollador.
- `BRIEF.md` actualizado en línea con la plantilla: QR solo impreso,
  elegir y justificar la variante en el plan, la única regla de logos
  sobre fondo de color, nombres de archivo `.png`/`-blanco.png` en la
  tabla de agrupaciones, nota de CMYK para imprenta y checklist final
  ampliado. Corregido además un `<script>` de ejemplo mal citado dentro
  de un comentario de la plantilla que confundía a herramientas de
  búsqueda de texto.
- `scripts/build-pack.sh` ahora suma `SKILL.md`, `README.md`,
  `CHANGELOG.md` y la licencia de la fuente al paquete descargable.

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

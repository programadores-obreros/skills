# Cómo contribuir

Gracias por sumar o mejorar una skill. Esta guía explica el circuito para que
cualquier cambio quede revisado antes de llegar a los compañeros.

## Circuito: issue → PR → revisión

1. **Abrí un issue** en este repositorio (o pedile a alguien de Comunicación
   que lo abra por vos) contando:
   - Qué skill querés crear o modificar.
   - Para qué sirve / qué problema resuelve.
   - Si toca datos sensibles: qué agrupación, qué redes, qué logos.
2. **Esperá el visto bueno** de Coordinación o Comunicación antes de ponerte
   a escribir contenido nuevo, sobre todo si involucra logos, redes o el
   nombre de alguna agrupación. Esto evita rehacer trabajo.
3. **Hacé el cambio en una rama y abrí un Pull Request (PR)** contra `main`,
   explicando qué cambiaste y por qué.
4. **Revisión de Coordinación/Comunicación.** Nadie mergea su propio PR sin
   que otra persona del equipo (Coordinación o Comunicación) lo revise y
   apruebe. Se revisa especialmente:
   - Que no haya datos inventados.
   - Que los handles de redes estén en la fuente verificada (ver más abajo).
   - Que los logos usados sean los aprobados, sin modificar.
5. **Merge y versionado** (ver la sección siguiente).

## Regla de versionado: semver + fecha + CHANGELOG

Cada skill que se publica como archivo descargable (por ejemplo
`brief-materiales/BRIEF.md`) lleva, en el encabezado del archivo:

- Un número de versión [semver](https://semver.org/lang/es/): `MAYOR.MENOR.PARCHE`
  - **MAYOR**: cambia algo que rompe compatibilidad con cómo se venía usando
    (por ejemplo, se saca una sección que los compañeros ya conocían).
  - **MENOR**: se agrega contenido nuevo sin romper lo anterior (una sección,
    una regla, un formato nuevo).
  - **PARCHE**: correcciones chicas (errores de tipeo, un handle que cambió,
    una aclaración).
- La **fecha** de esa versión, en formato `AAAA-MM-DD`.

Cada skill versionada tiene su propio `CHANGELOG.md` (ver
`brief-materiales/CHANGELOG.md` como ejemplo) donde se anota, por versión:
qué cambió y por qué.

## Regla de oro: nada inventado

- **No se inventan datos.** Ni cifras, ni citas, ni fechas, ni nombres, ni
  handles de redes sociales.
- **Los handles de redes salen únicamente de una fuente verificada** por
  Coordinación/Comunicación (por ejemplo, el archivo de investigación de
  espacios y redes del PO). Si un handle no está confirmado ahí, no se usa:
  se pregunta antes de publicar cualquier skill o material que lo necesite.
- **Los logos son siempre los archivos aprobados**, tal cual están provistos
  en la skill correspondiente (por ejemplo `brief-materiales/logos/`). Nunca
  se redibujan, recrean ni "mejoran" con IA.
- Si falta un dato para completar una skill, se dejan marcadas las dudas
  explícitamente en el PR en vez de completarlas a criterio propio.

## Estructura de una skill nueva

Usá la plantilla en [`_plantilla/`](./_plantilla/) como punto de partida:
`_plantilla/SKILL.md` y `_plantilla/README.md`. Ahí están las secciones
mínimas que tiene que tener cualquier skill nueva.

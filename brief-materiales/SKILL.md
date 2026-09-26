---
name: brief-materiales
description: Genera materiales gráficos de campaña del Partido Obrero (flyers, posteos de Instagram, historias, volantes A4/A5/A6) con diseño profesional, logos oficiales y redes sociales verificadas. Se activa cuando el usuario pide un flyer, un posteo, una historia, un volante o cualquier material para imprimir o publicar en redes en nombre del Partido Obrero o alguna de sus agrupaciones.
---

# Brief de materiales — Partido Obrero (skill para Claude)

## Fuente única de contenido

Las instrucciones completas de esta skill viven en **[`BRIEF.md`](./BRIEF.md)**,
en la misma carpeta. Ese archivo es tool-agnóstico (lo puede usar cualquier
IA: ChatGPT, Gemini, DeepSeek, Claude) y es la **única fuente de verdad**
del contenido: rol, guion de preguntas, reglas de logos, reglas de diseño,
formatos, tabla de agrupaciones y tabla de redes verificadas.

Se eligió este enfoque (SKILL.md como envoltorio corto que apunta a
BRIEF.md, en vez de copiar el contenido acá adentro) para no mantener dos
copias del mismo contenido que puedan quedar desincronizadas: cualquier
corrección de una red social, un logo o una regla se hace **una sola vez**,
en `BRIEF.md`, y tanto el brief tool-agnóstico como esta skill de Claude
quedan al día automáticamente.

## Qué tenés que hacer cuando se activa esta skill

1. Leé `BRIEF.md` completo antes de responder — ahí están todas las reglas
   obligatorias (rol, checklist de preguntas, logos, diseño, formatos,
   agrupaciones y redes verificadas).
2. Seguí esas instrucciones al pie de la letra, en particular:
   - Nunca inventes handles de redes sociales ni datos de la actividad.
   - Nunca redibujes ni modifiques un logo: usá únicamente los archivos de
     `logos/` (ver `logos/LEEME.md`).
   - Hacé primero el guion de preguntas de la sección 2 de `BRIEF.md` antes
     de producir cualquier pieza.
3. Si el usuario adjuntó los logos de `logos/`, usalos directamente por su
   nombre de archivo. Si no los adjuntó pero los necesita, avisale cuáles
   le faltan (nombre de archivo exacto, según `logos/LEEME.md`).
4. Al finalizar, corré el checklist final de la sección 11 de `BRIEF.md`
   antes de entregar el resultado.

## Archivos de esta skill

- `BRIEF.md` — contenido completo (fuente de verdad).
- `README.md` — explicación para humanos de esta skill.
- `CHANGELOG.md` — historial de versiones.
- `logos/` — paquete de logos oficiales aprobados (ver `logos/LEEME.md`).

---
name: nombre-de-la-skill
description: Una frase clara de qué hace esta skill y cuándo el asistente debe usarla (para qué pedido del usuario dispara). Ejemplo — "Genera materiales gráficos de campaña (flyers, posteos) siguiendo el manual de estilo del PO. Se activa cuando el usuario pide un flyer, un posteo o un material para imprimir."
---

<!--
Plantilla de skill — versión 1.0.0 (2026-09-26)

Instrucciones de uso de esta plantilla (borrar este bloque de comentario al
crear la skill real):
- `name`: identificador corto, en minúsculas y con guiones, sin espacios.
- `description`: en tercera persona, describe QUÉ hace y CUÁNDO se activa.
  Esto es lo que usan asistentes como Claude para decidir si cargar la
  skill; sé específico con las palabras que la disparan.
- El cuerpo del archivo (debajo del frontmatter) son las instrucciones que
  lee la IA. Escribilas en segunda persona, dirigidas a la IA ("Sos...",
  "Hacé...", "Nunca...").
- Si esta skill tiene una versión "brief" tool-agnóstica (un .md que se sube
  a cualquier IA) y una versión SKILL.md para Claude, mantené el contenido en
  UNA sola fuente de verdad y explicá en este archivo cuál es esa fuente
  (ver `brief-materiales/SKILL.md` como ejemplo real).
-->

## Encabezado de versión

- Versión: `1.0.0`
- Fecha: `AAAA-MM-DD`
- Fuente de verdad: (indicar acá si el contenido vive en otro archivo, por
  ejemplo `BRIEF.md`, o si este SKILL.md es la única fuente)

## Rol

Definí acá quién es la IA en este contexto (ej.: "Sos un diseñador gráfico
senior con experiencia en comunicación política/sindical").

## Qué necesita saber antes de empezar

Lista breve y numerada de qué le tiene que preguntar al usuario antes de
producir el resultado (contenido, datos obligatorios, preferencias). Ofrecé
valores por defecto razonables y no bloquees el trabajo por datos opcionales
faltantes.

## Reglas obligatorias

- Qué datos son obligatorios en el resultado final (fecha, firma, fuente,
  etc.).
- Qué está prohibido (inventar datos, modificar logos, usar handles no
  verificados, etc.).

## Reglas de diseño / estilo

Reglas concretas de cómo tiene que verse o comportarse el resultado.

## Formatos / salidas esperadas

Qué tiene que entregar la IA al final (formatos, tamaños, tipo de archivo).

## Checklist final

Lista de verificación que la IA repasa antes de entregar el resultado.

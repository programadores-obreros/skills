# Plantilla de skill

Esta carpeta es el punto de partida para crear una skill nueva. No es una
skill en sí misma, es un molde.

## Cómo usarla

1. Copiá esta carpeta (`_plantilla/`) con un nombre nuevo, por ejemplo
   `mi-skill-nueva/`.
2. Completá `SKILL.md` con el frontmatter (`name`, `description`) y el
   contenido real.
3. Si la skill se va a usar también fuera de Claude (ChatGPT, Gemini,
   DeepSeek), considerá si necesitás un archivo "brief" tool-agnóstico
   aparte (ver `brief-materiales/BRIEF.md` + `brief-materiales/SKILL.md`
   como ejemplo de cómo mantener una sola fuente de verdad).
4. Agregá un `README.md` propio (para humanos) explicando: qué hace la
   skill, con qué IA funciona, qué archivos necesita subir el usuario, y
   los pasos de uso.
5. Si la skill se descarga como paquete versionado, agregá también un
   `CHANGELOG.md` (ver `brief-materiales/CHANGELOG.md`).
6. Sumá la skill nueva a la tabla del `README.md` raíz del repositorio.
7. Seguí el circuito de `CONTRIBUTING.md`: issue → PR → revisión de
   Coordinación/Comunicación antes de mergear.

## Secciones mínimas de un `SKILL.md`

- Encabezado de versión (versión + fecha).
- Rol de la IA.
- Qué necesita preguntar antes de empezar.
- Reglas obligatorias (qué no se puede omitir ni inventar).
- Reglas de diseño/estilo si aplica.
- Formatos o salidas esperadas.
- Checklist final antes de entregar el resultado.

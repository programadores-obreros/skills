# Logos oficiales — brief-materiales

Todos estos archivos fueron tomados directamente de los sitios oficiales de
cada organización (ver "Fuente" en la tabla) y aprobados por el
responsable del proyecto el 2026-09-26. El detalle completo de dónde salió
cada uno está en `assets/logos-candidatos/MANIFEST.md` del repositorio del
proyecto (no forma parte de este paquete).

**Regla de oro: no modificar.** Los archivos con sufijo `-blanco` son
variantes de color generadas cambiando únicamente el color de relleno
(`fill`), sin tocar la geometría del logo original, para que se vean bien
sobre fondo oscuro. Nadie debe redibujar, recortar (salvo la excepción de
Tribuna Docente explicada abajo) ni "mejorar" ninguno de estos archivos.

## Tabla de archivos

| Archivo | Organización | Variante | Uso | Fuente |
|---|---|---|---|---|
| `partido-obrero.svg` | Partido Obrero | Rojo `#E84426` (vectorial) | Fondo claro u oscuro | po.org.ar (cabecera del sitio) |
| `partido-obrero.png` | Partido Obrero | Rojo, raster (452×172) | Fondo claro u oscuro | po.org.ar (logo `schema.org` del sitio) |
| `partido-obrero-mascot.svg` | Partido Obrero | "Obrerito" (mascota), rojo `#E84426` — **decorativo, opcional, nunca reemplaza al logo** | Fondo claro u oscuro | po.org.ar (cabecera del sitio) |
| `prensa-obrera.svg` | Prensa Obrera | Rojo `#E64427` + bajada en negro | **Fondo claro** | prensaobrera.com (cabecera del sitio) |
| `prensa-obrera-blanco.svg` | Prensa Obrera | Rojo `#E64427` + bajada en blanco | **Fondo oscuro** | Igual que arriba; bajada recoloreada negro→blanco |
| `polo-obrero-blanco.svg` | Polo Obrero | Blanco (tal cual se usa en el sitio actual) | **Fondo oscuro** | poloobrero.org.ar (cabecera del sitio) |
| `polo-obrero.svg` | Polo Obrero | Recoloreado blanco→`#1a1a1a` | **Fondo claro** | Igual que arriba; solo cambia el color |
| `tribuna-docente.svg` | Tribuna Docente | Magenta `#BD3979`, contorno hueco | Fondo claro u oscuro (el hueco de las letras toma el color de fondo) | tribunadocente.com.ar — **recortado**: el archivo original (`tribuna-docente--logo-with-csc.svg`) traía también el isotipo de CSC al lado; se conservó únicamente el grupo de trazos de "Tribuna Docente" y se ajustó el `viewBox` al recuadro de ese grupo. La geometría de los trazos conservados no se tocó. |
| `ujs.svg` | UJS | Negro `#1a1a1a` | **Fondo claro** | po.org.ar (sección "Agrupaciones") |
| `ujs-blanco.svg` | UJS | Recoloreado negro→blanco | **Fondo oscuro** | Igual que arriba |
| `pdt.svg` | PDT (Plenario de Trabajadoras) | Negro `#1a1a1a` | **Fondo claro** | po.org.ar (sección "Agrupaciones") |
| `pdt-blanco.svg` | PDT | Recoloreado negro→blanco | **Fondo oscuro** | Igual que arriba |
| `csc.svg` | CSC (Coordinadora Sindical Clasista) | Negro `#1a1a1a` | **Fondo claro** | po.org.ar (sección "Agrupaciones") |
| `csc-blanco.svg` | CSC | Recoloreado negro→blanco | **Fondo oscuro** | Igual que arriba |
| `apel.svg` | APeL (Asociación de Profesionales en Lucha) | Negro `#1a1a1a` | **Fondo claro** | po.org.ar (sección "Agrupaciones") |
| `apel-blanco.svg` | APeL | Recoloreado negro→blanco | **Fondo oscuro** | Igual que arriba |
| `agrupacion-1969.svg` | Agrupación 1969 | Negro + degradé de grises | **Fondo claro** | po.org.ar (sección "Agrupaciones") |
| `agrupacion-1969-blanco.svg` | Agrupación 1969 | Cada tono invertido (negro→blanco, grises invertidos) | **Fondo oscuro** | Igual que arriba; solo se invirtieron los colores del degradé, ningún trazo se movió |
| `ojo-obrero.svg` | Ojo Obrero | Negro `#1a1a1a` | **Fondo claro** | po.org.ar (sección "Agrupaciones") |
| `ojo-obrero-blanco.svg` | Ojo Obrero | Recoloreado negro→blanco | **Fondo oscuro** | Igual que arriba |
| `revista-edm.svg` | Revista "En Defensa del Marxismo" | Naranja/rojo `#e23b1a` | Fondo claro u oscuro | revistaedm.com |
| `fit-u.svg` | FIT-U (Frente de Izquierda y de Trabajadores – Unidad) | Negro/rojo/blanco (tiene su propia placa de fondo) | Fondo claro u oscuro — **usar solo en material específicamente electoral del frente** | po.org.ar (barra superior del sitio) |
| `qr-suscribite-prensa-obrera.svg` / `.png` | QR a prensaobrera.com/bancar-a-prensa-obrera | Negro sobre blanco | Impresos (pie) — no achicar a menos de 2 cm | Generado con `qrencode` y verificado con `zbarimg` |

## Notas

- Los archivos `-blanco` están pensados para fondo oscuro; los que no
  llevan ese sufijo están pensados para fondo claro. Si usás el archivo
  equivocado para el fondo, el logo puede quedar invisible (por ejemplo,
  `ujs.svg` sobre un fondo negro no se ve — para eso está `ujs-blanco.svg`).
- `fit-u.svg`, `revista-edm.svg`, `partido-obrero.svg`/`.png` y
  `partido-obrero-mascot.svg` funcionan sobre fondo claro u oscuro sin
  necesitar una variante aparte (ya tienen su propia placa de fondo o un
  color con buen contraste en ambos casos).
- `tribuna-docente.svg` también funciona en ambos fondos: es un contorno
  hueco, así que el interior de las letras toma el color del fondo donde
  se lo use.
- Si necesitás un logo que no está en esta carpeta, **no lo generes con
  IA**: pedilo a Coordinación/Comunicación para que lo sumen como
  candidato aprobado (ver `CONTRIBUTING.md` del repositorio).

## Versiones PNG

Cada logo `.svg` tiene también su `.png` (1600 px de ancho, fondo
transparente), generado desde el SVG sin tocar el dibujo. **Para ChatGPT y
Gemini usá los `.png`**: muchas IA no aceptan archivos `.svg`. Para
imprenta o HTML, preferí el `.svg`. El PNG del Partido Obrero en alta
resolución es `partido-obrero-hd.png`.

---
name: Ayni Ahorro
description: Una identidad clara para volver a ahorrar en comunidad.
colors:
  navy: "#151B47"
  green: "#4DB889"
  yellow: "#FBC339"
  background: "#FAFAFA"
  text: "#181818"
  white: "#FFFFFF"
  muted: "#565C70"
  soft-green: "#EDF5F0"
  green-ink: "#375C4B"
  green-line: "#BDCEC4"
  line: "#DADCE3"
  line-strong: "#B8BDC9"
  navy-hover: "#2D366A"
  navy-light: "#C6CAE0"
  yellow-hover: "#FFD66E"
  disabled: "#DFE2EB"
  error: "#A32B28"
  error-bg: "#FBEFED"
  focus: "#287B58"
typography:
  display:
    fontFamily: "Manrope Variable, sans-serif"
    fontSize: "clamp(48px, 6.2vw, 86px)"
    fontWeight: 600
    lineHeight: 1.12
    letterSpacing: "-0.04em"
  headline:
    fontFamily: "Manrope Variable, sans-serif"
    fontSize: "clamp(30px, 3.2vw, 44px)"
    fontWeight: 600
    lineHeight: 1.12
    letterSpacing: "-0.04em"
  title:
    fontFamily: "Manrope Variable, sans-serif"
    fontSize: "19px"
    fontWeight: 650
    lineHeight: 1.4
    letterSpacing: "-0.025em"
  body:
    fontFamily: "Manrope Variable, sans-serif"
    fontSize: "16px"
    lineHeight: 1.6
  button:
    fontFamily: "Manrope Variable, sans-serif"
    fontSize: "14px"
    fontWeight: 700
    lineHeight: 1.4
rounded:
  control: "8px"
  field: "12px"
  circle: "50%"
spacing:
  compact: "8px"
  related: "16px"
  group: "24px"
  mobile-gutter: "20px"
  desktop-gutter: "48px"
components:
  button-primary:
    backgroundColor: "{colors.navy}"
    textColor: "{colors.white}"
    typography: "{typography.button}"
    rounded: "{rounded.control}"
    padding: "12px 20px"
  button-primary-hover:
    backgroundColor: "{colors.navy-hover}"
  button-yellow:
    backgroundColor: "{colors.yellow}"
    textColor: "{colors.navy}"
    typography: "{typography.button}"
    rounded: "{rounded.control}"
    padding: "12px 24px"
  email-field:
    backgroundColor: "{colors.white}"
    textColor: "{colors.navy}"
    rounded: "{rounded.field}"
    padding: "6px"
  round-person:
    backgroundColor: "{colors.background}"
    textColor: "{colors.navy}"
    rounded: "{rounded.circle}"
    size: "54px"
  round-person-selected:
    backgroundColor: "{colors.yellow}"
    textColor: "{colors.navy}"
---

# Design System: Ayni Ahorro

## Overview

**Creative North Star: "La ronda"**

Una identidad cercana y precisa, construida sobre la idea de participar en un esfuerzo compartido. La geometría circular expresa personas, turnos y continuidad; el espacio abierto evita ruido y transmite claridad.

El sistema utiliza la paleta y el logo aportados por el usuario. Una sola familia tipográfica relaciona el carácter redondeado del logo con titulares amplios y textos funcionales. La superficie clara responde a una lectura cotidiana en móvil y con luz ambiental.

**Key Characteristics:**
- Geometría circular con significado.
- Tipografía amplia, lenguaje directo y contenido breve.
- Superficies planas, filas abiertas y pocas fronteras.
- Color funcional y estados explícitos.

## Colors

La paleta vincula la confianza del azul, la comunidad del verde y el turno destacado del amarillo, sobre un fondo claro.

### Primary
- **Azul de confianza:** titulares, acciones principales y el campo de cierre. El azul claro derivado mantiene la lectura secundaria en la superficie azul.

### Secondary
- **Verde de comunidad:** conexiones del círculo y símbolos compartidos. La superficie verde suave organiza el tramo explicativo; el verde tinta sirve para sus textos.

### Tertiary
- **Amarillo de oportunidad:** posición seleccionada, selección de texto y acción sobre fondo azul.

### Neutral
- **Blanco claro:** fondo general y campos blancos.
- **Negro de lectura:** texto base. Los textos secundarios utilizan el tono atenuado azulado.
- **Líneas suaves:** separación de preguntas, campos y estados no seleccionados.

**The Color Has a Job Rule.** El verde une, el amarillo selecciona y el azul organiza la lectura y las acciones.

## Typography

**Display Font:** Manrope Variable, con fallback sans-serif.
**Body Font:** Manrope Variable, con fallback sans-serif.

Fuente variable autoalojada desde `@fontsource-variable/manrope`, sin petición a Google Fonts. Las formas geométricas y abiertas acompañan la marca sin introducir otra voz ornamental.

- **Display:** escala fluida indicada en los tokens; en pantallas de hasta 1100 px pasa a `clamp(46px, 6.3vw, 70px)` y hasta 700 px a `clamp(35px, 8.2vw, 56px)`, con interlineado 1.19.
- **Headline:** escala fluida; 32 px en móvil, con bloques cortos.
- **Title:** títulos de pasos; 17 px en móvil.
- **Body:** base de 16 px; entrada de 19 px en escritorio y 16 px en móvil. La descripción de entrada se limita a 43ch.
- **Button:** acción en minúsculas naturales, peso firme.
- **Supporting:** notas breves entre 11 y 14 px; no utilizarlas para explicación principal. Los turnos emplean números tabulares.

**The One Voice Rule.** La jerarquía cambia escala y peso dentro de una sola familia.

## Layout

Contenedor máximo de 1184 px, con 48 px de margen lateral. A partir del breakpoint de 1100 px los márgenes son de 32 px; hasta 700 px pasan a 20 px.

La entrada sitúa el titular a ancho de página y organiza el contenido inferior en dos columnas de proporción 1.12:1. Los pasos y preguntas usan dos columnas 1:1.25; en móvil se convierten en una única secuencia. El formulario se apila hasta 1100 px para preservar anchura de entrada y acción.

Separación amplia entre secciones: 86–100 px de padding vertical en escritorio y 54–60 px en móvil. Los grupos relacionados usan distancias menores de 8–24 px. El cierre y pie adaptan su alineación sin ocultar la acción.

## Elevation & Depth

Sistema plano sin sombras. La jerarquía se expresa con contraste de fondo, espacios y líneas de un píxel. La confirmación del formulario usa una superficie verde suave, sin crear una tarjeta flotante.

**The Flat Surface Rule.** Las superficies comunican estructura y estado sin elevación decorativa.

## Shapes

Controles suavemente curvados con radio de 8 px; el campo compuesto y la confirmación usan 12 px. Los círculos se reservan a personas, pasos y símbolos de continuidad. Las conexiones son geometría vectorial limpia y no intentan simular imágenes físicas.

## Components

### Buttons

Acciones sólidas y legibles. Primario azul con texto blanco; amarillo sobre azul. Altura mínima de 50 px, con icono vectorial de flecha de trazo uniforme. Los estados hover cambian el fondo; el foco utiliza contorno verde de 3 px y separación de 5 px. Deshabilitado: fondo claro derivado y cursor de indisponibilidad.

### Inputs / Fields

Campo de correo blanco, borde suave y acción integrada en escritorio, apilada en móvil. El foco del grupo refuerza el borde. Texto de marcador con contraste, cursor azul y tamaño de 16 px en móvil para evitar zoom de entrada. Error: texto y superficie específicos, junto con `aria-invalid`. Carga: acción deshabilitada y mensaje actualizado. Éxito: confirmación enfocada y formulario oculto.

### Navigation

Logo original optimizado para web y enlaces directos. En móvil se conserva el logo y la acción; los enlaces a secciones siguen siendo accesibles mediante el scroll natural. Enlace de salto al contenido y privacidad en el pie.

### Circular participants

Seis posiciones organizadas por trigonometría CSS y un círculo vectorial. Cada posición es un botón real con estado `aria-pressed`. La selección amarilla aumenta ligeramente la escala y actualiza un texto anunciado. No hay reproducción automática. Es un ejemplo didáctico etiquetado.

### Questions

Preguntas nativas con `details` y `summary`, divisores suaves y un icono de apertura vectorial. Funcionan con teclado y sin JavaScript.

### Browser surfaces and motion

Selección amarilla, cursor azul, scrollbars vinculadas a verde y fondo claro, subrayado desplazado y foco visible. Transiciones de estados entre 160 y 240 ms. El círculo utiliza `cubic-bezier(.16, 1, .3, 1)`. `prefers-reduced-motion` elimina transiciones y desplazamiento animado; no hay entradas que oculten contenido.

## Do's and Don'ts

### Do:
- **Do** conservar el logo original y la paleta confirmada.
- **Do** mantener el contenido breve y editable.
- **Do** usar círculos cuando expliquen personas, secuencia o continuidad.
- **Do** mostrar los estados reales de cada acción.

### Don't:
- **Don't** presentar el ejemplo como una aplicación operativa.
- **Don't** convertir texto secundario en la única explicación de una acción.
- **Don't** introducir otra voz tipográfica o sombras decorativas.
- **Don't** inventar métricas, testimonios ni funciones disponibles.

---
version: 1
slug: "src-pages-index-astro"
primary_target: "src/pages/index.astro"
related_targets: ["src/components/WaitlistForm.astro","src/components/Round.astro","src/styles/global.css"]
---

# Landing · /

Target: src/pages/index.astro
Mode: Persuade
Audience: personas que dejaron el pasanaco por desconfianza.
Action: dejar su correo en una lista de espera conectada directamente a Supabase.
Constraints: breve, editable, logo original, paleta del usuario; mecanismo de pagos sin definir.

## Direction contract

THESIS: La ronda. Recuperar la confianza en un ritual de ahorro compartido. El círculo de turnos pertenece a la página, no a un mockup de una aplicación inexistente. Evitar tarjetas de beneficios repetidas y cifras de tracción.

OWN-WORLD: blanco #FAFAFA, tipografía geométrica Manrope en azul #151B47, círculo verde #4DB889, una posición activa amarilla #FBC339. Controles sólidos, líneas de unión claras y ritmo espacioso. Lectura móvil diurna fuerza un fondo claro.

STORY: reconocer el pasanaco, comprender personas verificadas y turnos claros como propuesta, dejar el correo; tres pasos y preguntas resuelven las dudas sin detallar todo el plan empresarial.

FIRST VIEWPORT: logo horizontal y navegación breve, titular grande a ancho de página, línea verde dibujando una ronda junto al segundo renglón. Debajo, formulario real y explicación breve a la izquierda, seis posiciones de turno a la derecha sobre el mismo fondo. No panel ni teléfono. En móvil, el círculo conserva su significado y sigue al formulario.

FORM: candidato 7 de siete sistemas anclados: libreta de grupo, invitación vecinal, recibo de aporte, trama compartida, señalética de mercado, calendario y ronda de conversación. Seed 192b2e83; elección confirmada por el usuario. Camino code-first, sin herramienta de generación de imágenes disponible.

FINISH: unreviewed and undocumented is unfinished; this build ends with the finish review, the verdict, DESIGN.md, and every shipping raster carrying its provenance

## Signature interaction

Seis botones de turno seleccionan una posición del círculo y actualizan un único texto explicativo de la rotación. Es un ejemplo visual de cómo funciona un pasanaco, no una demostración de una app operativa. Sin reproducción automática, sin dependencia de animación para entenderlo, con reducción de movimiento.

## Challenger verdicts and raises

- Origami: declined, débil identificación y claridad. Keep: cada cambio de turno tiene un estado discreto y comprensible.
- Encuadernación expuesta: declined, menos directa que la ronda. Keep: mostrar cómo las partes se conectan, sin capas decorativas.
- Contador nixie: declined, apariencia instrumental ajena al usuario. Keep: los estados numéricos son legibles y precisos.
- Escena ASCII: declined, perjudica la lectura cercana. Keep: una sola gramática visual en todas las secciones.
- Terminal espacial: declined, terminología y textura ajenas. Keep: las acciones siempre confirman su resultado.
- Game Boy: declined, trivializa la confianza financiera. Keep: controles simples y estados seleccionados inequívocos.

## Open items

Credenciales Supabase del usuario; ejecutar migración SQL antes de habilitar el formulario. Fecha de lanzamiento y condiciones finales no definidas.

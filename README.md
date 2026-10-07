# Ayni Ahorro

Landing breve en **Astro**, con textos centralizados y lista de espera conectada directamente a **Supabase**. No requiere servidor propio. Todo el proyecto vive en `ayni-landing/`, separado de los screenshots originales.

## Desarrollo

Requiere Node.js 22.12 o superior.

```bash
npm install
npm run dev
```

Abre `http://localhost:4321`.

## Conectar la lista de espera

1. En Supabase, abre **SQL Editor** y ejecuta `supabase/migrations/001_waitlist.sql`.
2. Crea un archivo `.env` en la raíz usando `.env.example` como referencia.
3. En **Settings → API**, copia la URL y la **publishable key** de tu proyecto:

```dotenv
PUBLIC_SUPABASE_URL=https://tu-proyecto.supabase.co
PUBLIC_SUPABASE_PUBLISHABLE_KEY=sb_publishable_...
```

También admite la clave pública `anon` heredada en la misma variable. Nunca pongas una clave `service_role` o `secret` en variables `PUBLIC_*`.

4. Reinicia `npm run dev`. Al enviar el formulario, el correo aparecerá en **Table Editor → waitlist**.

El formulario utiliza la función `join_waitlist`. Los correos se normalizan y no se duplican; inscribirse por segunda vez muestra la misma confirmación. Los visitantes no pueden consultar la lista. Sin configuración válida, se informa que la lista todavía no está disponible y no se simula una inscripción.

La conexión almacena correos; no envía emails automáticamente. Puedes exportar la lista desde Supabase para comunicar el lanzamiento.

## Cambiar el contenido

| Qué cambiar | Archivo |
| --- | --- |
| Textos, preguntas, nombres del ejemplo y SEO | `src/content/landing.ts` |
| Colores, tipografía y tokens | `src/styles/tokens.css` |
| Composición y responsive | `src/styles/global.css` |
| Página principal | `src/pages/index.astro` |
| Información de privacidad | `src/pages/privacidad.astro` |
| Integración de Supabase | `src/components/WaitlistForm.astro` |
| Logo web optimizado | `public/logo-ayni-ahorro.webp` |
| Logo original proporcionado | `public/Logo Ayni Ahorro.jpeg` |

El ejemplo de la ronda es interactivo y está identificado como ejemplo. El contenido describe una propuesta en desarrollo, no un servicio ya disponible. No incluye datos ficticios de tracción ni promesas de pagos automáticos.

## Compilar y desplegar

```bash
npm run build
npm run preview
```

Publica `dist/` en un alojamiento estático como Netlify, Vercel o Cloudflare Pages. Comando de build: `npm run build`. Directorio de salida: `dist`. Configura las dos variables públicas antes del build: Astro las incorpora durante la compilación, por lo que cualquier cambio requiere un nuevo despliegue.

Cuando tengas dominio, añade `site` en `astro.config.mjs` y configura una imagen social si quieres una vista previa con imagen al compartir.

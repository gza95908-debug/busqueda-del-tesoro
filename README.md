# 14 B - Pistas para una búsqueda del tesoro

Aplicación para administrar pistas de dos recorridos (azul y verde), guardar coordenadas en Supabase y mostrar el registro seleccionado en Google Maps.

## Archivos
- index.html: estructura.
- style.css: diseño adaptable.
- app.js: crear, listar, editar, eliminar, filtrar, validar y mapa.
- config.js: configuración de Supabase y Google Maps.
- supabase.sql: tabla, políticas y tres ejemplos.

## Supabase
1. Abrí tu proyecto.
2. SQL Editor > New query.
3. Copiá y ejecutá todo `supabase.sql`.
4. Project Settings > API: copiá Project URL y anon/public key.

## Google Maps
1. En Google Cloud Console creá/elegí proyecto.
2. Habilitá Maps JavaScript API y configurá facturación si se solicita.
3. Creá una API key y pegala en config.js.

## Configuración
En config.js reemplazá PEGAR_PROJECT_URL, PEGAR_ANON_PUBLIC_KEY y PEGAR_GOOGLE_MAPS_API_KEY. No uses service_role ni secret key en el navegador.

## GitHub y Render
1. Creá repositorio público `pistas-busqueda-tesoro`.
2. Subí todos los archivos a la raíz.
3. Render > New > Static Site > conectá GitHub.
4. Branch main; Root Directory vacío; Build Command vacío; Publish Directory `.`.
5. Publicá y abrí la URL.

## Pruebas del examen
1. Filtro Azul: deben verse órdenes 1 y 2.
2. Filtro Verde: debe verse orden 1.
3. Seleccioná dos registros con Ver mapa y compará marcadores.
4. Editá la pista Azul 2 y colocá las coordenadas GPS reales de la pérgola del parque. Guardá, recargá, filtrá Azul y elegí orden 2: el marcador debe quedar en la pérgola.
5. Intentá guardar latitud 95: se rechaza porque el rango válido es -90 a 90.
6. Probá latitud vacía, texto y longitud 200: deben rechazarse.

Las coordenadas incluidas son ejemplos de prueba, no ubicaciones verificadas del parque. Para la demostración de la pérgola, usá sus coordenadas GPS reales.

## Consulta a Gemini en Google AI Studio
Consulta sugerida: “Revisá esta aplicación web de pistas para una búsqueda del tesoro. Comprobá si permite crear, listar, editar y eliminar registros en Supabase; filtrar por azul y verde; mostrar el punto seleccionado en Google Maps; y rechazar coordenadas vacías, no numéricas o fuera de rango. Indicá errores concretos y cómo corregirlos.”

Completá con la respuesta real:
- Sugerencia recibida:
- Qué apliqué o corregí:
- Prueba realizada y resultado:

No afirmes que consultaste Gemini ni que una prueba pasó si no la realizaste.
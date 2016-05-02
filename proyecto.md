---
title: Proyecto
layout: page
order: 2
Proyecto: true
categories: [Proyecto]
---

## Contexto general y la edición

En la marco de la asignatura [Minimal Editions: From the Manuscript to the Web](https://github.com/susannalles/MinimalEditions/), impartida en el [Department of Latin American and Iberian Cultures](http://laic.columbia.edu/) (Columbia University in the City of New York) se ha decidido llevar a cabo un experimento docente en el cual se introduce a los estudiantes a los principios básicos y generales de la crítica textual y a las tecnologías mínimas necesarias para llevar a cabo de una manera autónoma una edición digital. 

El texto elegido ha sido el *Lazarillo de Tormes*, no sólo por sus breves dimensiones, sino por plantear una serie de cuestiones ecdóticas y de cultura literaria que lo hacen especialmente atractivo para los estudiantes. 

En lo que se refiere a la edición del texto, al inicio del curso se planteó a los estudiantes la situación relativa a la tradición textual del texto: cuatro ediciones emitidas a lo largo del año 1554, reimpresiones posteriores, censura, y ediciones críticas modernas. Se acordó conjuntamente que, teniendo poco tiempo a disposición (del 20 de enero al 2 de mayo del 2016), era conveniente centrarse en la versión supuestamente más antigua y ofrecer una edición actualizada pero que conservara las principales características textuales, como la ausencia de ciertos episodios intercalados posteriormente. Así, pues, se decidió trabajar con la impresión publicada por los hermanos Mateo y Francisco del Canto en Medina del Campo en el año 1554. 

Además,los estudiantes han adoptado libremente los diferentes roles de responsabilidad en la cadena editorial y han participado activamente en todo momento, siempre bajo la guía de los profesores. El trabajo en equipo ha resultado esencial y la repartición del trabajo se ha establecido en función de los intereses de cada uno de los miembros. 

Los principios que han regido el curso han sido principios informáticos mínimos (Véase [Minimal Computing](http://go-dh.github.io/mincomp/). Hemos querido en todo momento obtener un resultado simple y transparente que incluyera lenguajes informáticos básicos y esenciales, como son el uso del terminal o formatos basados en texto plano o XML. A medida que se ha ido trabajando el texto, los principios "mínimos" que nos habíamos propuesto se han visto en algunos casos traicionados por el entusiasmo que ha llevado al equipo a incluir otras secciones al interno de la edición:

* La edición del texto se ha divido así en tres diferentes versiones: 

	1. Una edición de simple lectura, apta para todos los dispositivos móviles y tablets, sin ningún tipo de anotación o hipervínculo. 
	2. Una edición anotada donde se ha explotado el marcado XML-TEI llevado a cabo. Esta versión ofrece pequeñas ventanas emergentes que ofrecen una breve descripción del personaje, la misma, en realidad, que se ofrece en el apartado de "Índices de personajes".
	3. Las imágenes ofrecidas por la [Biblioteca de Extremadura bajo licencia Creative Commons](http://roda.gobex.es/roda/avisoLegal.jsp;jsessionid=5FF976699E942910DB78499E6ED34C08?pid=libro%3A5274b75d-ca5c-472c-8cb5-817e5f8cac99), para que en caso de necesidad se pudiera contrastar con el texto editado. 
* Se han añadido además otra serie de secciones: 
	1. Una contextualización general de la obra, la edición de Medina del Campo, y su fortuna posterior. 
	2. Un mapa que refleja los lugares mencionados por el protagonista y el itinerario por el que transita. 
	3. Un índice de personajes con una breve descripción. 
	4. Los criterios de edición que han regido la edición digital.
	5. Un apartado con la bibliografía utilizada en este curso relativa al *Lazarillo* y otros recursos web.
	6. Una opción de búsqueda, no sólo en el texto de la edición, sino en todo el sitio web. 
	7. Las bases de la filosofía del trabajo y la licencia de los contenidos. 

## Las tecnologías utilizadas 

Otro de los objetivos principales del curso ha sido introducir a los estudiantes a aquellas tecnologías necesarias para llevar a cabo un proyecto editorial digital de manera autónoma en el futuro.

* [Extensible Markup Languages](https://www.w3.org/XML/) y [Text Encoding Initiative](http://www.tei-c.org/index.xml): el texto del *Lazarillo de Tormes* se ha marcado con el lenguaje estándar XML, siguiendo las Guías directrices de TEI, una de las propuestas más sólidas y difundidas para la codificación de textos en Humanidades y Ciencias Sociales. Se ha marcado de una manera muy sencilla, evidenciando sólo la estructura textual (tratados, párrafos), los diálogos y pensamientos de los personajes, los nombres de personajes y de lugar. El marcado final puede consultarse en nuestro [repositorio GitHub](https://github.com/minilazarillo/minilazarillo.github.io/blob/master/xml/lazarillo-master.xml).

* [Extensible Stylesheet Transformations Language](https://www.w3.org/TR/xslt): XSLT es un lenguaje ampliamente difundido al interno de las Humanidades Digitales empleado para transformar documentos XML a otros formatos. En nuestro caso, hemos utilizado tres diferentes hojas de estilo:
 
	1. Transformación de XML-TEI a Markdown para la [versión de simple lectura](xml/tei-to-md-reading.xsl).
	2. Transformación de XML-TEI a Markdown para la [versión anotada](xml/tei-to-md-annotated.xsl)
	3. Transformación de XML-TEI a Markdown para la creación del [índice de los personajes](xml/tei-to-md-persNames.xsl)

* [HyperText Markup Language](https://www.w3.org/html/) y [Cascading Style Sheets](https://www.w3.org/Style/CSS/Overview.en.html): HTML y CSS son las dos tecnologías indispensables para poder construir y entender cualquier sitio web, tanto en la estructura como en el diseño. 

* [Jekyll](http://jekyllrb.com/): Jekyll es un generador de sitios web estáticos. Consideramos que este procedimiento era el más sencillo y que permitía, por un lado, crear la infraestructura web necesaria, por el otro, mantener el código XML separado. Como modelo hemos tomado la plantilla propuesta por [Ed](https://github.com/elotroalex/ed), pues ofrecía los elementos básicos y necesarios para toda edición. A partir de ahí, se ha modificado el código HTML y CSS de Ed para nuestra edición. 

* Para la creación de las anotaciones en la versión anotada se ha utilizado el código CSS ofrecido por [balloon.css](http://kazzkiq.github.io/balloon.css/). 

* El mapa se ha realizado con la herramienta [Odyssey.js](https://cartodb.github.io/odyssey.js/), basado en Javascript y Markdown.

Además, y como parte esencial del trabajo de grupo, hemos utilizado:

* Git y GitHub han permitido un trabajo en equipo, como una especie de libro de a bordo, donde cada miembro ha ido contribuyendo a cada una de las secciones.  
* GitHub Pages como medio de publicación libre para hospedar nuestra edición. 
* Para los materiales que no debían incluirse como ficheros en el proyecto final (por ejemplo, los borradores del índice de personajes o las tareas a realizar), los estudiantes han preferido utilizar Google Docs y Google Drive.


## Experiencia

> A lo largo de este curso he disfrutado y he aprendido mucho sobre informática en general, crítica textual, y cómo trabajar en equipo para llevar a cabo un proyecto digital. Este curso me ha enseñado qué son las humanidades digitales y tecnologías como git, Jekyll, XML o XSLT. ¡Espero aplicar lo que he aprendido para mis propios proyectos futuros! <span style="font-style: normal">**—Armando León, desarollador front-end**</span>

> ¡Antes de este semestre, no sabía qué era el terminal ni cómo podía acceder a él! He aprendido que mi computadora sirve para otras muchas cosas y cómo trabajar con XML, HTML, CSS, etc. Además, el proceso de crear una edición digital ha sido muy interesante, así como descubrir qué una edición puede ser facsimilar, diplomática, crítica, etc. El curso en general me ha enseñado qué son las humanidades digitales. <span style="font-style: normal">**—Falls Kennedy, desarolladora back-end**</span>

> Este curso me ha abierto los ojos a un mundo que antes no conocía. Además de aprender toda la tecnología necesaria para crear nuestra edición, aprendí mucho sobre el *Lazarillo* y la crítica textual en general. Esta experiencia me ha inspirado para seguir trabajando con proyectos similares en el futuro. <span style="font-style: normal">**—Fiona Kibblewhite, directora del proyecto.**</span>

> En este curso, he aprendido varias cosas que me servirán en mi vida para siempre. El uso de GitHub, por ejemplo, ha sido muy interesante y útil (había escuchado hablar de esta plataforma varias veces pero no sabía cómo funcionaba, y ahora creo que es una buena opción para hacer una colaboración en línea). Además, gracias a la creación del mapa con Odyssey.js, aprendí mucho no sólo sobre cómo hacerlo sino también la geografía que vista Lázaro de Tormes. <span style="font-style: normal">**—Taewan Shim, director de calidad y cartógrafo.**</span>

## Agradecimientos

Todo el equipo quiere agradecer al Departamento de Latin American and Iberian Cultures por haber albergado el lanzamiento de nuestra edición. También, queremos dar las gracias a  Terry Catapano por su ayuda con las transformaciones XSLT y las clases que nos dedicó. 

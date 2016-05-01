---
title: Proyecto
layout: page
order: 2
Proyecto: true
categories: [Proyecto]
---

## Descripción
Esta edición digital del *Lazarillo de Tormes* se basa en la edición de Medina del Campo de 1554, realizado como parte de un curso de las humanidades digitales en la Universidad de Columbia en Nueva York.

## El marco de la [asignatura](https://github.com/susannalles/MinimalEditions/blob/master/index.md)
El curso "Minimal Editions" se diseñó para introducir a los estudiantes el "full-stack," o todos los pasos desde la edición de un texto hasta la edición digital finalizada. Por lo tanto, el curso tuvo dos objetivos principales: la crítica textual, su historia y la edición de un texto; y las tecnologías necesarias para realizar una edición digital en el web.

## Objetivos del curso

### Crítica textual
Este curso se llevó a cabo  como una clase que enseña no solamente la informática, pero también la crítica textual. Como parte del curso, los estudiantes aprendieron la historia de la crítica textual, el proceso de editar, y como la diciplina se ha adaptado a la era digital. Aunque aquí se presenta solo un tipo de edición, los estudiantes aprendieron los varios enfoques que existen bajo la disciplina de la crítica textual.  

### Tecnologías implicadas
Para llevar a cabo esta edición, usamos varias tecnologías para transformar nuestro texto a una edición del web.

Para el texto del *Lazarillo* y también el índice de personajes, creamos un fichero XML conforme con el estandard del [Text Encoding Initiative (TEI)](http://www.tei-c.org/index.xml). El fichero XML luego se convirtió a varios ficheros Markdown con unas transformaciones XSL -- una para la edición de lecutra (xml/tei-to-md-reading.xsl), otra para la edición anotada (xml/tei-to-md-annotated.xsl), y otra para el índice de personajes (xml/tei-to-md-persNames.xsl).

El interfaz web se hizo con [Jekyll](http://jekyllrb.com/) y [Ed](https://github.com/elotroalex/ed). Hemos modificado el HTML y CSS de Ed para nuestra edición. Las anotaciones en la versión anotada usan [balloon.css](http://kazzkiq.github.io/balloon.css/). El mapa se hizo con [Odyssey.js](https://cartodb.github.io/odyssey.js/).

La colaboración se hizo por git y GitHub. El hosting del sitio web usa GitHub Pages.

## Trabajo en equipo
Para trabajar en equipo en una edición digital, en la cual todos trabajabamos típicamente en los mismos ficheros, era necesario usar git y GitHub. Como parte del curso, los estudiantes aprendieron sobre git y GitHub, como usarlo, y como resolver los problemas asociados.

Para los materiales que no necesariamente se desarollaron como ficheros en nuestro proyecto (por ejemplo, los borradores del índice de personajes), los estudiantes usaron Google Docs y Google Drive.

## Resultados
Ya a los finales del curso, los estudiantes han usado y practicado con XML, XSL, Markdown, Jekyll, HTML/CSS, git y GitHub. Aunque se dividó el trabajo de esta edición en varios partes entre los estudiantes, cada estudiante aprendió sobre la crítica textual, como editar un texto, y como crear una edición digital (el "full-stack"). 


## Experiencia
> Me dió mucho gusto poder aprender más sobre la informática y la crítica textual, y trabajar en equipo para producir este proyecto. Este curso me enseñó mucho sobre las humanidades digitales y también sobre Git, Jekyll y XML. ¡Ahora me da animos usar lo que he aprendido para mis propios proyectos! <span style="font-style: normal">**—Armando León, desarollador front-end**</span>

> Antes de este semestre, no sabía qué fue mi terminal y cómo podía tener acceso al terminal. Por eso, he aprendido mucho sobre las capacidades de mi computadora con XML, HTML, CSS, etc. También, el proceso de crear una edición digital fue muy interesante debido a que hablamos sobre los procesos diferentes de crear una edición (una edición facsmilar, una edición diplomática, etc) y presentarla. Así, el curso me enseñó mucho sobre las humanidades digitales. <span style="font-style: normal">**—Falls Kennedy, desarolladora back-end**</span>

> Este curso me ha abierto los ojos a un mundo que antes no conocía. Además de aprender toda la tecnología necesaria para crear nuestra edición, aprendí mucho sobre el Lazarillo y la crítica textual en general. Después de esta experiencia, me quedo inspirada a hacer más proyectos similares en el futuro. <span style="font-style: normal">**—Fiona Kibblewhite, directora del proyecto.**</span>

> En este curso, aprendí varias cosas que servirían en mi vida para siempre. El uso de GitHub por ejemplo fue muy interesante y útil porque he escuchado sobre esta plataforma varias veces y creo que es el sitio web para hacer una colaboración. Y también este por este curso y haciendo el mapa en Odyssey.js, aprendí mucho sobre los diferentes lugares que viajó Lazarillo. <span style="font-style: normal">**—Taewan Shim, director de calidad y cartógrafo.**</span>

## Menciones
Le queremos dar las gracias a Terry Catapano por su ayuda con las tranformaciones XSL. También le queremos dar las gracias al Departamento de Estudios Latinoamericanos e Ibéricos en la Universidad de Columbia por aprobar este proyecto.

---
title: Project
layout: default
---

# About the Project

## Context and the Edition

In the context of the course [Minimal Editions: From the Manuscript to the Web](https://github.com/susannalles/MinimalEditions/), taught in the [Department of Latin American and Iberian Cultures](http://laic.columbia.edu/) (Columbia University in the City of New York), we have decided to undertake a pedagogical experiment in which we introduce students to the basic and general principles of textual criticism and the essential technologies so that the students would be able to publish their own digital scholarly editions.

We selected *Lazarillo de Tormes* not only for its short length, but also to allow us to introduce a number of questions and issues surrounding textual criticism and Spanish literary culture, making it especially suited for an introductory overview of the topic.

At the beginning of the course, students explored the textual tradition of *Lazarillo*: the four editions printed in 1554, following reprints, censure, and modern critical editions. The students decided together that, given the brief time available (from January 20 to May 2, 2016), it would be better to focus on the supposedly-oldest version and offer an edition that preserves the principal textual characteristics, such as the absence of certain scenes and events that were later interpolated in the text. Given that, we have decided to work with the version published by the brothers Mateo y Francisco del Canto in Media del Campo in 1554.

During the course of the project, the students have taken on different roles in the editorial process and  participated actively, always under the assistance of the professors. The group work was essential, and the students divided up the work each according to their interests.

The guiding principle of the course were the principles of [minimal computing](http://go-dh.github.io/mincomp/). We aimed to achieve a simple and transparent result that includes only the most basic and essential languages and technologies, such as the use of the command line, plain-text formats or XML. As we were working with the text, however, the principles of minimal computing were sometimes surpassed by our enthusiasm, leading us to include other sections within the edition:

* The text has three different versions:

  1. A reading edition, usable on all devices, from mobile phones to tablets to the desktop, without any annotations or hyperlinks.
  2. An annotated edition where we have used our XML-TEI more fully. This version offers small descriptions of each character in bubbles, the same description offered in the Index of characters ("Índice de personajes").
  3. A very basic facsimile edition using images offered by the [Library of Extremadura under a Creative Commons license](http://roda.gobex.es/roda/avisoLegal.jsp;jsessionid=5FF976699E942910DB78499E6ED34C08?pid=libro%3A5274b75d-ca5c-472c-8cb5-817e5f8cac99), if the reader is interested in comparing the original with the edited text.
* We have also added other sections to our edition:
  1. A contextualization of the work, the edition from Medina del Campo, and its later reception.
  2. A map of the places mentioned by Lázaro as well as the places he visits.
  3. An index of characters with a brief description.
  4. Our editorial criteria in making the edition.
  5. A bibliographical section with the texts used in this course with regards to *Lazarillo* and other web resources.
  6. A search option of our editions, including the sections mentioned above.
  7. A document with the principles that have guided our work, as well as the license of our contents.

## The technologies we have used

Our second goal of this course was to introduce to students the technologies needed to undertake their own scholarly digital editions in the future.

* [Extensible Markup Languages](https://www.w3.org/XML/) and the [Text Encoding Initiative](http://www.tei-c.org/index.xml): the text of *Lazarillo* was marked with XML, following the guidelines of the TEI, one of the most robust and widely-used set of standards for the markup of texts in the humanities and social sciences. We have marked only the structure of the text (chapters, paragraphs), dialogues and characters' thoughts, the characters' names and places. The final edition can be viewed on our [GitHub repository](https://github.com/minilazarillo/minilazarillo.github.io/blob/master/xml/lazarillo-master.xml).

* [Extensible Stylesheet Transformations Language](https://www.w3.org/TR/xslt): XSLT is a widely-used language within the digital humanities to transform XML documents into a different format. In our case, we have used three different stylesheets:
  1. Transforming the XML-TEI to Markdown for the [reading edition](xml/tei-to-md-reading.xsl).
  2. Transforming the XML-TEI to Markdown for the [annotated edition](xml/tei-to-md-annotated.xsl).
  3. Transforming the XML-TEI to Markdown for the [index of characters](xml/tei-to-md-persNames.xsl).

* [HyperText Markup Language](https://www.w3.org/html/) and [Cascading Style Sheets](https://www.w3.org/Style/CSS/Overview.en.html): HTML and CSS are indispensable when creating and understanding the structure or design of whatever website.

* [Jekyll](http://jekyllrb.com/): Jekyll is a static website generator. We believe that this process was the simplest and allowed us, on one hand, to make the necessary web pages, and on the other hand, keep the XML code separate. As a model, we have used the Jekyll theme [Ed](https://github.com/elotroalex/ed), as it offered the basic elements necessary for the entire edition. From there, we have modified Ed's HTML and CSS to suit our edition.

* For the bubble annotations in the annotated version, we  used the CSS code [balloon.css](http://kazzkiq.github.io/balloon.css/).

* For the map, we used [Odyssey.js](https://cartodb.github.io/odyssey.js/), based on JavaScript and Markdown.

Additionally, as an essential part of the group work, we have used:

* Git and GitHub have facilitated group work, as a type of log book, where each member contributed to each of the sections.
* GitHub Pages as a means of free publication and hosting for our edition.
* For the materials that were not to be included in the final edition (for instance, the first drafts of the index of characters or the intermediate steps of other materials), the students preferred to use Google Docs and Google Drive.

## Experience

> Throughout the course I have enjoyed and learned so much about technology in general, textual criticism and how to work in a group to produce a digital project. This course has taught what the digital humanities are, and technologies like git, Jekyll, XML and XSLT. I hope to use what I have learned in my own projects! <span style="font-style: normal">**—Armando León, front-end developer**</span>

> Before this semester, I did not know what the terminal was nor how to access it! I learned that I can use my computer for many other things and how to work with XML, HTML, CSS, etc. Additionally, the process of making a digital edition was very interesting, as well as discovering that an edition could be facsimile, diplomatic, critical, etc. The course in general has taught me what the digital humanities are. <span style="font-style: normal">**—Falls Kennedy,  back-end developer**</span>

> This course opened my eyes to a world I did not know about. Aside from learning all the technology necessary to make our edition, I also learned a lot about  *Lazarillo* and textual criticism in general. This experience has inspired me to continue working on similar projects in the future. <span style="font-style: normal">**—Fiona Kibblewhite, project manager**</span>

> In this course, I have learned many things that will always serve me well in life. Using GitHub, for instance, was very interesting and useful (having heard others talk about this platform many times but not knowing how it worked, and now I believe it is a useful tool to collaborate online). Additionally, as I was creating the map with Odyssey.js, I learned a lot about making maps as well as the places that Lázaro saw. <span style="font-style: normal">**—Taewan Shim, quality director and cartographer**</span>

## Acknowledgements

The team would like to thank the Department of Latin American and Iberian Cultures for accomodating the launch of our edition. Additionally, we would also like to give our thanks to Terry Catapano for his help with the XSLT transformations and time he dedicated to teaching us.

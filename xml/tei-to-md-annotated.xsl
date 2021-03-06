﻿<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0"
    xmlns:tei="http://www.tei-c.org/ns/1.0" exclude-result-prefixes="#all">

    <xsl:output encoding="UTF-8" method="text"></xsl:output>

    <!-- SAT: Selecciona las <div> de primer nivel: -->
    <xsl:template match="/">
        <xsl:apply-templates select="//tei:body/tei:div"/>
    </xsl:template>

    <!-- <xsl:strip-space elements="*"/>-->

    <!-- SAT: Creación de files individuales para el prólogo y cada uno de los tratados. en caso que sólo se quisiera
    transformar una parte determinada del texto se debería indicar con xPath y substituirlo por "tei:body/tei:div"-->

    <xsl:template match="tei:body/tei:div">
        <!-- SAT: esta variable sirve para agarrar el valor del @xml:id y utilizarlo, por ejemplo,
        para nombrar los ficheros.-->
        <xsl:variable name="sect_id" select="@xml:id"/>
        <xsl:result-document method="text" encoding="utf-8"
             href="../_texts/{$sect_id}-annotated.md" omit-xml-declaration="yes">

            <!-- SAT: aquí se edita el header con yaml -->
            <xsl:text>---&#x0A;layout: narrative&#x0A;</xsl:text>
            <xsl:text>title: </xsl:text>
            <xsl:value-of select="tei:head[@type='titulo']"/>
            <xsl:text>&#x0A;</xsl:text>
            <xsl:text>author:</xsl:text>
            <xsl:text>&#x0A;</xsl:text>
            <xsl:text>mode: annotated</xsl:text>
            <xsl:text>&#x0A;</xsl:text>
            <xsl:value-of select="tei:teiHeader/fileDesc/titleStmt/author"/>
            <xsl:text>editor: Minimal Edition Class&#x0A;</xsl:text>
            <xsl:text>rights: Public Domain&#x0A;</xsl:text>
            <xsl:text>---&#x0A;&#x0A;</xsl:text>

            <xsl:apply-templates/>

            <!-- inline nav -->
            <xsl:text>&#x0A;&#x0A;</xsl:text>
            <xsl:text>&lt;div class="inline-nav" markdown="1"&gt;&#x0A;</xsl:text> <!-- open the div -->

            <xsl:if test="preceding-sibling::tei:div[1]"> <!-- preceding chapter -->
              <xsl:text>[</xsl:text>
              <xsl:value-of select="preceding-sibling::tei:div[1]/tei:head[@type='titulo']"/>
              <xsl:text>]</xsl:text>
              <xsl:text>({{site.baseurl}}/texts/</xsl:text>
              <xsl:value-of select="preceding-sibling::tei:div[1]/@xml:id"/>
              <xsl:text>-annotated.html){:.previous}&#x0A;</xsl:text>
            </xsl:if>

            <xsl:if test="following-sibling::tei:div[1]"> <!-- following chapter -->
              <xsl:text>[</xsl:text>
              <xsl:value-of select="following-sibling::tei:div[1]/tei:head[@type='titulo']"/>
              <xsl:text>]</xsl:text>
              <xsl:text>({{site.baseurl}}/texts/</xsl:text>
              <xsl:value-of select="following-sibling::tei:div[1]/@xml:id"/>
              <xsl:text>-annotated.html){:.following}&#x0A;</xsl:text>
            </xsl:if>

            <xsl:text>&#x0A;&lt;/div&gt;</xsl:text> <!-- close the div -->

        </xsl:result-document>
    </xsl:template>

    <!-- SAT: Tipografía -->
    <xsl:template match="tei:head[@type='titulo']"/>

    <xsl:template match="tei:head[@type='subtitulo']">
        <xsl:text>&#xa;</xsl:text>
        <xsl:text>## </xsl:text>
        <xsl:apply-templates></xsl:apply-templates>
        <xsl:text>&#xa;&#xa;</xsl:text>
    </xsl:template>

    <xsl:template match="tei:p">
        <xsl:text>&#x0A;</xsl:text>
        <xsl:apply-templates/>
        <xsl:text>&#x0A;</xsl:text>
    </xsl:template>

<!-- SAT: Crear los balloons con la descripción de los nombres de los personajes: -->
    <xsl:template match="tei:persName">
      <xsl:text>&lt;button data-balloon-pos="up" data-balloon-length="large" data-balloon='</xsl:text>
        <xsl:value-of select="/tei:TEI/tei:text/tei:back/tei:div/tei:listPerson/tei:person[@xml:id=translate(current()/@corresp, '#', '')]/tei:note/replace(replace(., '-', '—'), '\s+', ' ')" />
      <xsl:text>'&gt;</xsl:text>
      <xsl:apply-templates />
      <xsl:text>&lt;/button&gt;</xsl:text>
    </xsl:template>

    <xsl:template match="text()">
        <xsl:value-of select="replace(replace(., '-', '—'), '\s+', ' ')"></xsl:value-of>
    </xsl:template>

    <!-- SAT: Crear el icono de la imagen y crear un enlace al folio correspondiente: -->
    <xsl:template match="tei:pb">
        <xsl:text>&lt;a href="http://minilazarillo.github.io/assets/facsimile/</xsl:text>
        <xsl:value-of select="@facs"></xsl:value-of>
        <xsl:text>"&gt;</xsl:text>
        <xsl:text>&lt;img src="/assets/photo-icon.png" alt="Enlace al facsímil" style="display:inline-block; margin-bottom:-3px;"&gt;</xsl:text>
        <xsl:text>&lt;/a&gt;</xsl:text>
    </xsl:template>

</xsl:stylesheet>

<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
    xmlns:tei="http://www.tei-c.org/ns/1.0" exclude-result-prefixes="#all">

    <xsl:output encoding="UTF-8" method="text"/>

    <!-- SAT: Selecciona las <div> de primer nivel: -->
    <xsl:template match="/">
        <xsl:apply-templates select="//tei:back/tei:div"/>
    </xsl:template>

    <!-- <xsl:strip-space elements="*"/>-->

    <!-- SAT: Creación de files individuales para el prólogo y cada uno de los tratados. en caso que sólo se quisiera
    transformar una parte determinada del texto se debería indicar con xPath y substituirlo por "tei:body/tei:div"-->

    <xsl:template match="tei:back/tei:div">
        <!-- SAT: esta variable sirve para agarrar el valor del @xml:id y utilizarlo, por ejemplo,
        para nombrar los ficheros.-->
        <xsl:result-document href="../indice.md">
          <!-- SAT: aquí se edita el header con yaml -->
          <xsl:text>---&#x0A;layout: page&#x0A;</xsl:text>
          <xsl:text>title: Índice de personajes</xsl:text>
          <xsl:value-of select="tei:head[@type='titulo']"/>
          <xsl:text>&#x0A;</xsl:text>
          <xsl:value-of select="tei:teiHeader/fileDesc/titleStmt/author"/>
          <xsl:text>editor: Minimal Edition Class&#x0A;</xsl:text>
          <xsl:text>rights: Public Domain&#x0A;</xsl:text>
          <xsl:text>materiales: true&#x0A;</xsl:text>
          <xsl:text>order: 7&#x0A;</xsl:text>
          <xsl:text>---&#x0A;&#x0A;</xsl:text>
          <xsl:apply-templates />
        </xsl:result-document>
    </xsl:template>

    <!-- AJL: Aquí se recupera los persNames y la nota asociada -->
    <xsl:template match="tei:listPerson">
        <xsl:apply-templates select="tei:head"/>
        <xsl:apply-templates select="tei:person">
            <xsl:sort select="translate(lower-case(.),'un ','')" />
        </xsl:apply-templates>
        <xsl:text>&#x0A;</xsl:text>
    </xsl:template>

    <xsl:template match="tei:listPerson/person">
      <xsl:apply-templates />
    </xsl:template>

    <xsl:template match="tei:head">
        <xsl:text>&#x0A;</xsl:text>
        <xsl:text>##</xsl:text>
        <xsl:apply-templates />
        <xsl:text>&#x0A;</xsl:text>
    </xsl:template>

    <xsl:template match="tei:persName">
      <xsl:text>&#x0A;- **</xsl:text>
      <xsl:apply-templates />
      <xsl:text>**: </xsl:text>
    </xsl:template>

    <xsl:template match="tei:note">
        <xsl:apply-templates/>
    </xsl:template>

    <xsl:template match="text()">
        <xsl:value-of select="replace(replace(., '-', '—'), '\s+', ' ')"></xsl:value-of>
    </xsl:template>

</xsl:stylesheet>

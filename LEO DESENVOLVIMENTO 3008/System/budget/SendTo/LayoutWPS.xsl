<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="text" />
  <xsl:decimal-format name="formato" decimal-separator='.' />

  <xsl:template match="LISTING">
    <xsl:for-each select="AMBIENTS/AMBIENT">
      <xsl:for-each select="CATEGORIES/CATEGORY">
        <xsl:call-template name="GerarItens"/>
      </xsl:for-each>
    </xsl:for-each>
  </xsl:template>

  <!-- TEMPLATE QUEBRAR LINHA -->
  <xsl:template name="QuebrarLinha">
    <xsl:text>&#13;&#10;</xsl:text>
  </xsl:template>

  <!-- TEMPLATE GERAR ITENS -->
  <xsl:template name="GerarItens">
    <xsl:for-each select="ITEMS/ITEM">
      <xsl:call-template name="GerarItem"/>
    </xsl:for-each>
  </xsl:template>

  <!-- TEMPLATE GERAR ITEM -->
  <xsl:template name="GerarItem">
    <xsl:variable name="numero">
      <xsl:number level="any"/>
    </xsl:variable>
    <xsl:value-of select="$numero"/>
    <xsl:text>;</xsl:text>
    <xsl:value-of select="@REPETITION"/>
    <xsl:text>;</xsl:text>
    <xsl:value-of select="@QUANTITY"/>
    <xsl:text>;</xsl:text>
    <xsl:value-of select="@REFERENCE"/>
    <xsl:text>;</xsl:text>
    <xsl:if test="count(REFERENCES) > 0 and count(REFERENCES/MODEL) > 0">
      <xsl:value-of select="REFERENCES/MODEL/@REFERENCE"/>
    </xsl:if>
    <xsl:text>;</xsl:text>
    <xsl:value-of select="@DESCRIPTION"/>
    <xsl:text>;</xsl:text>
    <xsl:value-of select="@WIDTH"/>
    <xsl:text>;</xsl:text>
    <xsl:value-of select="@HEIGHT"/>
    <xsl:text>;</xsl:text>
    <xsl:value-of select="@DEPTH"/>
    <xsl:text>;</xsl:text>
    <xsl:value-of select="@UNIQUEID"/>
    <xsl:text>;</xsl:text>
    <xsl:value-of select="@UNIQUEPARENTID"/>
    <xsl:if test="count(METADATAS) &gt; 0
                  and count(METADATAS/METADATA) &gt; 0 
                  and METADATAS/METADATA/@ID = 'WPSITEM' 
                  and count(METADATAS/METADATA/METADATA.VALUE)  &gt; 0 
                  and count(METADATAS/METADATA/METADATA.VALUE/WPSITEM)  &gt; 0 " >
      <xsl:text>;</xsl:text>
      <xsl:value-of select="METADATAS/METADATA/METADATA.VALUE/WPSITEM/@VALUE"/>
    </xsl:if>

    <xsl:call-template name="QuebrarLinha"/>

    <xsl:if test="count(ITEMS) != 0" >
      <xsl:call-template name="GerarItens"/>
    </xsl:if>

  </xsl:template>

</xsl:stylesheet>

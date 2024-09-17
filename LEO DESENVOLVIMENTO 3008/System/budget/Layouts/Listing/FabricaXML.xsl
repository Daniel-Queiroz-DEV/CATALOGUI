<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="xml"  encoding="utf-8"  omit-xml-declaration="no"  indent="yes" />
  <xsl:template match="LISTING">
    
    <FOCCOINTEGRADOR CHAVE_PRODUTO="%FOCCOINTEGRADOR%">
      <IMPORTACAO TIPO="ESTRUTURA">
        <EMPRESA CNPJ="%MANUFACTURER_ID%">
          <xsl:for-each select="AMBIENTS/AMBIENT">
            <xsl:for-each select="CATEGORIES/CATEGORY">
              <xsl:call-template name="GERAR_ESTRUTURAS_ITENS" />
            </xsl:for-each>
          </xsl:for-each>
        </EMPRESA>
      </IMPORTACAO> 
      <IMPORTACAO TIPO="CONFIGURADO">
        <EMPRESA CNPJ="%MANUFACTURER_ID%">
          <xsl:for-each select="AMBIENTS/AMBIENT">
            <xsl:for-each select="CATEGORIES/CATEGORY">
              <xsl:call-template name="GERAR_ITENS_CONFIGURADO" />
            </xsl:for-each>
          </xsl:for-each>
        </EMPRESA>
      </IMPORTACAO>
      <IMPORTACAO TIPO="ROTEIRO">
        <EMPRESA CNPJ="%MANUFACTURER_ID%">
          <xsl:for-each select="AMBIENTS/AMBIENT">
            <xsl:for-each select="CATEGORIES/CATEGORY">
              <xsl:call-template name="GERAR_ROTEIRO_PRODUTIVO_ITENS" />
            </xsl:for-each>
          </xsl:for-each>
        </EMPRESA>
      </IMPORTACAO>
    </FOCCOINTEGRADOR>
  </xsl:template>

  <!-- TEMPLATE GERAR ROTEIRO PRODUTIVO -->
  <xsl:template name="GERAR_ROTEIRO_PRODUTIVO_ITENS">
    <xsl:if test="count(ITEMS) &gt; 0">
      <xsl:for-each select="ITEMS/ITEM">
        <xsl:call-template name="GERAR_ROTEIRO_PRODUTIVO_ITEM" />
      </xsl:for-each>
    </xsl:if>
  </xsl:template>

  <!-- TEMPLATE GERAR ITENS -->
  <xsl:template name="GERAR_ESTRUTURAS_ITENS">
    <xsl:for-each select="ITEMS/ITEM">
      <xsl:call-template name="GERAR_ESTRUTURA_ITEM" />
    </xsl:for-each>
  </xsl:template>

  <!-- TEMPLATE GERAR ITENS -->
  <xsl:template name="GERAR_ITENS_CONFIGURADO">
    <xsl:for-each select="ITEMS/ITEM">
      <xsl:call-template name="GERAR_ITEM_CONFIGURADO" />
    </xsl:for-each>
  </xsl:template>

  <!-- TEMPLATE GERAR ROTEIRO ITEM -->
  <xsl:template name="GERAR_ROTEIRO_PRODUTIVO_ITEM">
    <xsl:if test="@GROUP != 'Ferragens' and @FAMILY != 'Roteiro Produtivo' and @FAMILY != 'Acessorios'">
      <xsl:call-template name="GERAR_NODO_ROTEIRO" />
    </xsl:if>
    <xsl:call-template name="GERAR_ROTEIRO_PRODUTIVO_ITENS" />
  </xsl:template>

  <!-- TEMPLATE GERAR ITEM -->
  <xsl:template name="GERAR_ESTRUTURA_ITEM">
    <xsl:if test="name(parent::node()/parent::node())='CATEGORY'">
      <xsl:if test="@FAMILY != 'Roteiro Produtivo'">
        <xsl:call-template name="GERAR_NODO_ESTRUTURA" />
      </xsl:if>
    </xsl:if>
  </xsl:template>

  <!-- TEMPLATE GERAR ITEM -->
  <xsl:template name="GERAR_ITEM_CONFIGURADO">
    <xsl:if test="name(parent::node()/parent::node())='CATEGORY'">
      <xsl:if test="@FAMILY = 'Roteiro Produtivo'">
        <xsl:call-template name="GERAR_NODO_CONFIGURADO" />
      </xsl:if>
    </xsl:if>
  </xsl:template>

  <!-- TEMPLATE GERAR ESTRUTURAS -->
  <xsl:template name="GERAR_ESTRUTURAS_ITEM">
      <xsl:for-each select="ITEMS/ITEM">
        <xsl:call-template name="GERAR_ESTRUTURA" />
      </xsl:for-each>
  </xsl:template>

    <xsl:template name="GERAR_ESTRUTURAS_ITEM2">
    <xsl:element name="ESTRUTURA">
      <xsl:for-each select="ITEMS/ITEM">
        <xsl:call-template name="GERAR_ESTRUTURA" />
      </xsl:for-each>
    </xsl:element>
  </xsl:template>

  <!-- TEMPLATE GERAR ESTRUTURA -->
  <xsl:template name="GERAR_ESTRUTURA">
    <xsl:if test="@FAMILY != 'Roteiro Produtivo'">
      <xsl:call-template name="GERAR_NODO_ESTRUTURAS" />
    </xsl:if>
  </xsl:template>

  <!-- TEMPLATE GERAR NODO -->
  <xsl:template name="GERAR_NODO_ESTRUTURA">
    <xsl:if test="count(ITEMS) > 0
                  and count(ADDITIONAL_INFORMATIONS_BUILDER) &gt; 0
                  and count(ADDITIONAL_INFORMATIONS_BUILDER/REFERENCES) &gt; 0">
      <xsl:choose>
        <xsl:when test="count(ADDITIONAL_INFORMATIONS_BUILDER/@PROCESSED_BY_BUILDER) &gt; 0
                  and ADDITIONAL_INFORMATIONS_BUILDER/@PROCESSED_BY_BUILDER = 'Y'">
          <xsl:variable name="guid" select="@GUIDBUILDER" />
          <xsl:element name="ITEM">
            <xsl:attribute name="CODIGO">
              <xsl:if test="count(REFERENCES/CODE) &gt; 0">
                <xsl:value-of select="REFERENCES/CODE/@REFERENCE" />
              </xsl:if>
              <xsl:if test="count(REFERENCES/CODE) = 0 and count(REFERENCES/COMPLETE) &gt; 0">
                <xsl:value-of select="REFERENCES/COMPLETE/@REFERENCE" />
              </xsl:if>
            </xsl:attribute>
            <xsl:element name="CONFIGURADO">
              <xsl:if test="count(ADDITIONAL_INFORMATIONS_BUILDER)  &gt; 0">
                <xsl:if test="count(ADDITIONAL_INFORMATIONS_BUILDER/REFERENCES)  &gt; 0 ">
                  <xsl:call-template name="GERAR_CARACTERISTICAS" />
                </xsl:if>
              </xsl:if>
            </xsl:element>
              <xsl:if test="'%SHOW_CAD3D_UNIQUE_ID%' = 'True'">
                <xsl:element name="CAD3D_UNIQUE_ID">
                  <xsl:value-of select="$guid" />
                </xsl:element>
              </xsl:if>
            <xsl:if test="count(ITEMS) &gt; 0">
              <xsl:call-template name="GERAR_ESTRUTURAS_ITEM2" />
            </xsl:if>
          </xsl:element>
        </xsl:when>
        <xsl:otherwise>
          <xsl:if test="count(ITEMS) &gt; 0">
            <xsl:call-template name="GERAR_ESTRUTURAS_ITEM" />
          </xsl:if>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:if>
  </xsl:template>

  <!-- TEMPLATE GERAR NODO ROTEIRO -->
  <xsl:template name="GERAR_NODO_ROTEIRO">
    <xsl:if test="count(ADDITIONAL_INFORMATIONS_BUILDER) &gt; 0
                  and count(ADDITIONAL_INFORMATIONS_BUILDER/PRODUCTIVE_SCRIPT) &gt; 0
                  and count(ADDITIONAL_INFORMATIONS_BUILDER/PRODUCTIVE_SCRIPT/OPERATION)&gt; 0">
      <xsl:variable name="guid" select="@GUIDBUILDER" />
      <xsl:element name="ITEM">
        <xsl:attribute name="CODIGO">
          <xsl:if test="count(REFERENCES/CODE) &gt; 0">
            <xsl:value-of select="REFERENCES/CODE/@REFERENCE" />
          </xsl:if>
          <xsl:if test="count(REFERENCES/CODE) = 0 and count(REFERENCES/COMPLETE) &gt; 0">
            <xsl:value-of select="REFERENCES/COMPLETE/@REFERENCE" />
          </xsl:if>
        </xsl:attribute>
        <xsl:element name="CONFIGURADO">
          <xsl:if test="count(ADDITIONAL_INFORMATIONS_BUILDER)  &gt; 0">
            <xsl:if test="count(ADDITIONAL_INFORMATIONS_BUILDER/REFERENCES)  &gt; 0 ">
              <xsl:call-template name="GERAR_CARACTERISTICAS" />
            </xsl:if>
          </xsl:if>
        </xsl:element>
        <xsl:element name="ROTEIRO">
          <xsl:if test="count(ADDITIONAL_INFORMATIONS_BUILDER)  &gt; 0">
            <xsl:if test="count(ADDITIONAL_INFORMATIONS_BUILDER/REFERENCES)  &gt; 0 ">
              <xsl:call-template name="GERAR_OPERACOES" />
            </xsl:if>
          </xsl:if>
        </xsl:element>
      </xsl:element>
    </xsl:if>
  </xsl:template>

  <!-- TEMPLATE GERAR NODO CONFIGURADO -->
  <xsl:template name="GERAR_NODO_CONFIGURADO">
    <xsl:if test="count(ADDITIONAL_INFORMATIONS_BUILDER) &gt; 0
                  and count(ADDITIONAL_INFORMATIONS_BUILDER/REFERENCES)  &gt; 0
                  and @GUIDBUILDER != ''">
      <xsl:variable name="guid" select="@GUIDBUILDER" />
      <xsl:element name="ITEM">
        <xsl:attribute name="CODIGO">
          <xsl:if test="count(REFERENCES/CODE) &gt; 0">
            <xsl:value-of select="REFERENCES/CODE/@REFERENCE" />
          </xsl:if>
          <xsl:if test="count(REFERENCES/CODE) = 0 and count(REFERENCES/COMPLETE) &gt; 0">
            <xsl:value-of select="REFERENCES/COMPLETE/@REFERENCE" />
          </xsl:if>
        </xsl:attribute>
        <xsl:element name="CONFIGURADO">
          <xsl:if test="count(ADDITIONAL_INFORMATIONS_BUILDER)  &gt; 0">
            <xsl:if test="count(ADDITIONAL_INFORMATIONS_BUILDER/REFERENCES)  &gt; 0 ">
              <xsl:call-template name="GERAR_CARACTERISTICAS" />
            </xsl:if>
          </xsl:if>
        </xsl:element>
          <xsl:if test="'%SHOW_CAD3D_UNIQUE_ID%' = 'True'">
            <xsl:element name="CAD3D_UNIQUE_ID">
              <xsl:value-of select="$guid" />
            </xsl:element>
          </xsl:if>
      </xsl:element>
    </xsl:if>
  </xsl:template>

  <!-- TEMPLATE GERAR NODO ESTRUTURAS -->
  <xsl:template name="GERAR_NODO_ESTRUTURAS">
    <xsl:choose>
      <xsl:when test="count(ADDITIONAL_INFORMATIONS_BUILDER/@PROCESSED_BY_BUILDER) &gt; 0 
                      and ADDITIONAL_INFORMATIONS_BUILDER/@PROCESSED_BY_BUILDER = 'Y'">
        <xsl:element name="ITEM">
          <xsl:attribute name="CODIGO">
            <xsl:if test="count(REFERENCES/CODE) &gt; 0">
              <xsl:value-of select="REFERENCES/CODE/@REFERENCE" />
            </xsl:if>
            <xsl:if test="count(REFERENCES/CODE) = 0 and count(REFERENCES/COMPLETE) &gt; 0">
              <xsl:value-of select="REFERENCES/COMPLETE/@REFERENCE" />
            </xsl:if>
          </xsl:attribute>
          <xsl:element name="CONFIGURADO">
            <xsl:if test="count(ADDITIONAL_INFORMATIONS_BUILDER)  &gt; 0">
              <xsl:if test="count(ADDITIONAL_INFORMATIONS_BUILDER/REFERENCES)  &gt; 0 ">
                <xsl:call-template name="GERAR_CARACTERISTICAS" />
              </xsl:if>
            </xsl:if>
          </xsl:element>
          <xsl:element name="QUANTIDADE">
            <xsl:choose>
              <xsl:when test="count(@REPETITION) > 0 and @REPETITION = 1">
                <xsl:value-of select="@QUANTITY" />
              </xsl:when>
              <xsl:when test="count(@REPETITION) > 0 and @REPETITION != 1">
                <xsl:value-of select="@REPETITION" />
              </xsl:when>
            </xsl:choose>
          </xsl:element>
          <xsl:if test="count(ITEMS) &gt; 0">
            <xsl:call-template name="GERAR_ESTRUTURAS_ITEM2" />
          </xsl:if>
        </xsl:element>
      </xsl:when>
      <xsl:otherwise>
          <xsl:call-template name="GERAR_ESTRUTURAS_ITEM" />
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <!-- TEMPLATE GERAR CARACTERÍSTICAS -->
  <xsl:template name="GERAR_CARACTERISTICAS">
    <xsl:for-each select="ADDITIONAL_INFORMATIONS_BUILDER/REFERENCES/REFERENCE">
      <xsl:element name="CARACTERISTICA">
        <xsl:attribute name="CODIGO">
          <xsl:value-of select="@ID" />
        </xsl:attribute>
        <xsl:attribute name="RESPOSTA">
          <xsl:value-of select="@VALUE" />
        </xsl:attribute>
      </xsl:element>
    </xsl:for-each>
  </xsl:template>

  <!-- TEMPLATE GERAR OPERAÇÕES -->
  <xsl:template name="GERAR_OPERACOES">
    <xsl:for-each select="ADDITIONAL_INFORMATIONS_BUILDER/PRODUCTIVE_SCRIPT/OPERATION">
      <xsl:call-template name="GERAR_NODO_OPERACAO" />
    </xsl:for-each>
  </xsl:template>

  <!-- TEMPLATE NODO OPERAÇÃO CORTE -->
  <xsl:template name="GERAR_NODO_OPERACAO">
    <xsl:element name="OPERACAO">
      <xsl:attribute name="CODIGO">
        <xsl:value-of select="@CODE" />
      </xsl:attribute>

      <xsl:element name="SEQUENCIA">
        <xsl:value-of select="@ORDER" />
      </xsl:element>
      <xsl:element name="TEMPO">
        <xsl:value-of select="@QUANTITY" />
      </xsl:element>
      <xsl:element name="UNID_MED">
        <xsl:value-of select="@UNIT" />
      </xsl:element>
      <xsl:element name="APONTAMENTO">0</xsl:element>
      <xsl:element name="OBRIGATORIO">0</xsl:element>
      <xsl:element name="CENTRO_TRABALHO" />

      <xsl:choose>
        <xsl:when test="@TYPE = 'CUT'">
          <xsl:element name="DADOS_ESPECIAIS">
            <xsl:element name="CAMPO">
              <xsl:attribute name="NOME">COMPRIMENTO_CORTE</xsl:attribute>
              <xsl:attribute name="RESPOSTA">
                <xsl:value-of select="PLATE_CUTTING/@X" />
              </xsl:attribute>
            </xsl:element>
            <xsl:element name="CAMPO">
              <xsl:attribute name="NOME">LARGURA_CORTE</xsl:attribute>
              <xsl:attribute name="RESPOSTA">
                <xsl:value-of select="PLATE_CUTTING/@Y" />
              </xsl:attribute>
            </xsl:element>
          </xsl:element>
        </xsl:when>
        <xsl:when test="@TYPE = 'HOLE' or @TYPE = 'SLOT' or @TYPE = 'PARAMETRICMACHINING' or @TYPE = 'MACHINING'">
          <xsl:element name="DADOS_ESPECIAIS">
            <xsl:element name="CAMPO">
              <xsl:attribute name="NOME">CAM</xsl:attribute>
              <xsl:attribute name="RESPOSTA">
                <xsl:value-of select="CAM/@VALUE" />
              </xsl:attribute>
            </xsl:element>
          </xsl:element>
        </xsl:when>
      </xsl:choose>
    </xsl:element>
  </xsl:template>
</xsl:stylesheet>

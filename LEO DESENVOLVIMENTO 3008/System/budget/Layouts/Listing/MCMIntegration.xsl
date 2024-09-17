<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:variable name="WIDTH" select="'LARGURA'" />
  <xsl:variable name="HEIGHT" select="'ALTURA'" />
  <xsl:variable name="DEPTH" select="'PROFUNDIDADE'" />
  <xsl:output method="xml"  encoding="utf-8"  omit-xml-declaration="no"  indent="yes" />
  <xsl:template match="LISTING">
    <XML_BUILDER TIPO="PROMOB_ERP">
      <ABOUTPROMOB>
        <xsl:attribute name ="VERSION">
          <xsl:value-of select="ABOUTPROMOB/@VERSION" />
        </xsl:attribute>
        <xsl:attribute name ="REVISION">
          <xsl:value-of select="ABOUTPROMOB/@REVISION" />
        </xsl:attribute>
        <xsl:attribute name ="BUILD">
          <xsl:value-of select="ABOUTPROMOB/@BUILD" />
        </xsl:attribute>
        <xsl:attribute name ="SYSTEM">
          <xsl:value-of select="ABOUTPROMOB/@SYSTEM" />
        </xsl:attribute>
        <xsl:attribute name ="DISTRIBUTION">
          <xsl:value-of select="ABOUTPROMOB/@DISTRIBUTION" />
        </xsl:attribute>
        <xsl:attribute name ="SYSTEMREVISION">
          <xsl:value-of select="ABOUTPROMOB/@SYSTEMREVISION" />
        </xsl:attribute>
        <xsl:attribute name ="SERIALNUMBER">
          <xsl:value-of select="ABOUTPROMOB/@SERIALNUMBER" />
        </xsl:attribute>
      </ABOUTPROMOB>
      <UNIQUE_FILEID CODIGO="%MCM_PROJECT_GUID%" />
      <IMPORTACAO TIPO="ESTRUTURA">
        <DADOS_CLIENTES>
          <xsl:element name="LOJA">
            <xsl:for-each select="CUSTOMERSDATA/DATA">
              <xsl:if test="@ID = 'rep_nomeempresa'">
                <xsl:attribute name="NOME">
                  <xsl:value-of select="@VALUE" />
                </xsl:attribute>
              </xsl:if>
              <xsl:if test="@ID = 'rep_enderecoempresa'">
                <xsl:attribute name="ENDERECO">
                  <xsl:value-of select="@VALUE" />
                </xsl:attribute>
              </xsl:if>
              <xsl:if test="@ID = 'rep_bairroempresa'">
                <xsl:attribute name="BAIRRO">
                  <xsl:value-of select="@VALUE" />
                </xsl:attribute>
              </xsl:if>
              <xsl:if test="@ID = 'rep_cepenpresa'">
                <xsl:attribute name="CEP">
                  <xsl:value-of select="@VALUE" />
                </xsl:attribute>
              </xsl:if>
              <xsl:if test="@ID = 'rep_cidadeempresa'">
                <xsl:attribute name="CIDADE">
                  <xsl:value-of select="@VALUE" />
                </xsl:attribute>
              </xsl:if>
              <xsl:if test="@ID = 'rep_ufempresa'">
                <xsl:attribute name="UF">
                  <xsl:value-of select="@VALUE" />
                </xsl:attribute>
              </xsl:if>
              <xsl:if test="@ID = 'rep_telefoneempresa'">
                <xsl:attribute name="TELEFONE">
                  <xsl:value-of select="@VALUE" />
                </xsl:attribute>
              </xsl:if>
              <xsl:if test="@ID = 'rep_emailempresa'">
                <xsl:attribute name="EMAIL">
                  <xsl:value-of select="@VALUE" />
                </xsl:attribute>
              </xsl:if>
              <xsl:if test="@ID = 'rep_contatoempresa'">
                <xsl:attribute name="CONTATO">
                  <xsl:value-of select="@VALUE" />
                </xsl:attribute>
              </xsl:if>
            </xsl:for-each>
          </xsl:element>
          <xsl:element name="CLIENTE_LOJA">
            <xsl:for-each select="CUSTOMERSDATA/DATA">
              <xsl:if test="@ID = 'codcliente'">
                <xsl:attribute name="CODIGO">
                  <xsl:value-of select="@VALUE" />
                </xsl:attribute>
              </xsl:if>
              <xsl:if test="@ID = 'nomecliente'">
                <xsl:attribute name="NOME">
                  <xsl:value-of select="@VALUE" />
                </xsl:attribute>
              </xsl:if>
              <xsl:if test="@ID = 'cpfcnpj'">
                <xsl:attribute name="CPF_CNPJ">
                  <xsl:value-of select="@VALUE" />
                </xsl:attribute>
              </xsl:if>
              <xsl:if test="@ID = 'fone'">
                <xsl:attribute name="TELEFONE">
                  <xsl:value-of select="@VALUE" />
                </xsl:attribute>
              </xsl:if>
              <xsl:if test="@ID = 'celular'">
                <xsl:attribute name="CELULAR">
                  <xsl:value-of select="@VALUE" />
                </xsl:attribute>
              </xsl:if>
              <xsl:if test="@ID = 'endereco'">
                <xsl:attribute name="ENDERECO">
                  <xsl:value-of select="@VALUE" />
                </xsl:attribute>
              </xsl:if>
              <xsl:if test="@ID = 'bairro'">
                <xsl:attribute name="BAIRRO">
                  <xsl:value-of select="@VALUE" />
                </xsl:attribute>
              </xsl:if>
              <xsl:if test="@ID = 'cidade'">
                <xsl:attribute name="CIDADE">
                  <xsl:value-of select="@VALUE" />
                </xsl:attribute>
              </xsl:if>
              <xsl:if test="@ID = 'cep'">
                <xsl:attribute name="CEP">
                  <xsl:value-of select="@VALUE" />
                </xsl:attribute>
              </xsl:if>
              <xsl:if test="@ID = 'uf'">
                <xsl:attribute name="UF">
                  <xsl:value-of select="@VALUE" />
                </xsl:attribute>
              </xsl:if>
              <xsl:if test="@ID = 'email'">
                <xsl:attribute name="EMAIL">
                  <xsl:value-of select="@VALUE" />
                </xsl:attribute>
              </xsl:if>
              <xsl:if test="@ID = 'endentrega'">
                <xsl:attribute name="END_ENTREGA">
                  <xsl:value-of select="@VALUE" />
                </xsl:attribute>
              </xsl:if>
              <xsl:if test="@ID = 'observacoes'">
                <xsl:attribute name="OBSERVACAO">
                  <xsl:value-of select="@VALUE" />
                </xsl:attribute>
              </xsl:if>
            </xsl:for-each>
          </xsl:element>
        </DADOS_CLIENTES>
        <ITENS_PEDIDO>
          <xsl:for-each select="AMBIENTS/AMBIENT/CATEGORIES/CATEGORY/ITEMS/ITEM">
            <xsl:if test="(count(REFERENCES) &gt; 0 and count(REFERENCES/PEDIDOFABRICA) = 0) or (count(REFERENCES) &gt; 0 and count(REFERENCES/PEDIDOFABRICA) &gt; 0 and REFERENCES/PEDIDOFABRICA/@REFERENCE = 'True')">

              <xsl:element name="ITEM">


              <xsl:if test="@STRUCTURE = 'N'">
                <xsl:attribute name="ID">
                  <xsl:value-of select="@ID" />
                </xsl:attribute>
              </xsl:if>
              <xsl:if test="@STRUCTURE = 'Y'">
                <xsl:attribute name="ID">
                  <xsl:value-of select="@STRUCTUREKEY" />
                </xsl:attribute>
              </xsl:if>
                <xsl:attribute name="REFERENCIA">
                  <xsl:if test="count(REFERENCES) &gt; 0 and count(REFERENCES/COMPLETE) &gt; 0">
                    <xsl:value-of select="REFERENCES/COMPLETE/@REFERENCE" />
                  </xsl:if>
                </xsl:attribute>

                <xsl:call-template name="BUSCAR_ITEM_BASE" />

                <xsl:call-template name="BUSCAR_BUILDER" />

                <xsl:call-template name="BUSCAR_DESENHO" />

                <xsl:call-template name="BUSCAR_DIMENSOES" />

                <xsl:call-template name="BUSCAR_VOLUME" />

                <xsl:call-template name="BUSCAR_CONSTRUTOR_ARMARIO" />
                
                <xsl:attribute name="ID_PROMOB">
                  <xsl:value-of select="@UNIQUEID" />
                </xsl:attribute>
                <xsl:attribute name="DESCRICAO">
                  <xsl:value-of select="@DESCRIPTION" />
                </xsl:attribute>
                <xsl:call-template name="BUSCAR_TIPO_PRODUTO" />
                <xsl:call-template name="BUSCARFANTASMA" />

                <xsl:call-template name="GERARKIT_AGRUPADOR" />

                <xsl:attribute name="UNIDADE">
                  <xsl:value-of select="@UNIT" />
                </xsl:attribute>
                <xsl:attribute name="QUANTIDADE">
                  <xsl:value-of select="@QUANTITY" />
                </xsl:attribute>
                <xsl:attribute name="PRECO_TOTAL">
                  <xsl:value-of select="format-number(PRICE/MARGINS/ORDER/@TOTALCOMPONENTS + PRICE/MARGINS/ORDER/@TOTAL, '#0.00')" />
                </xsl:attribute>
                <xsl:call-template name="GERARCONFIGURADO" />
                <xsl:element name="UNIQUE_ID">
                  <xsl:attribute name="CODIGO">
                    <xsl:value-of select="@GUIDBUILDER" />
                  </xsl:attribute>
                  <xsl:attribute name="AMBIENTGUID">
                    <xsl:value-of select="parent::node()/parent::node()/parent::node()/parent::node()/@GUID" />
                  </xsl:attribute>
                  <xsl:attribute name="AMBIENTNAME">
                    <xsl:value-of select="parent::node()/parent::node()/parent::node()/parent::node()/@DESCRIPTION" />
                  </xsl:attribute>
                  <xsl:attribute name="PROJECTNAME">
                    <xsl:value-of select="parent::node()/parent::node()/parent::node()/parent::node()/@DESCRIPTION" />
                  </xsl:attribute>
                </xsl:element>
                <xsl:call-template name="GERAR_NODO_OTIMIZACAO_CORTE" />
                <xsl:call-template name="GERAR_NODO_MAQUINAS" />
                <xsl:call-template name="GERARESTRUTURA" />
                <xsl:call-template name="GERARROTEIRO" />
              </xsl:element>
            </xsl:if>
          </xsl:for-each>
        </ITENS_PEDIDO>
      </IMPORTACAO>
    </XML_BUILDER>
  </xsl:template>

  <xsl:template name="BUSCAR_DESENHO">
    <xsl:if test="count(ADDITIONAL_INFORMATIONS_BUILDER)  &gt; 0">
      <xsl:if test="count(ADDITIONAL_INFORMATIONS_BUILDER/@CODE)  &gt; 0">
        <xsl:attribute name="DESENHO">
          <xsl:value-of select="ADDITIONAL_INFORMATIONS_BUILDER/@CODE" />
        </xsl:attribute>
      </xsl:if>
    </xsl:if>
  </xsl:template>

  <xsl:template name="BUSCAR_DIMENSOES">
    <xsl:attribute name="LARGURA">
      <xsl:value-of select="@WIDTH" />
    </xsl:attribute>
    <xsl:attribute name="ALTURA">
      <xsl:value-of select="@HEIGHT" />
    </xsl:attribute>
    <xsl:attribute name="PROFUNDIDADE">
      <xsl:value-of select="@DEPTH" />
    </xsl:attribute>
  </xsl:template>

  <xsl:template name="BUSCAR_CONSTRUTOR_ARMARIO">
    <xsl:attribute name="CONSTRUTOR_ARMARIO">
        <xsl:value-of select="ADDITIONAL_INFORMATIONS_BUILDER/@CONSTRUTOR_ARMARIO" />
    </xsl:attribute>
  </xsl:template>
    
  <xsl:template name="BUSCAR_ITEM_BASE">
    <xsl:attribute name="ITEM_BASE">
      <xsl:choose>
        <xsl:when test="count(REFERENCES) &gt; 0">
          <xsl:choose>
            <xsl:when test="count(REFERENCES/ITEM_BASE) &gt; 0">
              <xsl:value-of select="REFERENCES/ITEM_BASE/@REFERENCE" />
            </xsl:when>
            <xsl:otherwise>
              <xsl:choose>
                <xsl:when test="string-length(normalize-space(@ITEM_BASE)) > 0">
                  <xsl:value-of select="@ITEM_BASE" />
                </xsl:when>
              </xsl:choose>
            </xsl:otherwise>
          </xsl:choose>
        </xsl:when>
        <xsl:otherwise>
          <xsl:choose>
            <xsl:when test="string-length(normalize-space(@ITEM_BASE)) > 0">
              <xsl:value-of select="@ITEM_BASE" />
            </xsl:when>
          </xsl:choose>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:attribute>
  </xsl:template>

  <!-- TEMPLATE BUSCARFANTASMA -->
  <xsl:template name="BUSCARFANTASMA">
    <xsl:if test="count(METADATAS) &gt; 0">
      <xsl:if test="count(METADATAS/METADATA) &gt; 0">
        <xsl:if test="METADATAS/METADATA/@ID = 'INTEGRATIONDATA'">
          <xsl:if test="count(METADATAS/METADATA/METADATA.VALUE)  &gt; 0 ">
            <xsl:if test="count(METADATAS/METADATA/METADATA.VALUE/INTEGRATIONDATA)  &gt; 0">
              <xsl:if test="count(METADATAS/METADATA/METADATA.VALUE/INTEGRATIONDATA/ATTRIBUTES)  &gt; 0 ">
                <xsl:for-each select="METADATAS/METADATA/METADATA.VALUE/INTEGRATIONDATA/ATTRIBUTES/ATTRIBUTE">
                  <xsl:if test="@NAME = 'FANTASMA'">
                    <xsl:attribute name="FANTASMA">
                      <xsl:value-of select="@VALUE" />
                    </xsl:attribute>
                  </xsl:if>
                </xsl:for-each>
              </xsl:if>
            </xsl:if>
          </xsl:if>
        </xsl:if>
      </xsl:if>
    </xsl:if>
  </xsl:template>

  <xsl:template name="BUSCAR_VOLUME">
    <xsl:choose>
      <xsl:when test="count(REFERENCES) &gt; 0">
        <xsl:choose>
          <xsl:when test="count(REFERENCES/VOLUME) &gt; 0">
            <xsl:attribute name="VOLUME">
              <xsl:value-of select="REFERENCES/VOLUME/@REFERENCE" />
            </xsl:attribute>
          </xsl:when>
          <xsl:otherwise>
            <xsl:call-template name="BUSCAR_VOLUME_OTHERWISE" />
          </xsl:otherwise>
        </xsl:choose>
      </xsl:when>
      <xsl:otherwise>
        <xsl:call-template name="BUSCAR_VOLUME_OTHERWISE" />
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <xsl:template name="BUSCAR_VOLUME_OTHERWISE">
    <xsl:choose>
      <xsl:when test="string-length(normalize-space(@VOLUME)) > 0">
        <xsl:value-of select="@VOLUME" />
      </xsl:when>
      <xsl:otherwise>
        <xsl:if test="count(METADATAS) &gt; 0">
          <xsl:if test="count(METADATAS/METADATA) &gt; 0">
            <xsl:if test="METADATAS/METADATA/@ID = 'INTEGRATIONDATA'">
              <xsl:if test="count(METADATAS/METADATA/METADATA.VALUE)  &gt; 0 ">
                <xsl:if test="count(METADATAS/METADATA/METADATA.VALUE/INTEGRATIONDATA)  &gt; 0">
                  <xsl:if test="count(METADATAS/METADATA/METADATA.VALUE/INTEGRATIONDATA/ATTRIBUTES)  &gt; 0 ">
                    <xsl:for-each select="METADATAS/METADATA/METADATA.VALUE/INTEGRATIONDATA/ATTRIBUTES/ATTRIBUTE">
                      <xsl:if test="@NAME = 'VOLUME'">
                        <xsl:attribute name="VOLUME">
                          <xsl:value-of select="@VALUE" />
                        </xsl:attribute>
                      </xsl:if>
                    </xsl:for-each>
                  </xsl:if>
                </xsl:if>
              </xsl:if>
            </xsl:if>
          </xsl:if>
        </xsl:if>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <!-- TEMPLATE BUSCAR_TIPO_PRODUTO -->
  <xsl:template name="BUSCAR_TIPO_PRODUTO">
    <xsl:if test="count(METADATAS) &gt; 0">
      <xsl:if test="count(METADATAS/METADATA) &gt; 0">
        <xsl:if test="METADATAS/METADATA/@ID = 'INTEGRATIONDATA'">
          <xsl:if test="count(METADATAS/METADATA/METADATA.VALUE)  &gt; 0 ">
            <xsl:if test="count(METADATAS/METADATA/METADATA.VALUE/INTEGRATIONDATA)  &gt; 0">
              <xsl:if test="count(METADATAS/METADATA/METADATA.VALUE/INTEGRATIONDATA/ATTRIBUTES)  &gt; 0 ">
                <xsl:for-each select="METADATAS/METADATA/METADATA.VALUE/INTEGRATIONDATA/ATTRIBUTES/ATTRIBUTE">
                  <xsl:if test="@NAME = 'UF' or @NAME = 'TIPO_PRODUTO' ">
                    <xsl:attribute name="TIPO_PRODUTO">
                      <xsl:value-of select="@VALUE" />
                    </xsl:attribute>
                  </xsl:if>
                </xsl:for-each>
              </xsl:if>
            </xsl:if>
          </xsl:if>
        </xsl:if>
      </xsl:if>
    </xsl:if>
  </xsl:template>

  <xsl:template name ="BUSCAR_BUILDER">
    <xsl:attribute name="BUILDER">
      <xsl:choose>
        <xsl:when test="count(ADDITIONAL_INFORMATIONS_BUILDER) &gt; 0 and
                        count(ADDITIONAL_INFORMATIONS_BUILDER/@PROCESSED_BY_BUILDER) &gt; 0 and
                        ADDITIONAL_INFORMATIONS_BUILDER/@PROCESSED_BY_BUILDER = 'Y'">
          <xsl:text>S</xsl:text>
        </xsl:when>
        <xsl:when test="count(ADDITIONAL_INFORMATIONS_BUILDER) &gt; 0 and
                        count(ADDITIONAL_INFORMATIONS_BUILDER/@PROCESSED_BY_BUILDER) &gt; 0 and
                        ADDITIONAL_INFORMATIONS_BUILDER/@PROCESSED_BY_BUILDER = 'N'">
          <xsl:text>N</xsl:text>
        </xsl:when>
        <xsl:otherwise>
          <xsl:text>N</xsl:text>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:attribute>
  </xsl:template>

  <!-- TEMPLATE GERAR ESTRUTURA -->
  <xsl:template name="GERARESTRUTURA">
    <ESTRUTURA>
      <xsl:for-each select="ITEMS/ITEM">
        <xsl:if test="@FAMILY != 'Roteiro Produtivo'">
            <xsl:if test="(count(REFERENCES) &gt; 0 and count(REFERENCES/PEDIDOFABRICA) = 0) or (count(REFERENCES) &gt; 0 and count(REFERENCES/PEDIDOFABRICA) &gt; 0 and REFERENCES/PEDIDOFABRICA/@REFERENCE = 'True')">
            <xsl:element name="ITEM">
			

              <xsl:if test="@STRUCTURE = 'N'">
                <xsl:attribute name="ID">
                  <xsl:value-of select="@ID" />
                </xsl:attribute>
              </xsl:if>
              <xsl:if test="@STRUCTURE = 'Y'">
                <xsl:attribute name="ID">
                  <xsl:value-of select="@STRUCTUREKEY" />
                </xsl:attribute>
              </xsl:if>
			  
              <xsl:attribute name="REFERENCIA">
                <xsl:if test="count(REFERENCES) &gt; 0 and count(REFERENCES/COMPLETE) &gt; 0">
                  <xsl:value-of select="REFERENCES/COMPLETE/@REFERENCE" />
                </xsl:if>
              </xsl:attribute>

              <xsl:call-template name="BUSCAR_ITEM_BASE" />

              <xsl:call-template name="BUSCAR_BUILDER" />

              <xsl:attribute name="ID_PROMOB">
                <xsl:value-of select="@UNIQUEID" />
              </xsl:attribute>

              <xsl:call-template name="BUSCAR_DESENHO" />

              <xsl:call-template name="BUSCAR_DIMENSOES" />

              <xsl:call-template name="BUSCAR_VOLUME" />

              <xsl:call-template name="BUSCAR_CONSTRUTOR_ARMARIO" />

              <xsl:attribute name="DESCRICAO">
                <xsl:value-of select="@DESCRIPTION" />
              </xsl:attribute>
              <xsl:call-template name="BUSCAR_TIPO_PRODUTO" />
              <xsl:call-template name="BUSCARFANTASMA" />

              <xsl:call-template name="GERARKIT_AGRUPADOR" />

              <xsl:attribute name="UNIDADE">
                <xsl:value-of select="@UNIT" />
              </xsl:attribute>
              <xsl:attribute name="QUANTIDADE">
                <xsl:value-of select="@QUANTITY" />
              </xsl:attribute>
              <xsl:attribute name="PRECO_TOTAL">
                <xsl:value-of select="format-number(PRICE/MARGINS/ORDER/@TOTALCOMPONENTS + PRICE/MARGINS/ORDER/@TOTAL, '#0.00')" />
              </xsl:attribute>
              <xsl:call-template name="GERARCONFIGURADO" />
              <xsl:call-template name="GERAR_NODO_OTIMIZACAO_CORTE" />
              <xsl:call-template name="GERAR_NODO_MAQUINAS" />
              <xsl:call-template name="GERARESTRUTURA" />
              <xsl:call-template name="GERARROTEIRO" />
            </xsl:element>
          </xsl:if>
        </xsl:if>
      </xsl:for-each>
    </ESTRUTURA>
  </xsl:template>

  <!-- TEMPLATE GERARCONFIGURADO -->
  <xsl:template name="GERARCONFIGURADO">
    <xsl:if test="count(METADATAS) &gt; 0">
      <xsl:if test="count(METADATAS/METADATA) &gt; 0">
        <xsl:if test="METADATAS/METADATA/@ID = 'INTEGRATIONDATA'">
          <xsl:if test="count(METADATAS/METADATA/METADATA.VALUE)  &gt; 0 ">
            <xsl:if test="count(METADATAS/METADATA/METADATA.VALUE/INTEGRATIONDATA)  &gt; 0">
              <xsl:if test="count(METADATAS/METADATA/METADATA.VALUE/INTEGRATIONDATA/ATTRIBUTES)  &gt; 0 ">
                <xsl:element name="CONFIGURADO">
                  <xsl:call-template name="GERARATRIBUTOS" />
                </xsl:element>
              </xsl:if>
            </xsl:if>
          </xsl:if>
        </xsl:if>
      </xsl:if>
    </xsl:if>
  </xsl:template>

  <!-- TEMPLATE GERARATRIBUTOS -->
  <xsl:template name="GERARATRIBUTOS">
    <xsl:for-each select="METADATAS/METADATA/METADATA.VALUE/INTEGRATIONDATA/ATTRIBUTES/ATTRIBUTE">
      <xsl:if test="@NAME != 'UF' and @NAME != 'FANTASMA' and @NAME != 'ITEM_BASE' and @NAME != 'KIT_AGRUPADOR' and @NAME != 'VOLUME' and @NAME != 'TIPO_PRODUTO'">
        <xsl:element name="CARACTERISTICA">
          <xsl:attribute name="CODIGO">
            <xsl:choose>
              <xsl:when test="@NAME = 'LARGURA_AMBIENTE'">
                <xsl:value-of select="$WIDTH" />
              </xsl:when>
              <xsl:when test="@NAME = 'ALTURA_AMBIENTE'">
                <xsl:value-of select="$HEIGHT" />
              </xsl:when>
              <xsl:when test="@NAME = 'PROFUNDIDADE_AMBIENTE'">
                <xsl:value-of select="$DEPTH" />
              </xsl:when>
              <xsl:otherwise>
                <xsl:value-of select="@NAME" />
              </xsl:otherwise>
            </xsl:choose>
          </xsl:attribute>
          <xsl:attribute name="RESPOSTA">
            <xsl:value-of select="@VALUE" />
          </xsl:attribute>
        </xsl:element>
      </xsl:if>
    </xsl:for-each>
  </xsl:template>

  <xsl:template name="GERARKIT_AGRUPADOR">
    <xsl:if test="count(METADATAS) &gt; 0">
      <xsl:if test="count(METADATAS/METADATA) &gt; 0">
        <xsl:if test="METADATAS/METADATA/@ID = 'INTEGRATIONDATA'">
          <xsl:if test="count(METADATAS/METADATA/METADATA.VALUE)  &gt; 0 ">
            <xsl:if test="count(METADATAS/METADATA/METADATA.VALUE/INTEGRATIONDATA)  &gt; 0">
              <xsl:if test="count(METADATAS/METADATA/METADATA.VALUE/INTEGRATIONDATA/ATTRIBUTES)  &gt; 0 ">
                <xsl:for-each select="METADATAS/METADATA/METADATA.VALUE/INTEGRATIONDATA/ATTRIBUTES/ATTRIBUTE">
                  <xsl:if test="@NAME = 'KIT_AGRUPADOR'">
                    <xsl:attribute name="KIT_AGRUPADOR">
                      <xsl:value-of select="@VALUE" />
                    </xsl:attribute>
                  </xsl:if>
                </xsl:for-each>
              </xsl:if>
            </xsl:if>
          </xsl:if>
        </xsl:if>
      </xsl:if>
    </xsl:if>
  </xsl:template>

  <!-- TEMPLATE GERARROTEIRO -->
  <xsl:template name="GERARROTEIRO">

    <xsl:if test="count(ADDITIONAL_INFORMATIONS_BUILDER)  &gt; 0">
      <xsl:if test="count(ADDITIONAL_INFORMATIONS_BUILDER/PRODUCTIVE_SCRIPT)  &gt; 0 ">
        <xsl:element name="ROTEIRO">
          <xsl:for-each select="ADDITIONAL_INFORMATIONS_BUILDER/PRODUCTIVE_SCRIPT/OPERATION">
            <xsl:element name="OPERACAO">

              <xsl:attribute name="ORDEM">
                <xsl:value-of select="@ORDER" />
              </xsl:attribute>

              <xsl:attribute name="CODIGO">
                <xsl:value-of select="@CODE" />
              </xsl:attribute>

              <xsl:attribute name="DESCRICAO">
                <xsl:value-of select="@DESCRIPTION" />
              </xsl:attribute>

              <xsl:attribute name="UNIDADE">
                <xsl:value-of select="@UNIT" />
              </xsl:attribute>

              <xsl:attribute name="QUANTIDADE">
                <xsl:value-of select="@QUANTITY" />
              </xsl:attribute>

              <xsl:attribute name="PRECO_UNIT">
                <xsl:value-of select="@UNIT_PRICE" />
              </xsl:attribute>
            </xsl:element>
          </xsl:for-each>
        </xsl:element>
      </xsl:if>
    </xsl:if>
  </xsl:template>

  <!-- TEMPLATE GERAR_NODO_MAQUINAS -->
  <xsl:template name="GERAR_NODO_MAQUINAS">
    <xsl:element name="MAQUINAS">
      <xsl:if test="count(METADATAS) &gt; 0">
        <xsl:if test="count(METADATAS/METADATA) &gt; 0">
          <xsl:if test="METADATAS/METADATA/@ID = 'GENERATEDCNCPROGRAMS'">
            <xsl:if test="count(METADATAS/METADATA/METADATA.VALUE)  &gt; 0 ">
              <xsl:if test="count(METADATAS/METADATA/METADATA.VALUE/MAQUINAS)  &gt; 0">
                <xsl:for-each select="METADATAS/METADATA/METADATA.VALUE/MAQUINAS/MAQUINA">

                  <xsl:element name="MAQUINA">
                    <xsl:attribute name="ID_PLUGIN">
                      <xsl:value-of select="@ID_PLUGIN" />
                    </xsl:attribute>
                    <xsl:attribute name="NOME_PLUGIN">
                      <xsl:value-of select="@NOME_PLUGIN" />
                    </xsl:attribute>
                    <xsl:attribute name="ID_MAQUINA">
                      <xsl:value-of select="@ID_MAQUINA" />
                    </xsl:attribute>
                    <xsl:attribute name="NOME_MAQUINA">
                      <xsl:value-of select="@NOME_MAQUINA" />
                    </xsl:attribute>
                    <xsl:element name="SETUPS">
                      <xsl:for-each select="SETUPS/SETUP">
                        <xsl:element name="SETUP">
                          <xsl:attribute name="ID">
                            <xsl:value-of select="@ID" />
                          </xsl:attribute>
                          <xsl:attribute name="NOME">
                            <xsl:value-of select="@NOME" />
                          </xsl:attribute>
                          <xsl:attribute name="NESTING">
                            <xsl:value-of select="@NESTING" />
                          </xsl:attribute>
                          <xsl:attribute name="NESTING_FINALIZADA">
                            <xsl:value-of select="@NESTING_FINALIZADA" />
                          </xsl:attribute>
                          <xsl:element name="PROGRAMAS">
                            <xsl:for-each select="PROGRAMAS/PROGRAMA">
                              <xsl:element name="PROGRAMA">
                                <xsl:attribute name="TIPO">
                                  <xsl:value-of select="@TIPO" />
                                </xsl:attribute>
                                <xsl:attribute name="CAMINHO">
                                  <xsl:value-of select="@CAMINHO" />
                                </xsl:attribute>
                                <xsl:attribute name="CODIGO">
                                  <xsl:value-of select="@CODE" />
                                </xsl:attribute>
                              </xsl:element>
                            </xsl:for-each>
                          </xsl:element>
                          <xsl:element name="COLUNAS">
                            <xsl:call-template name="GERAR_COLUNAS" />
                          </xsl:element>
                        </xsl:element>
                      </xsl:for-each>
                    </xsl:element>
                  </xsl:element>
                </xsl:for-each>
              </xsl:if>
            </xsl:if>
          </xsl:if>
        </xsl:if>
      </xsl:if>
    </xsl:element>
  </xsl:template>

  <!-- TEMPLATE GERAR_COLUNAS -->
  <xsl:template name="GERAR_COLUNAS">
    <xsl:for-each select="COLUNAS/COLUNA">
      <xsl:element name="COLUNA">
        <xsl:attribute name="CODIGO">
          <xsl:value-of select="@NOME" />
        </xsl:attribute>
        <xsl:attribute name="RESPOSTA">
          <xsl:value-of select="@VALOR" />
        </xsl:attribute>
      </xsl:element>
    </xsl:for-each>
  </xsl:template>

  <xsl:template name="GERAR_NODO_OTIMIZACAO_CORTE">
    <xsl:if test="count(ADDITIONAL_INFORMATIONS_BUILDER)  &gt; 0">
      <xsl:if test="count(ADDITIONAL_INFORMATIONS_BUILDER/PRODUCTIVE_SCRIPT)  &gt; 0 ">
        <xsl:for-each select="ADDITIONAL_INFORMATIONS_BUILDER/PRODUCTIVE_SCRIPT/OPERATION">
          <xsl:choose>
            <xsl:when test="@TYPE = 'CUT'">
              <xsl:element name="OTIMIZACAO_CORTE">
                <xsl:element name="OTIMIZACAO">
                  <xsl:attribute name="CODIGO">
                    <xsl:text>ALTURA_CORTE</xsl:text>
                  </xsl:attribute>
                  <xsl:attribute name="RESPOSTA">
                    <xsl:value-of select="PLATE_CUTTING/@Y" />
                  </xsl:attribute>
                </xsl:element>
                <xsl:element name="OTIMIZACAO">
                  <xsl:attribute name="CODIGO">
                    <xsl:text>LARGURA_CORTE</xsl:text>
                  </xsl:attribute>
                  <xsl:attribute name="RESPOSTA">
                    <xsl:value-of select="PLATE_CUTTING/@X" />
                  </xsl:attribute>
                </xsl:element>
              </xsl:element>
            </xsl:when>
          </xsl:choose>
        </xsl:for-each>
      </xsl:if>
    </xsl:if>
  </xsl:template>
</xsl:stylesheet>

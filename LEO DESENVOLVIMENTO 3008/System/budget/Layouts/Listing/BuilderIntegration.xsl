<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="xml"  encoding="utf-8"  omit-xml-declaration="no"  indent="yes" /> 
  <xsl:template match="LISTING">
    <XML_BUILDER TIPO="MCM">     
      <UNIQUE_FILEID>
        <xsl:attribute name="CODIGO">
          <xsl:value-of select="PROJECTGUID/@GUID" />
        </xsl:attribute>
      </UNIQUE_FILEID>
      <IMPORTACAO TIPO="ESTRUTURA">
        <DADOS_CLIENTES>
          <xsl:element name="LOJA">
            <xsl:for-each select="CUSTOMERSDATA/DATA">
              <xsl:if test="@ID = 'rep_nomeempresa'" >
                <xsl:attribute name="NOME">
                  <xsl:value-of select="@VALUE" />
                </xsl:attribute>
              </xsl:if>
              <xsl:if test="@ID = 'rep_enderecoempresa'" >
                <xsl:attribute name="ENDERECO">
                  <xsl:value-of select="@VALUE" />
                </xsl:attribute>
              </xsl:if>
              <xsl:if test="@ID = 'rep_bairroempresa'" >
                <xsl:attribute name="BAIRRO">
                  <xsl:value-of select="@VALUE" />
                </xsl:attribute>
              </xsl:if>
              <xsl:if test="@ID = 'rep_cepenpresa'" >
                <xsl:attribute name="CEP">
                  <xsl:value-of select="@VALUE" />
                </xsl:attribute>
              </xsl:if>
              <xsl:if test="@ID = 'rep_cidadeempresa'" >
                <xsl:attribute name="CIDADE">
                  <xsl:value-of select="@VALUE" />
                </xsl:attribute>
              </xsl:if>
              <xsl:if test="@ID = 'rep_ufempresa'" >
                <xsl:attribute name="UF">
                  <xsl:value-of select="@VALUE" />
                </xsl:attribute>
              </xsl:if>
              <xsl:if test="@ID = 'rep_telefoneempresa'" >
                <xsl:attribute name="TELEFONE">
                  <xsl:value-of select="@VALUE" />
                </xsl:attribute>
              </xsl:if>
              <xsl:if test="@ID = 'rep_emailempresa'" >
                <xsl:attribute name="EMAIL">
                  <xsl:value-of select="@VALUE" />
                </xsl:attribute>
              </xsl:if>
              <xsl:if test="@ID = 'rep_contatoempresa'" >
                <xsl:attribute name="CONTATO">
                  <xsl:value-of select="@VALUE" />
                </xsl:attribute>
              </xsl:if>
            </xsl:for-each>
          </xsl:element>
          <xsl:element name="CLIENTE_LOJA">
            <xsl:for-each select="CUSTOMERSDATA/DATA">
              <xsl:if test="@ID = 'codcliente'" >
                <xsl:attribute name="CODIGO">
                  <xsl:value-of select="@VALUE" />
                </xsl:attribute>
              </xsl:if>
              <xsl:if test="@ID = 'nomecliente'" >
                <xsl:attribute name="NOME">
                  <xsl:value-of select="@VALUE" />
                </xsl:attribute>
              </xsl:if>
              <xsl:if test="@ID = 'cpfcnpj'" >
                <xsl:attribute name="CPF_CNPJ">
                  <xsl:value-of select="@VALUE" />
                </xsl:attribute>
              </xsl:if>
              <xsl:if test="@ID = 'fone'" >
                <xsl:attribute name="TELEFONE">
                  <xsl:value-of select="@VALUE" />
                </xsl:attribute>
              </xsl:if>
              <xsl:if test="@ID = 'celular'" >
                <xsl:attribute name="CELULAR">
                  <xsl:value-of select="@VALUE" />
                </xsl:attribute>
              </xsl:if>
              <xsl:if test="@ID = 'endereco'" >
                <xsl:attribute name="ENDERECO">
                  <xsl:value-of select="@VALUE" />
                </xsl:attribute>
              </xsl:if>
              <xsl:if test="@ID = 'bairro'" >
                <xsl:attribute name="BAIRRO">
                  <xsl:value-of select="@VALUE" />
                </xsl:attribute>
              </xsl:if>
              <xsl:if test="@ID = 'cidade'" >
                <xsl:attribute name="CIDADE">
                  <xsl:value-of select="@VALUE" />
                </xsl:attribute>
              </xsl:if>
              <xsl:if test="@ID = 'cep'" >
                <xsl:attribute name="CEP">
                  <xsl:value-of select="@VALUE" />
                </xsl:attribute>
              </xsl:if>
              <xsl:if test="@ID = 'uf'" >
                <xsl:attribute name="UF">
                  <xsl:value-of select="@VALUE" />
                </xsl:attribute>
              </xsl:if>
              <xsl:if test="@ID = 'email'" >
                <xsl:attribute name="EMAIL">
                  <xsl:value-of select="@VALUE" />
                </xsl:attribute>
              </xsl:if>
              <xsl:if test="@ID = 'endentrega'" >
                <xsl:attribute name="END_ENTREGA">
                  <xsl:value-of select="@VALUE" />
                </xsl:attribute>
              </xsl:if>
              <xsl:if test="@ID = 'observacoes'" >
                <xsl:attribute name="OBSERVACAO">
                  <xsl:value-of select="@VALUE" />
                </xsl:attribute>
              </xsl:if>
            </xsl:for-each>
          </xsl:element>
        </DADOS_CLIENTES>
        <ITENS_PEDIDO>
          <xsl:for-each select="AMBIENTS/AMBIENT/CATEGORIES/CATEGORY/ITEMS/ITEM">
            <xsl:element name="ITEM">
              <xsl:attribute name="CODIGO">
                <xsl:choose>
                  <xsl:when test="string-length(normalize-space(@ITEM_BASE)) = 0" >
                    <xsl:value-of select="@REFERENCE" />
                  </xsl:when>
                  <xsl:otherwise>
                    <xsl:value-of select="@ITEM_BASE" />
                  </xsl:otherwise>
                </xsl:choose>
              </xsl:attribute>
              <xsl:attribute name="ID_PROMOB">
                <xsl:value-of select="@UNIQUEID" />
              </xsl:attribute>
              <xsl:attribute name="DESCRICAO">
                <xsl:value-of select="@DESCRIPTION" />
              </xsl:attribute>
              <xsl:call-template name="BUSCARUF"/>
              <xsl:call-template name="BUSCARFANTASMA"/>

              <xsl:call-template name="GERARKIT_AGRUPADOR"/>
              
              <!--<xsl:if test="string-length(normalize-space(@KIT_AGRUPADOR)) > 0" >
                <xsl:attribute name="KIT_AGRUPADOR">
                  <xsl:value-of select="@KIT_AGRUPADOR" />
                </xsl:attribute>
              </xsl:if>-->           
              
              <xsl:attribute name="UNIDADE">
                <xsl:value-of select="@UNIT" />
              </xsl:attribute>
              <xsl:attribute name="QUANTIDADE">
                <xsl:value-of select="@QUANTITY" />
              </xsl:attribute>
              <xsl:attribute name="PRECO_UNIT">
                <xsl:value-of select="format-number(PRICE/MARGINS/ORDER/@TOTALCOMPONENTS + PRICE/MARGINS/ORDER/@TOTAL, '#0.00')" />
              </xsl:attribute>
              <xsl:call-template name="GERARCONFIGURADO"/>
              <xsl:element name="UNIQUE_ID">
                <xsl:attribute name="CODIGO">
                  <xsl:value-of select="@GUIDBUILDER" />
                </xsl:attribute>
                <xsl:attribute name="AMBIENTGUID">
                  <xsl:value-of select="parent::node()/parent::node()/parent::node()/parent::node()/@GUID" />
                </xsl:attribute>
              </xsl:element>
              <xsl:call-template name="GERARESTRUTURA"/>
              <xsl:if test="@PRODUCTIVESCRIPT = 'Y'">
                <xsl:call-template name="GERARROTEIRO"/>
              </xsl:if>
            </xsl:element>
          </xsl:for-each>
        </ITENS_PEDIDO>
      </IMPORTACAO>
    </XML_BUILDER>
  </xsl:template>

  <!-- TEMPLATE BUSCARFANTASMA -->
  <xsl:template name="BUSCARFANTASMA">
    <xsl:if test="count(METADATAS) &gt; 0" >
      <xsl:if test="count(METADATAS/METADATA) &gt; 0" >
        <xsl:if test="METADATAS/METADATA/@ID = 'INTEGRATIONDATA'" >
          <xsl:if test="count(METADATAS/METADATA/METADATA.VALUE)  &gt; 0 " >
            <xsl:if test="count(METADATAS/METADATA/METADATA.VALUE/INTEGRATIONDATA)  &gt; 0" >
              <xsl:if test="count(METADATAS/METADATA/METADATA.VALUE/INTEGRATIONDATA/ATTRIBUTES)  &gt; 0 " >
                <xsl:for-each select="METADATAS/METADATA/METADATA.VALUE/INTEGRATIONDATA/ATTRIBUTES/ATTRIBUTE">
                  <xsl:if test="@NAME = 'FANTASMA'">
                    <xsl:attribute name="FANTASMA">
                      <xsl:value-of select="@VALUE"/>
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

  <!-- TEMPLATE BUSCARUF -->
  <xsl:template name="BUSCARUF">
    <xsl:if test="count(METADATAS) &gt; 0" >
      <xsl:if test="count(METADATAS/METADATA) &gt; 0" >
        <xsl:if test="METADATAS/METADATA/@ID = 'INTEGRATIONDATA'" >
          <xsl:if test="count(METADATAS/METADATA/METADATA.VALUE)  &gt; 0 " >
            <xsl:if test="count(METADATAS/METADATA/METADATA.VALUE/INTEGRATIONDATA)  &gt; 0" >
              <xsl:if test="count(METADATAS/METADATA/METADATA.VALUE/INTEGRATIONDATA/ATTRIBUTES)  &gt; 0 " >
                <xsl:for-each select="METADATAS/METADATA/METADATA.VALUE/INTEGRATIONDATA/ATTRIBUTES/ATTRIBUTE">
                  <xsl:if test="@NAME = 'UF'">
                    <xsl:attribute name="UF">
                      <xsl:value-of select="@VALUE"/>
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

  <!-- TEMPLATE GERAR ESTRUTURA -->
  <xsl:template name="GERARESTRUTURA">
    <ESTRUTURA>
      <xsl:for-each select="ITEMS/ITEM">
        <xsl:if test="@FAMILY != 'Roteiro Produtivo'" >
          <xsl:element name="ITEM">
            <xsl:attribute name="CODIGO">
              <xsl:choose>
                <xsl:when test="string-length(normalize-space(@ITEM_BASE)) = 0" >
                  <xsl:value-of select="@REFERENCE" />
                </xsl:when>
                <xsl:otherwise>
                  <xsl:value-of select="@ITEM_BASE" />
                </xsl:otherwise>
              </xsl:choose>
            </xsl:attribute>
            <xsl:attribute name="DESCRICAO">
              <xsl:value-of select="@DESCRIPTION" />
            </xsl:attribute>
            <xsl:call-template name="BUSCARFANTASMA"/>

            <!--<xsl:if test="string-length(normalize-space(@KIT_AGRUPADOR)) > 0" >
              <xsl:attribute name="KIT_AGRUPADOR">
                <xsl:value-of select="@KIT_AGRUPADOR" />
              </xsl:attribute>
            </xsl:if>-->
            <xsl:call-template name="GERARKIT_AGRUPADOR"/>

            <xsl:attribute name="UNIDADE">
              <xsl:value-of select="@UNIT" />
            </xsl:attribute>
            <xsl:attribute name="QUANTIDADE">
              <xsl:value-of select="@QUANTITY" />
            </xsl:attribute>
            <xsl:attribute name="PRECO_UNIT">
              <xsl:value-of select="format-number(PRICE/MARGINS/ORDER/@TOTALCOMPONENTS + PRICE/MARGINS/ORDER/@TOTAL, '#0.00')" />
            </xsl:attribute>
            <xsl:call-template name="GERARCONFIGURADO"/>
            <xsl:call-template name="GERARESTRUTURA"/>
            <xsl:if test="@PRODUCTIVESCRIPT = 'Y'">
              <xsl:call-template name="GERARROTEIRO"/>
            </xsl:if>
          </xsl:element>
        </xsl:if>
      </xsl:for-each>
    </ESTRUTURA>
  </xsl:template>

  <!-- TEMPLATE GERARCONFIGURADO -->
  <xsl:template name="GERARCONFIGURADO">
    <xsl:if test="count(METADATAS) &gt; 0" >
      <xsl:if test="count(METADATAS/METADATA) &gt; 0" >
        <xsl:if test="METADATAS/METADATA/@ID = 'INTEGRATIONDATA'" >
          <xsl:if test="count(METADATAS/METADATA/METADATA.VALUE)  &gt; 0 " >
            <xsl:if test="count(METADATAS/METADATA/METADATA.VALUE/INTEGRATIONDATA)  &gt; 0" >
              <xsl:if test="count(METADATAS/METADATA/METADATA.VALUE/INTEGRATIONDATA/ATTRIBUTES)  &gt; 0 " >
                <xsl:element name="CONFIGURADO">
                  <xsl:call-template name="GERARATRIBUTOS"/>
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
      <xsl:if test="@NAME != 'UF' and @NAME != 'FANTASMA' and @NAME != 'ITEM_BASE' and @NAME != 'KIT_AGRUPADOR' ">
        <xsl:element name="CARACTERISTICA">
          <xsl:attribute name="CODIGO">
            <xsl:value-of select="@NAME"/>
          </xsl:attribute>
          <xsl:attribute name="RESPOSTA">
            <xsl:value-of select="@VALUE"/>
          </xsl:attribute>
        </xsl:element>
      </xsl:if>
    </xsl:for-each>
  </xsl:template>

  <xsl:template name="GERARKIT_AGRUPADOR">
    <xsl:if test="count(METADATAS) &gt; 0" >
      <xsl:if test="count(METADATAS/METADATA) &gt; 0" >
        <xsl:if test="METADATAS/METADATA/@ID = 'INTEGRATIONDATA'" >
          <xsl:if test="count(METADATAS/METADATA/METADATA.VALUE)  &gt; 0 " >
            <xsl:if test="count(METADATAS/METADATA/METADATA.VALUE/INTEGRATIONDATA)  &gt; 0" >
              <xsl:if test="count(METADATAS/METADATA/METADATA.VALUE/INTEGRATIONDATA/ATTRIBUTES)  &gt; 0 " >
                <xsl:for-each select="METADATAS/METADATA/METADATA.VALUE/INTEGRATIONDATA/ATTRIBUTES/ATTRIBUTE">
                  <xsl:if test="@NAME = 'KIT_AGRUPADOR'">
                    <xsl:attribute name="KIT_AGRUPADOR">
                      <xsl:value-of select="@VALUE"/>
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
    <xsl:element name="ROTEIRO">
      <xsl:for-each select="PRODUCTIVESCRIPT/OPERATION">
        <xsl:element name="OPERACAO">
          <xsl:attribute name="ORDEM">
            <xsl:value-of select="@ORDER" />
          </xsl:attribute>
          <xsl:attribute name="CODIGO">
            <xsl:value-of select="@REFERENCE" />
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
            <xsl:value-of select="@PRICEUNIT" />
          </xsl:attribute>
        </xsl:element>
      </xsl:for-each>
    </xsl:element>
  </xsl:template>

</xsl:stylesheet>

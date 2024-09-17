<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="text" />
  <xsl:variable name="espaco" select="'                                                  '"/>
  <xsl:decimal-format name="formato" decimal-separator='.' />

  <xsl:template match="LISTING">

    <xsl:call-template name="GerarCabecalho"/>

    <xsl:for-each select="AMBIENTS/AMBIENT">
      <xsl:for-each select="CATEGORIES/CATEGORY">
        <xsl:call-template name="GerarItens"/>
      </xsl:for-each>
    </xsl:for-each>

    <xsl:call-template name="GerarRodape"/>

  </xsl:template>

  <!-- TEMPLATE QUEBRAR LINHA -->
  <xsl:template name="QuebrarLinha">
    <xsl:text>&#13;&#10;</xsl:text>
  </xsl:template>

  <!-- TEMPLATE GERAR CABECALHO -->
  <xsl:template name="GerarCabecalho">
	    
      <xsl:value-of select="substring(concat('ID do Projeto = ', $espaco),1,17)"/>    
	  <xsl:value-of select="PROJECTGUID/@GUID"/>
	  
	  <xsl:call-template name="QuebrarLinha"/>

    <xsl:value-of select="substring(concat('Promob = ', $espaco),1,12)"/>    
	  <xsl:value-of select="concat(ABOUTPROMOB/@VERSION,'.', ABOUTPROMOB/@REVISION, '.',ABOUTPROMOB/@BUILD)"/>

    <xsl:call-template name="QuebrarLinha"/>
		
    <xsl:value-of select="substring(concat('System = ', $espaco),1,12)"/>
    <xsl:value-of select="ABOUTPROMOB/@SYSTEMREVISION"/>
    <xsl:call-template name="QuebrarLinha"/>

    <xsl:value-of select="substring(concat('Loja = ', $espaco),1,12)"/>
    <xsl:value-of select="substring(concat(CUSTOMERSDATA/DATA[@ID='rep_nomeempresa']/@VALUE, $espaco),1,70)"/>
    <xsl:call-template name="QuebrarLinha"/>

    <xsl:value-of select="substring(concat('Cliente = ', $espaco),1,12)"/>
    <xsl:value-of select="substring(concat(CUSTOMERSDATA/DATA[@ID='nomecliente']/@VALUE, $espaco),1,70)"/>
    <xsl:call-template name="QuebrarLinha"/>

    <xsl:value-of select="substring(concat('Endereco = ', $espaco),1,12)"/>
    <xsl:value-of select="substring(concat(CUSTOMERSDATA/DATA[@ID='endereco']/@VALUE, $espaco),1,70)"/>
    <xsl:call-template name="QuebrarLinha"/>

    <xsl:value-of select="substring(concat('Bairro = ', $espaco),1,12)"/>
    <xsl:value-of select="substring(concat(CUSTOMERSDATA/DATA[@ID='bairro']/@VALUE, $espaco),1,70)"/>
    <xsl:call-template name="QuebrarLinha"/>

    <xsl:value-of select="substring(concat('Fone = ', $espaco),1,12)"/>
    <xsl:value-of select="substring(concat(CUSTOMERSDATA/DATA[@ID='fone']/@VALUE, $espaco),1,70)"/>
    <xsl:call-template name="QuebrarLinha"/>

    <xsl:value-of select="substring(concat('CPF = ', $espaco),1,12)"/>
    <xsl:value-of select="substring(concat(CUSTOMERSDATA/DATA[@ID='cpfcnpj']/@VALUE, $espaco),1,70)"/>
    <xsl:call-template name="QuebrarLinha"/>

    <xsl:value-of select="substring(concat('EEntrega = ', $espaco),1,12)"/>
    <xsl:value-of select="substring(concat(CUSTOMERSDATA/DATA[@ID='endereco']/@VALUE, $espaco),1,70)"/>
    <xsl:call-template name="QuebrarLinha"/>
    <xsl:call-template name="QuebrarLinha"/>
  </xsl:template>

  <!-- TEMPLATE GERAR RODAPE -->
  <xsl:template name="GerarRodape">

<xsl:call-template name="QuebrarLinha"/>
    <xsl:value-of select="substring(concat('Total = ', $espaco),1,13)"/>

    <xsl:if test="count(TOTALPRICES/MARGINS/ORDER) &gt; 0" >
      <xsl:variable name="valor" select="translate(TOTALPRICES/MARGINS/ORDER/@VALUE, ',', '.')" />
      <xsl:value-of select="substring( concat( format-number($valor, '#####0.00', 'formato'), $espaco), 1,10)"/>
    </xsl:if>
    <xsl:if test="count(TOTALPRICES/MARGINS/ORDER) = 0" >
      0,00
    </xsl:if>

  </xsl:template>

  <!-- TEMPLATE GERAR ITENS -->
  <xsl:template name="GerarItens">

    <xsl:for-each select="ITEMS/ITEM">
      <xsl:call-template name="GerarItem"/>
    </xsl:for-each>

  </xsl:template>

  <!-- TEMPLATE GERAR ITEM -->
  <xsl:template name="GerarItem">
    <xsl:if test="name(parent::node()/parent::node())='CATEGORY'">
      <xsl:variable name="numero">
        <xsl:number level="any"/>
      </xsl:variable>

      <xsl:value-of select="substring(concat($numero, $espaco),1,6)"/>
      <xsl:value-of select="substring(concat(@QUANTITY*@REPETITION, $espaco),1,8)"/>

      <xsl:if test="count(REFERENCES/CODE) &gt; 0" >
        <xsl:value-of select="substring(concat(REFERENCES/CODE/@REFERENCE, $espaco),1,10)"/>
      </xsl:if>
      <xsl:if test="count(REFERENCES/CODE) = 0" >
        <xsl:if test="count(REFERENCES/COMPLETE) &gt; 0" >
          <xsl:value-of select="substring(concat(REFERENCES/COMPLETE/@REFERENCE, $espaco),1,10)"/>
        </xsl:if>
        <xsl:if test="count(REFERENCES/COMPLETE) = 0" >
          <xsl:value-of select="substring($espaco,1,10)"/>
        </xsl:if>
      </xsl:if>

      <xsl:variable name="desc" select="substring(@DESCRIPTION,1,33)" />
      <xsl:value-of select="substring(concat($desc, $espaco),1,34)"/>

      <xsl:if test="count(PRICE/MARGINS/BUDGET) &gt; 0" >
        <xsl:variable name="valor" select="translate(PRICE/MARGINS/BUDGET/@TOTAL, ',', '.')" />
        <xsl:variable name="valorComponentes" select="translate(PRICE/MARGINS/BUDGET/@TOTALCOMPONENTS, ',', '.')" />
        <xsl:value-of select="substring( concat( format-number($valor + $valorComponentes, '####0.00', 'formato'), $espaco), 1,9)"/>
      </xsl:if>
      <xsl:if test="count(PRICE/MARGINS/BUDGET) = 0" >
        <xsl:text>0,00</xsl:text>
      </xsl:if>

      <xsl:if test="count(PRICE/MARGINS/ORDER) &gt; 0" >
        <xsl:variable name="valor" select="translate(PRICE/MARGINS/ORDER/@TOTAL, ',', '.')" />
        <xsl:variable name="valorComponentes" select="translate(PRICE/MARGINS/ORDER/@TOTALCOMPONENTS, ',', '.')" />
        <xsl:value-of select="substring( concat( format-number($valor + $valorComponentes, '####0.00', 'formato'), $espaco), 1,9)"/>
      </xsl:if>
      <xsl:if test="count(PRICE/MARGINS/ORDER) = 0" >
        <xsl:text>0,00</xsl:text>
      </xsl:if>

	<xsl:choose>     
		<xsl:when test="PRICE/@TABLE &gt; 0">         
			<xsl:variable name="valorTable" select="translate(PRICE/@TABLE, ',', '.')" />	
			<xsl:value-of select="substring( concat( format-number($valorTable, '####0.00', 'formato'), $espaco), 1,9)"/>			
		</xsl:when>     
		<xsl:otherwise>         
			<xsl:variable name="valorTotal" select="translate(PRICE/@TOTALCOMPONENTS, ',', '.')" />
			<xsl:value-of select="substring( concat( format-number($valorTotal, '####0.00', 'formato'), $espaco), 1,9)"/>			
		</xsl:otherwise> 
	</xsl:choose> 	      

      <xsl:variable name="descriptionAmbient" select="parent::node()/parent::node()/parent::node()/parent::node()/@DESCRIPTION" />
      <xsl:value-of select="substring(concat($descriptionAmbient, $espaco),1,40)"/>

      <xsl:variable name="uniqueId" select="@UNIQUEID" />
      <xsl:value-of select="substring(concat($uniqueId, $espaco),1,14)"/>

      <xsl:variable name="guid" select="@GUIDBUILDER" />
      <xsl:value-of select="substring(concat($guid, $espaco),1,40)"/>

      <xsl:variable name="familia" select="substring(@FAMILY,1,15)" />
      <xsl:value-of select="substring(concat($familia, $espaco),1,15)"/>
			
      <xsl:variable name="ambientguid" select="parent::node()/parent::node()/parent::node()/parent::node()/@GUID" />
      <xsl:value-of select="substring(concat($ambientguid, $espaco),1,40)"/>
      
      <xsl:if test="count(REFERENCES/DIMENSION) &gt; 0" >
        <xsl:value-of select="REFERENCES/DIMENSION/@REFERENCE"/>
        <xsl:if test="count(REFERENCES/MODEL) &gt; 0" >
          <xsl:text>.</xsl:text>
        </xsl:if>
      </xsl:if>

      <xsl:if test="count(REFERENCES/MODEL) &gt; 0" >
        <xsl:value-of select="REFERENCES/MODEL/@REFERENCE"/>
      </xsl:if>

      <xsl:if test="count(REFERENCES/MODEL) &gt; 0" >
        <xsl:value-of select="REFERENCES/MODEL/@REFERENCE"/>
      </xsl:if>
      
      <xsl:call-template name="QuebrarLinha"/>

      <xsl:if test="count(ITEMS) != 0" >
        <xsl:call-template name="GerarItens"/>
      </xsl:if>
    </xsl:if>
  </xsl:template>

</xsl:stylesheet>

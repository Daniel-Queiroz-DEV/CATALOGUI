<?xml version="1.0"?>
	<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<!--
		<summary>
		Metodo para fazer replace de string.
		</summary>
		<param name="text">Texto onde será feito a pesquisa.</param>
		<param name="oldValue">Texto a ser trocado.</param>
		<param name="newValue">Texto para trocar por todas os <c>oldValue</c>.</param>
		<returns>Retorna o texto</returns>
	-->
	<xsl:template name="replace-string">
		<xsl:param name="text"/>
		<xsl:param name="oldValue"/>
		<xsl:param name="newValue"/>
		
		<xsl:choose>
			<xsl:when test="contains($text,$oldValue)">
				<xsl:value-of select="substring-before($text,$oldValue)"/>
				<xsl:value-of select="$newValue"/>
				<xsl:call-template name="replace-string">
					<xsl:with-param name="text" select="substring-after($text,$oldValue)"/>
					<xsl:with-param name="oldValue" select="$oldValue"/>
					<xsl:with-param name="newValue" select="$newValue"/>
				</xsl:call-template>
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="$text"/>
			</xsl:otherwise>
		</xsl:choose>
		
	</xsl:template>	
	
	<xsl:template name="substring-before-last">
		<xsl:param name="text"/>
		<xsl:param name="delimiter"/>		
		<xsl:choose>
			<xsl:when test="contains($text, $delimiter)">
				<xsl:variable name="valor" select="substring-before($text,$delimiter)"/>	
				
				
				<xsl:if test="string-length($valor) &gt; 30">
					<xsl:value-of select="concat(substring($valor,1,30),'...')"/>	
				</xsl:if>
				<xsl:if test="string-length($valor) &lt;= 30">
					<xsl:value-of select="$valor"/>	
				</xsl:if>
				
				<xsl:choose>
					<xsl:when test="contains(substring-after($text,$delimiter),$delimiter)">
						<xsl:value-of select="$delimiter"/>
					</xsl:when>
				</xsl:choose>
				<xsl:call-template name="substring-before-last">
					<xsl:with-param name="text" select="substring-after($text,$delimiter)"/>
					<xsl:with-param name="delimiter" select="$delimiter"/>
				</xsl:call-template>
			</xsl:when>
		</xsl:choose>
	</xsl:template>

	<xsl:template match="RECENTQUEUE">
		<link href="..\..\System\startPage\_includes\estilos.css" rel="stylesheet" type="text/css"/>
		<script language="javascript" src="..\..\System\startPage\_includes\funcoes.js"></script>
		<body margin="0px">
		<div style="width:250px;" class="ellipsis" >
			<xsl:apply-templates select="RECENT">
			<xsl:sort select="@DATE" order="descending"/>
			</xsl:apply-templates>
		</div>
		</body>
	</xsl:template>
	
	<xsl:template match="RECENT">

		<a><xsl:attribute name="href">javascript:external.InvokeVSA('GestorDocumentos','AbrirSolucao','<xsl:value-of select="@FOLDER"/><xsl:value-of select="@FILE"/>');</xsl:attribute>
			<xsl:attribute name="title"><xsl:value-of select="@FOLDER"/><xsl:value-of select="@FILE"/></xsl:attribute>
				<xsl:call-template name="substring-before-last">
					<xsl:with-param name="text" select="@FILE"/>
					<xsl:with-param name="delimiter" select="'.promob'"/>
				</xsl:call-template>
				</a>
		<br/>
		
	</xsl:template>
	
</xsl:stylesheet>
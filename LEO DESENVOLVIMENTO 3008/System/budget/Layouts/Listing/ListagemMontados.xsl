<?xml version="1.0" encoding="utf-8"?>
	<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
		<xsl:decimal-format name="formato" decimal-separator="," grouping-separator="." />
		<xsl:output method="html"/>
		<xsl:template match="LISTING">
			<html generator="ProMob.Cadastro">
				<head>
					<title>Listagem Módulos Montados</title>
					<link href="%pastasistema%\Budget\Layouts\Listing\Orcamento.css" rel="stylesheet" type="text/css"/>
				</head>
				<body>
					<table align="center" border="0">
						<thead id="HEADER">
							<tr>
								<td align="center">
									<table style="BORDER-BOTTOM: #cecece 1px solid; BORDER-LEFT: #cecece 1px solid; BORDER-TOP: #cecece 1px solid; BORDER-RIGHT: #cecece 1px solid" border="0" width="100%" bgcolor="#eeeeee">
										<tbody>
											<tr>
												<td height="70">
													<img style="MARGIN-RIGHT: 300px" border="0" hspace="10" alt="" align="left" src="%pastasistema%/identity/logocliente.png">
													</img> 
												</td>
												<td width="1%">
													<img border="0" alt="" align="left" src="%pastasistema%/identity/logopromob.gif">
													</img> 
												</td>
											</tr>
										</tbody>
									</table>
									<table border="0" width="630">
										<tbody>
											<tr>
												<td style="FONT-FAMILY: Arial; COLOR: #808080; FONT-SIZE: 12px; FONT-WEIGHT: bold; PADDING-TOP: 20px" width="400">Data: 
												<xsl:value-of select="@DATE" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" />
													<span style="MARGIN: 0px; WIDTH: 10px">
													</span> Hora: 
												<xsl:value-of select="@HOUR" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" />
												</td>
												<td style="FONT-FAMILY: Arial; COLOR: #808080; FONT-SIZE: 12px; FONT-WEIGHT: bold; PADDING-TOP: 20px" align="right">Listagem 
												</td>
											</tr>
										</tbody>
									</table>
								</td>
							</tr>
						</thead>

						<tbody>
						<tr id="CUSTOMERDATA">
							<td valign="top">
								<table style="BORDER-BOTTOM: #818181 1px solid; BORDER-LEFT: #818181 1px solid; BORDER-COLLAPSE: collapse; FONT-FAMILY: Tahoma; FONT-SIZE: 12px; BORDER-TOP: #818181 1px solid; BORDER-RIGHT: #818181 1px solid" border="0" cellspacing="0" cellpadding="0" width="100%">
									<tbody>
										<tr>
											<td style="BORDER-BOTTOM: #818181 1px solid; PADDING-BOTTOM: 5px; PADDING-LEFT: 5px; PADDING-RIGHT: 5px; COLOR: #808080; FONT-SIZE: 16px; PADDING-TOP: 5px" bgcolor="#eeeeee">
												<b>Dados do cliente: 
												</b>
											</td>
										</tr>
										<tr>
											<td style="PADDING-BOTTOM: 5px; LINE-HEIGHT: 20px; PADDING-LEFT: 5px; PADDING-RIGHT: 5px; PADDING-TOP: 5px" height="22" width="592">
												<table border="0" cellspacing="5" cellpadding="2" width="100%">
													<tbody>
														<tr>
															<td style="FONT-SIZE: 10px">
																<b>
																	<span style="COLOR: #535353">Nome: 
																	</span>
																</b>
															<xsl:value-of select="CUSTOMERSDATA/DATA[@ID='nomecliente']/@VALUE" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" /> 
															</td>
															<td style="FONT-SIZE: 10px">
																<b>
																	<span style="COLOR: #535353">CPF: 
																	</span>
																</b>
															<xsl:value-of select="CUSTOMERSDATA/DATA[@ID='cpfcnpj']/@VALUE" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" /> 
															</td>
														</tr>
														<tr>
															<td style="FONT-SIZE: 10px">
																<b>
																	<span style="COLOR: #535353">Endereço: 
																	</span>
																</b>
															<xsl:value-of select="CUSTOMERSDATA/DATA[@ID='endereco']/@VALUE" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" /> 
															</td>
															<td style="FONT-SIZE: 10px">
																<b>
																	<span style="COLOR: #535353">CEP: 
																	</span>
																</b>
															<xsl:value-of select="CUSTOMERSDATA/DATA[@ID='cep']/@VALUE" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" /> 
															</td>
														</tr>
														<tr>
															<td style="FONT-SIZE: 10px">
																<b>
																	<span style="COLOR: #535353">Bairro: 
																	</span>
																</b>
															<xsl:value-of select="CUSTOMERSDATA/DATA[@ID='bairro']/@VALUE" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" /> 
															</td>
															<td style="FONT-SIZE: 10px">
																<b>
																	<span style="COLOR: #535353">UF: 
																	</span>
																</b>
															<xsl:value-of select="CUSTOMERSDATA/DATA[@ID='uf']/@VALUE" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" /> 
															</td>
														</tr>
														<tr>
															<td style="FONT-SIZE: 10px">
																<b>
																	<span style="COLOR: #535353">End. Entrega: 
																	</span>
																</b>
															<xsl:value-of select="CUSTOMERSDATA/DATA[@ID='endentrega']/@VALUE" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" /> 
															</td>
															<td style="FONT-SIZE: 10px">
																<b>
																	<span style="COLOR: #535353">Cidade: 
																	</span>
																</b>
															<xsl:value-of select="CUSTOMERSDATA/DATA[@ID='cidade']/@VALUE" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" /> 
															</td>
														</tr>
														<tr>
															<td style="FONT-SIZE: 10px">
																<b>
																	<span style="COLOR: #535353">Telefone: 
																	</span>
																</b>
															<xsl:value-of select="CUSTOMERSDATA/DATA[@ID='fone']/@VALUE" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" /> 
															</td>
															<td style="FONT-SIZE: 10px">
																<b>
																	<span style="COLOR: #535353">Celular: 
																	</span>
																</b>
															<xsl:value-of select="CUSTOMERSDATA/DATA[@ID='celular']/@VALUE" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" /> 
															</td>
														</tr>
														<tr>
															<td style="FONT-SIZE: 10px" colspan="2">
																<b>
																	<span style="COLOR: #535353">E-mail: 
																	</span>
																</b>
															<xsl:value-of select="CUSTOMERSDATA/DATA[@ID='email']/@VALUE" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" /> 
															</td>
														</tr>
													</tbody>
												</table>
											</td>
										</tr>
									</tbody>
								</table>
							</td>
						</tr>


						<tr id="BODY" templatetext="Módulos montados por categoria">
							<td valign="top">
								<xsl:for-each xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="AMBIENTS/AMBIENT">
									<xsl:if test="count(CATEGORIES/CATEGORY) &gt; 0">
										<table border="0" cellspacing="0" cellpadding="0" width="100%">
											<tbody>
												<tr>
													<td style="COLOR: #808080; FONT-SIZE: 12px" colspan="8">
														<b>
														<xsl:value-of select="@DESCRIPTION" /> 
														</b>
													</td>
												</tr>
											</tbody>
										</table>
										<xsl:for-each select="CATEGORIES/CATEGORY">
											<table style="BORDER-BOTTOM: #cacaca 1px solid; BORDER-LEFT: #cacaca 1px solid; MARGIN-TOP: 5px; BORDER-COLLAPSE: collapse; BORDER-TOP: #cacaca 1px solid; BORDER-RIGHT: #cacaca 1px solid" border="1" cellspacing="0" cellpadding="0" width="100%">
												<thead>
													<tr height="20">
														<td style="PADDING-LEFT: 5px" colspan="8">- 
														<xsl:value-of select="@DESCRIPTION" />
														</td>
													</tr>
													<tr id="columns" bgcolor="#e9e9e9">
														<th id="item" height="30" width="4%">
															<b>Item 
															</b>
														</th>
														<th id="repetition" width="6%">
															<b>Rep 
															</b>
														</th>
														<th id="quantity" width="7%">
															<b>Qtd 
															</b>
														</th>
														<th id="reference" width="31%">
															<b>Referência 
															</b>
														</th>
														<th id="description" width="37%">
															<b>Descrição 
															</b>
														</th>
														<th id="size" width="15%">
															<b>Dimensões 
															</b>
														</th>
													</tr>
												</thead>
												<xsl:call-template name="PercorrerItens">
													<xsl:with-param select="0" name="nivel">
													</xsl:with-param>
												</xsl:call-template>
												<tbody>
												</tbody>
											</table>
											<br>
											</br>
										</xsl:for-each>
									</xsl:if>
								</xsl:for-each>
							</td>
						</tr>






						</tbody>
						<tfoot id="FOOTER">
							<tr>
								<td align="center">
									<br>
										<br>
											<b>
												<span style="COLOR: #535353">Razão social: 
												</span>
											</b>
											<span style="MARGIN: 0px; WIDTH: 5px">
											</span>
										<xsl:value-of select="CUSTOMERSDATA/DATA[@ID='rep_nomeempresa']/@VALUE" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" /> 
											<span style="MARGIN: 0px; WIDTH: 10px">
											</span>| 
											<span style="MARGIN: 0px; WIDTH: 10px">
											</span>
											<b>
												<span style="COLOR: #535353">Endereço: 
												</span>
											</b>
											<span style="MARGIN: 0px; WIDTH: 5px">
											</span>
										<xsl:value-of select="CUSTOMERSDATA/DATA[@ID='rep_enderecoempresa']/@VALUE" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" />
											<span style="MARGIN: 0px; WIDTH: 10px">
											</span> | 
											<span style="MARGIN: 0px; WIDTH: 10px">
											</span>
											<b>
												<span style="COLOR: #535353">Telefone: 
												</span>
											</b>
											<span style="MARGIN: 0px; WIDTH: 5px">
											</span>
										<xsl:value-of select="CUSTOMERSDATA/DATA[@ID='rep_telefoneempresa']/@VALUE" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" /> 
										</br>
									</br>
								</td>
							</tr>
							<tr>
								<td align="center">©Promob Studio. Todos os direitos reservados 
								</td>
							</tr>
						</tfoot>

					</table>
				</body>
			</html>
		</xsl:template>
<!--template="BODY"-->
<xsl:template name="PercorrerItens" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:param name="nivel" />
  <xsl:param name="espacos" />
  <xsl:if test="count(ITEMS) &gt; 0">
    <xsl:for-each select="ITEMS/ITEM">
      <xsl:call-template name="GerarItem">
        <xsl:with-param name="nivel" select="$nivel" />
        <xsl:with-param name="espacos" select="$espacos" />
      </xsl:call-template>
    </xsl:for-each>
  </xsl:if>
</xsl:template>
<xsl:template name="GerarItem" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:param name="nivel" />
  <xsl:param name="espacos" />
  <xsl:if test="name(parent::node()/parent::node())='CATEGORY'">
    <tbody>
      <td height="25" align="center" style="padding-left:1px;">
        <xsl:number level="any" />
      </td>
      <td align="center">
        <xsl:value-of select="@REPETITION" />
      </td>
      <td align="center">
        <xsl:value-of select="@QUANTITY" />
        <xsl:text> </xsl:text>
        <xsl:value-of select="@UNIT" />
      </td>
      <td>
        <xsl:text> </xsl:text>
        <xsl:value-of select="@REFERENCE" />
      </td>
      <td width="300">
        <xsl:text> </xsl:text>
        <xsl:value-of disable-output-escaping="yes" select="$espacos" />
        <xsl:value-of select="@DESCRIPTION" />
      </td>
      <td align="center">
        <xsl:value-of select="@TEXTDIMENSION" />
      </td>
    </tbody>
  </xsl:if>
  <xsl:if test="count(ITEMS) &gt; 0">
    <xsl:call-template name="PercorrerItens">
      <xsl:with-param name="nivel" select="$nivel + 1" />
      <xsl:with-param name="espacos" select="concat($espacos, '&lt;span style=&quot;margin:0;width:15px&quot;&gt;&lt;/span &gt;')" />
    </xsl:call-template>
  </xsl:if>
</xsl:template>
<!--/template=-->

	</xsl:stylesheet>

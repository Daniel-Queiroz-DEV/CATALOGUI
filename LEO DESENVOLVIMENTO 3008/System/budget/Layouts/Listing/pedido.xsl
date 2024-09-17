<?xml version="1.0" encoding="utf-8"?>
	<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
		<xsl:decimal-format name="formato" decimal-separator="," grouping-separator="." />
		<xsl:output method="html"/>
		<xsl:template match="LISTING">
			<html generator="ProMob.Cadastro">
				<head>
					<title>Pedido</title>
					<link href="%pastasistema%\Budget\Layouts\Listing\Orcamento.css" rel="stylesheet" type="text/css"/>
				</head>
				<body>
					<table align="center" border="0">
						<thead id="HEADER">
							<tr>
								<td align="center">
									<table style="BORDER-TOP: #cecece 1px solid; BORDER-RIGHT: #cecece 1px solid; BORDER-BOTTOM: #cecece 1px solid; BORDER-LEFT: #cecece 1px solid" width="100%" bgcolor="#eeeeee" border="0">
										<tbody>
											<tr>
												<td height="70">
													<img border="0" hspace="10" alt="" src="%pastasistema%/identity/logocliente.png" align="left">
													</img> 
												</td>
												<td wifth="1%">
													<img border="0" alt="" src="%pastasistema%/identity/logopromob.png" align="left">
													</img> 
												</td>
											</tr>
										</tbody>
									</table>
									<table width="630" border="0">
										<tbody>
											<tr>
												<td style="FONT-SIZE: 12px; FONT-FAMILY: Arial; FONT-WEIGHT: bold; COLOR: #808080; PADDING-TOP: 20px" width="400">Date: 
												<xsl:value-of select="@DATE" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" />
													<span style="WIDTH: 10px; MARGIN: 0px">
													</span> Time: 
												<xsl:value-of select="@HOUR" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" />
												</td>
												<td style="FONT-SIZE: 12px; FONT-FAMILY: Arial; FONT-WEIGHT: bold; COLOR: #808080; PADDING-TOP: 20px" align="right">Pedido 
												</td>
											</tr>
										</tbody>
									</table>
								</td>
							</tr>
						</thead>

						<tbody>
						<tr id="CUSTOMERDATA">
							<td align="center">
								<table style="FONT-SIZE: 12px; BORDER-TOP: #cecece 1px solid; FONT-FAMILY: Tahoma; BORDER-RIGHT: #cecece 1px solid; BORDER-COLLAPSE: collapse; BORDER-BOTTOM: #cecece 1px solid; BORDER-LEFT: #cecece 1px solid" cellspacing="0" cellpadding="0" width="100%" border="0">
									<tbody>
										<tr>
											<td style="FONT-SIZE: 16px; BORDER-BOTTOM: #818181 1px solid; COLOR: #808080; PADDING-BOTTOM: 5px; PADDING-TOP: 5px; PADDING-LEFT: 5px; PADDING-RIGHT: 5px" bgcolor="#eeeeee">
												<b>Dados do cliente: 
												</b>
											</td>
										</tr>
										<tr>
											<td style="PADDING-BOTTOM: 5px; PADDING-TOP: 5px; PADDING-LEFT: 5px; LINE-HEIGHT: 20px; PADDING-RIGHT: 5px" height="22" width="592">
												<table cellspacing="5" cellpadding="2" width="100%" border="0">
													<tbody>
														<tr>
															<td style="FONT-SIZE: 10px">
																<b>
																	<span style="COLOR: #535353">Name: 
																	</span>
																</b>
															<xsl:value-of select="CUSTOMERSDATA/DATA[@ID='nomecliente']/@VALUE" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" /> 
															</td>
															<td style="FONT-SIZE: 10px">
																<b>
																	<span style="COLOR: #535353">ID: 
																	</span>
																</b>
															<xsl:value-of select="CUSTOMERSDATA/DATA[@ID='cpfcnpj']/@VALUE" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" /> 
															</td>
														</tr>
														<tr>
															<td style="FONT-SIZE: 10px">
																<b>
																	<span style="COLOR: #535353">Address: 
																	</span>
																</b>
															<xsl:value-of select="CUSTOMERSDATA/DATA[@ID='endereco']/@VALUE" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" /> 
															</td>
															<td style="FONT-SIZE: 10px">
																<b>
																	<span style="COLOR: #535353">Zip Code: 
																	</span>
																</b>
															<xsl:value-of select="CUSTOMERSDATA/DATA[@ID='cep']/@VALUE" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" /> 
															</td>
														</tr>
														<tr>
															<td style="FONT-SIZE: 10px">
																<b>
																	<span style="COLOR: #535353">District: 
																	</span>
																</b>
															<xsl:value-of select="CUSTOMERSDATA/DATA[@ID='bairro']/@VALUE" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" /> 
															</td>
															<td style="FONT-SIZE: 10px">
																<b>
																	<span style="COLOR: #535353">State: 
																	</span>
																</b>
															<xsl:value-of select="CUSTOMERSDATA/DATA[@ID='uf']/@VALUE" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" /> 
															</td>
														</tr>
														<tr>
															<td style="FONT-SIZE: 10px">
																<b>
																	<span style="COLOR: #535353">Shipping Address: 
																	</span>
																</b>
															<xsl:value-of select="CUSTOMERSDATA/DATA[@ID='endentrega']/@VALUE" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" /> 
															</td>
															<td style="FONT-SIZE: 10px">
																<b>
																	<span style="COLOR: #535353">City: 
																	</span>
																</b>
															<xsl:value-of select="CUSTOMERSDATA/DATA[@ID='cidade']/@VALUE" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" /> 
															</td>
														</tr>
														<tr>
															<td style="FONT-SIZE: 10px">
																<b>
																	<span style="COLOR: #535353">Phone: 
																	</span>
																</b>
															<xsl:value-of select="CUSTOMERSDATA/DATA[@ID='fone']/@VALUE" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" /> 
															</td>
															<td style="FONT-SIZE: 10px">
																<b>
																	<span style="COLOR: #535353">Cell Phone: 
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


						<tr id="BODY">
							<td valign="top">
								<xsl:for-each xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="AMBIENTS/AMBIENT">
									<xsl:if test="count(CATEGORIES/CATEGORY) &gt; 0">
										<table cellspacing="0" cellpadding="0" width="100%" border="0">
											<tbody>
												<tr>
													<td style="FONT-SIZE: 12px; COLOR: #808080" colspan="8">
														<b>
														<xsl:value-of select="@DESCRIPTION" /> 
														</b>
													</td>
												</tr>
											</tbody>
										</table>
										<table style="BORDER-TOP: #cecece 1px solid; BORDER-RIGHT: #cecece 1px solid; BORDER-COLLAPSE: collapse; BORDER-BOTTOM: #cecece 1px solid; BORDER-LEFT: #cecece 1px solid; MARGIN-TOP: 5px" cellspacing="0" cellpadding="0" width="100%" border="1">
											<xsl:for-each select="CATEGORIES/CATEGORY">
												<thead>
													<tr height="20">
														<td style="PADDING-LEFT: 5px" colspan="8">- 
														<xsl:value-of select="@DESCRIPTION" />
														</td>
													</tr>
													<tr bgcolor="#e9e9e9">
														<tr id="columns" align="center" bgcolor="#e9e9e9">
															<th id="item" height="30" width="4%">
																<b>Ítem 
																</b>
															</th>
															<th id="repetition" width="4%">
																<b>Rep 
																</b>
															</th>
															<th id="quantity" width="8%">
																<b>Qty 
																</b>
															</th>
															<th id="reference" width="18%">
																<b>Reference 
																</b>
															</th>
															<th id="description" width="33%">
																<b>Description 
																</b>
															</th>
															<th id="size" width="17%">
																<b>Dimensions 
																</b>
															</th>
															<th id="orderprice" width="8%">
																<b>Table 
																	<br>Price 
																	</br>
																</b>
															</th>
															<th id="salesprice" width="8%">
																<b>Final 
																	<br>Price 
																	</br>
																</b>
															</th>
														</tr>
													</tr>
												</thead>
												<xsl:call-template name="PercorrerItens">
													<xsl:with-param select="0" name="nivel">
													</xsl:with-param>
												</xsl:call-template>
												<tbody>
													<tr>
														<td id="totalprice" colspan="6" colcnt="2">
															<td align="right">
																<xsl:if test="count(TOTALPRICES) &gt; 0">
																	<xsl:variable select="translate(TOTALPRICES/@TABLE, ',', '.')" name="valor">
																	</xsl:variable>
																<xsl:value-of select="format-number($valor, '###.##0,00', 'formato')" /> 
																</xsl:if>
																<xsl:if test="count(TOTALPRICES) = 0">0,00 
																</xsl:if>
															</td>
															<td align="right">
																<xsl:if test="count(TOTALPRICES/MARGINS/ORDER) &gt; 0">
																	<xsl:variable select="translate(TOTALPRICES/MARGINS/ORDER/@VALUE, ',', '.')" name="valor">
																	</xsl:variable>
																<xsl:value-of select="format-number($valor, '###.##0,00', 'formato')" /> 
																</xsl:if>
																<xsl:if test="count(TOTALPRICES/MARGINS/ORDER) = 0">0,00 
																</xsl:if>
															</td>
														</td>
													</tr>
												</tbody>
											</xsl:for-each>
										</table>
										<br>
											<br>
												<table style="BORDER-TOP: #cecece 1px solid; BORDER-RIGHT: #cecece 1px solid; BORDER-BOTTOM: #cecece 1px solid; BORDER-LEFT: #cecece 1px solid" cellspacing="0" cellpadding="0" width="100%" border="0">
													<tbody>
														<tr bgcolor="#e9e9e9">
															<td style="FONT-SIZE: 10px; FONT-FAMILY: Arial; WIDTH: 80px; FONT-WEIGHT: bold; COLOR: #818181; PADDING-LEFT: 5px; LINE-HEIGHT: 20px">
																<b>
																	<span style="COLOR: #535353">Total Table: 
																	</span>
																</b>
															</td>
															<td>
																<sub>
																	<hr style="BORDER-TOP: black 1px dotted; BORDER-RIGHT: black 1px dotted; BORDER-BOTTOM: black 1px dotted; BORDER-LEFT: black 1px dotted" size="1" width="100%">
																	</hr>
																</sub>
															</td>
															<td style="FONT-SIZE: 10px; FONT-FAMILY: Arial; PADDING-RIGHT: 5px" width="65" align="right">
																<b>
																	<span style="PADDING-RIGHT: 2px">
																	<xsl:value-of select="/LISTING/@CURRENCYSYMBOL" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" /> 
																	</span>
																	<xsl:if test="count(TOTALPRICES) &gt; 0">
																		<xsl:if test="count(TOTALPRICES/@TABLE) &gt; 0">
																			<xsl:variable select="translate(TOTALPRICES/@TABLE, ',', '.')" name="valor">
																			</xsl:variable>
																		<xsl:value-of select="format-number($valor, '###.##0,00', 'formato')" /> 
																		</xsl:if>
																	</xsl:if>
																	<xsl:if test="count(TOTALPRICES) = 0">0,00 
																	</xsl:if>
																	<xsl:if test="count(TOTALPRICES/@TABLE) = 0">0,00 
																	</xsl:if>
																</b>
															</td>
														</tr>
														<tr bgcolor="#e9e9e9">
															<td style="FONT-SIZE: 10px; FONT-FAMILY: Arial; WIDTH: 80px; FONT-WEIGHT: bold; COLOR: #818181; PADDING-LEFT: 5px; LINE-HEIGHT: 20px">
																<b>
																	<span style="COLOR: #535353">Total Final: 
																	</span>
																</b>
															</td>
															<td>
																<sub>
																	<hr style="BORDER-TOP: black 1px dotted; BORDER-RIGHT: black 1px dotted; BORDER-BOTTOM: black 1px dotted; BORDER-LEFT: black 1px dotted" size="1" width="100%">
																	</hr>
																</sub>
															</td>
															<td style="FONT-SIZE: 10px; FONT-FAMILY: Arial; PADDING-RIGHT: 5px" width="65" align="right">
																<b>
																	<span style="PADDING-RIGHT: 2px">
																	<xsl:value-of select="/LISTING/@CURRENCYSYMBOL" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" /> 
																	</span>
																	<xsl:if test="count(TOTALPRICES/MARGINS/ORDER) &gt; 0">
																		<xsl:variable select="translate(TOTALPRICES/MARGINS/ORDER/@VALUE, ',', '.')" name="valor">
																		</xsl:variable>
																	<xsl:value-of select="format-number($valor, '###.##0,00', 'formato')" /> 
																	</xsl:if>
																	<xsl:if test="count(TOTALPRICES/MARGINS/ORDER) = 0">0,00 
																	</xsl:if>
																</b>
															</td>
														</tr>
													</tbody>
												</table>
												<br>
												</br>
											</br>
										</br>
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
												<span style="COLOR: #535353">Name: 
												</span>
											</b>
											<span style="WIDTH: 5px; MARGIN: 0px">
											</span>
										<xsl:value-of select="CUSTOMERSDATA/DATA[@ID='rep_nomeempresa']/@VALUE" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" /> 
											<span style="WIDTH: 10px; MARGIN: 0px">
											</span>| 
											<span style="WIDTH: 10px; MARGIN: 0px">
											</span>
											<b>
												<span style="COLOR: #535353">Address: 
												</span>
											</b>
											<span style="WIDTH: 5px; MARGIN: 0px">
											</span>
										<xsl:value-of select="CUSTOMERSDATA/DATA[@ID='rep_enderecoempresa']/@VALUE" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" />
											<span style="WIDTH: 10px; MARGIN: 0px">
											</span> | 
											<span style="WIDTH: 10px; MARGIN: 0px">
											</span>
											<b>
												<span style="COLOR: #535353">Phone: 
												</span>
											</b>
											<span style="WIDTH: 5px; MARGIN: 0px">
											</span>
										<xsl:value-of select="CUSTOMERSDATA/DATA[@ID='rep_telefoneempresa']/@VALUE" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" /> 
										</br>
									</br>
								</td>
							</tr>
							<tr>
								<td align="center">© Promob Studio. All rignts reserved. 
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
  <xsl:if test="((count(REFERENCES) = 0) or &#xD;&#xA;(count(REFERENCES) &gt; 0 and count(REFERENCES/HIDE_STRUCTURE) = 0) or &#xD;&#xA;(count(REFERENCES) &gt; 0 and count(REFERENCES/HIDE_STRUCTURE) &gt; 0 and count(REFERENCES/HIDE_STRUCTURE/@REFERENCE) &gt; 0 and REFERENCES/HIDE_STRUCTURE/@REFERENCE = 'TRUE'))">
    <tbody id="columns">
      <td id="item" height="25" align="center" style="padding-left:1px;">
        <xsl:number level="any" />
      </td>
      <td id="repetition" align="center">
        <xsl:value-of select="@REPETITION" />
      </td>
      <td id="quantity" align="center">
        <xsl:value-of select="@QUANTITY" />
        <xsl:text> </xsl:text>
        <xsl:value-of select="@UNIT" />
      </td>
      <td id="reference">
        <xsl:text> </xsl:text>
        <xsl:value-of select="@REFERENCE" />
      </td>
      <td id="description">
        <xsl:text> </xsl:text>
        <xsl:value-of disable-output-escaping="yes" select="$espacos" />
        <xsl:value-of select="@DESCRIPTION" />
      </td>
      <td id="size" align="center">
        <xsl:value-of select="@TEXTDIMENSION" />
      </td>
      <td id="orderprice" align="right" style="padding-right:1px;">
        <xsl:if test="count(PRICE) &gt; 0">
          <xsl:variable name="valorPreco" select="translate(PRICE/@TABLE, ',', '.')" />
          <xsl:variable name="valorComponentes" select="translate(PRICE/@TOTALCOMPONENTS, ',', '.')" />
          <xsl:value-of select="format-number($valorPreco + $valorComponentes, '###.##0,00', 'formato')" />
        </xsl:if>
        <xsl:if test="count(PRICE) = 0">
          <xsl:variable name="valorComponentes" select="translate(PRICE/@TOTALCOMPONENTS, ',', '.')" />
          <xsl:value-of select="format-number(0 + $valorComponentes, '###.##0,00', 'formato')" />
        </xsl:if>
      </td>
      <td id="salesprice" align="right" style="padding-right:1px;">
        <xsl:if test="count(PRICE/MARGINS/ORDER) &gt; 0">
          <xsl:variable name="valorPreco" select="translate(PRICE/MARGINS/ORDER/@TOTAL, ',', '.')" />
          <xsl:variable name="valorComponentes" select="translate(PRICE/MARGINS/ORDER/@TOTALCOMPONENTS, ',', '.')" />
          <xsl:value-of select="format-number($valorPreco + $valorComponentes, '###.##0,00', 'formato')" />
        </xsl:if>
        <xsl:if test="count(PRICE/MARGINS/ORDER) = 0">
          <xsl:variable name="valorComponentes" select="translate(PRICE/MARGINS/ORDER/@TOTALCOMPONENTS, ',', '.')" />
          <xsl:value-of select="format-number(0 + $valorComponentes, '###.##0,00', 'formato')" />
        </xsl:if>
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

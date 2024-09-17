<?xml version="1.0" encoding="utf-8"?>
	<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
		<xsl:decimal-format name="formato" decimal-separator="," grouping-separator="." />
		<xsl:output method="html"/>
		<xsl:template match="LISTING">
			<html generator="ProMob.Cadastro">
				<head>
					<title>Explode modules budget</title>
					<link href="%pastasistema%\Budget\Layouts\Listing\Orcamento.css" rel="stylesheet" type="text/css"/>
				</head>
				<body>
					<table align="center" border="0">
						<thead id="HEADER">
							<tr>
								<td align="middle">
									<table style="BORDER-RIGHT: #cecece 1px solid; BORDER-TOP: #cecece 1px solid; BORDER-LEFT: #cecece 1px solid; BORDER-BOTTOM: #cecece 1px solid" width="100%" bgcolor="#eeeeee" border="0">
										<tbody>
											<tr>
												<td height="70">
													<img style="MARGIN-RIGHT: 300px" alt="" hspace="10" src="%pastasistema%/Identity/logoCliente.png" align="left" border="0">
													</img> 
												</td>
												<td width="1%">
													<img alt="" src="%pastasistema%/Identity/logoPromob.png" align="left" border="0">
													</img> 
												</td>
											</tr>
										</tbody>
									</table>
									<table width="630" border="0">
										<tbody>
											<tr>
												<td style="FONT-WEIGHT: bold; FONT-SIZE: 12px; COLOR: #808080; PADDING-TOP: 20px; FONT-FAMILY: Arial" width="400">Fecha: 
												<xsl:value-of select="@DATE" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" />
													<span style="MARGIN: 0px; WIDTH: 10px">
													</span> Hora: 
												<xsl:value-of select="@HOUR" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" />
												</td>
												<td style="FONT-WEIGHT: bold; FONT-SIZE: 12px; COLOR: #808080; PADDING-TOP: 20px; FONT-FAMILY: Arial" align="right">Presupuesto 
												</td>
											</tr>
										</tbody>
									</table>
								</td>
							</tr>
						</thead>

						<tbody>
						<tr id="CUSTOMERDATA">
						<!-- gerar dadoscliente -->
							<td valign="center">
								<table style="BORDER-RIGHT: #818181 1px solid; BORDER-TOP: #818181 1px solid; FONT-SIZE: 12px; BORDER-LEFT: #818181 1px solid; BORDER-BOTTOM: #818181 1px solid; FONT-FAMILY: Tahoma; BORDER-COLLAPSE: collapse" cellspacing="0" cellpadding="0" width="100%" border="0">
									<tbody>
										<tr>
											<td style="PADDING-RIGHT: 5px; PADDING-LEFT: 5px; FONT-SIZE: 16px; PADDING-BOTTOM: 5px; COLOR: #808080; PADDING-TOP: 5px; BORDER-BOTTOM: #818181 1px solid" bgcolor="#eeeeee">
												<b>Datos del cliente: 
												</b>
											</td>
										</tr>
										<tr>
											<td style="PADDING-RIGHT: 5px; PADDING-LEFT: 5px; PADDING-BOTTOM: 5px; LINE-HEIGHT: 20px; PADDING-TOP: 5px" width="592" height="22">
												<table cellspacing="5" cellpadding="2" width="100%" border="0">
													<tbody>
														<tr>
															<td style="FONT-SIZE: 10px">
																<b>
																	<span style="COLOR: #535353">Nombre: 
																	</span>
																</b>
															<xsl:value-of select="CUSTOMERSDATA/DATA[@ID='nomecliente']/@VALUE" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" /> 
															</td>
															<td style="FONT-SIZE: 10px">
																<b>
																	<span style="COLOR: #535353">C.P: 
																	</span>
																</b>
															<xsl:value-of select="CUSTOMERSDATA/DATA[@ID='cpfcnpj']/@VALUE" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" /> 
															</td>
														</tr>
														<tr>
															<td style="FONT-SIZE: 10px">
																<b>
																	<span style="COLOR: #535353">Dirección: 
																	</span>
																</b>
															<xsl:value-of select="CUSTOMERSDATA/DATA[@ID='endereco']/@VALUE" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" /> 
															</td>
															<td style="FONT-SIZE: 10px">
																<b>
																	<span style="COLOR: #535353">CUIT/CUIL: 
																	</span>
																</b>
															<xsl:value-of select="CUSTOMERSDATA/DATA[@ID='cep']/@VALUE" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" /> 
															</td>
														</tr>
														<tr>
															<td style="FONT-SIZE: 10px">
																<b>
																	<span style="COLOR: #535353">Barrio: 
																	</span>
																</b>
															<xsl:value-of select="CUSTOMERSDATA/DATA[@ID='bairro']/@VALUE" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" /> 
															</td>
															<td style="FONT-SIZE: 10px">
																<b>
																	<span style="COLOR: #535353">Provincia: 
																	</span>
																</b>
															<xsl:value-of select="CUSTOMERSDATA/DATA[@ID='uf']/@VALUE" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" /> 
															</td>
														</tr>
														<tr>
															<td style="FONT-SIZE: 10px">
																<b>
																	<span style="COLOR: #535353">Dirección de entrega: 
																	</span>
																</b>
															<xsl:value-of select="CUSTOMERSDATA/DATA[@ID='endentrega']/@VALUE" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" /> 
															</td>
															<td style="FONT-SIZE: 10px">
																<b>
																	<span style="COLOR: #535353">Ciudad: 
																	</span>
																</b>
															<xsl:value-of select="CUSTOMERSDATA/DATA[@ID='cidade']/@VALUE" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" /> 
															</td>
														</tr>
														<tr>
															<td style="FONT-SIZE: 10px">
																<b>
																	<span style="COLOR: #535353">Teléfono: 
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


						<tr id="BODY" templatetext="Módulos montados com preço do pedido">
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
										<xsl:for-each select="CATEGORIES/CATEGORY">
											<table style="BORDER-RIGHT: #cacaca 1px solid; BORDER-TOP: #cacaca 1px solid; MARGIN-TOP: 5px; BORDER-LEFT: #cacaca 1px solid; BORDER-BOTTOM: #cacaca 1px solid; BORDER-COLLAPSE: collapse" cellspacing="0" cellpadding="0" width="100%" border="1">
												<thead>
													<tr height="20">
														<td style="PADDING-LEFT: 5px" colspan="8">- 
														<xsl:value-of select="@DESCRIPTION" />
														</td>
													</tr>
													<tr id="columns" bgcolor="#e9e9e9">
														<th id="item" width="4%" height="30">
															<b>Item 
															</b>
														</th>
														<th id="repetition" width="6%">
															<b>Rep 
															</b>
														</th>
														<th id="quantity" width="7%">
															<b>Cant 
															</b>
														</th>
														<th id="reference" width="31%">
															<b>Referencia 
															</b>
														</th>
														<th id="description" width="27%">
															<b>Descripción 
															</b>
														</th>
														<th id="size" width="15%">
															<b>Dimensiones 
															</b>
														</th>
														<th id="orderprice" align="right" width="10%">
															<b>Precio 
															</b>
														</th>
													</tr>
												</thead>
												<xsl:call-template name="PercorrerItens">
													<xsl:with-param select="0" name="nivel">
													</xsl:with-param>
												</xsl:call-template>
												<xsl:call-template name="GerarTotalCategoria">
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

						<tr id="PAYMENTTERMS">
							<td>
								<xsl:if xmlns:xsl="http://www.w3.org/1999/XSL/Transform" test="count(PAYMENTTERMS) &gt; 0">
									<table style="BORDER-RIGHT: #cecece 1px solid; BORDER-TOP: #cecece 1px solid; BORDER-LEFT: #cecece 1px solid; BORDER-BOTTOM: #cecece 1px solid" cellspacing="0" cellpadding="0" width="630" border="0">
										<tbody>
											<tr>
												<td style="PADDING-RIGHT: 5px; PADDING-LEFT: 5px; FONT-SIZE: 12px; PADDING-BOTTOM: 5px; COLOR: #808080; PADDING-TOP: 5px" colspan="8">
													<b>Condiciones de Pagamento 
													</b>
												</td>
											</tr>
											<tr align="middle" bgcolor="#e9e9e9">
												<th style="PADDING-RIGHT: 5px; PADDING-LEFT: 5px; PADDING-BOTTOM: 5px; PADDING-TOP: 5px" width="25%" height="20">
													<b>Descripción 
													</b>
												</th>
												<th style="PADDING-RIGHT: 5px; PADDING-LEFT: 5px; PADDING-BOTTOM: 5px; PADDING-TOP: 5px" width="25%">
													<b>Valor para parcelar 
													</b>
												</th>
												<th style="PADDING-RIGHT: 5px; PADDING-LEFT: 5px; PADDING-BOTTOM: 5px; PADDING-TOP: 5px" width="25%">
													<b>Valor de las Parcelas 
													</b>
												</th>
												<th style="PADDING-RIGHT: 5px; PADDING-LEFT: 5px; PADDING-BOTTOM: 5px; PADDING-TOP: 5px" width="25%">
													<b>
														<font style="BACKGROUND-COLOR: #e9e9e9">Valor Total 
														</font>
													</b>
												</th>
											</tr>
											<tbody>
												<xsl:for-each select="PAYMENTTERMS/PAYMENTTERMCOLLECTION/PAYMENTTERM">
													<tr>
														<td style="PADDING-RIGHT: 5px; PADDING-LEFT: 5px; PADDING-BOTTOM: 5px; PADDING-TOP: 5px" align="middle">
															<b>
															<xsl:value-of select="@DESCRIPTION" /> 
															</b>
														</td>
														<td style="PADDING-RIGHT: 5px; PADDING-LEFT: 5px; PADDING-BOTTOM: 5px; PADDING-TOP: 5px" align="middle">
														<xsl:value-of select="format-number(@PARCELEDTOTAL, '###.##0,00', 'formato')" /> 
														</td>
														<td style="PADDING-RIGHT: 5px; PADDING-LEFT: 5px; PADDING-BOTTOM: 5px; PADDING-TOP: 5px" align="middle">
														<xsl:value-of select="format-number(@PARCELVALUE, '###.##0,00', 'formato')" /> 
														</td>
														<td style="PADDING-RIGHT: 5px; PADDING-LEFT: 5px; PADDING-BOTTOM: 5px; PADDING-TOP: 5px" align="middle">
														<xsl:value-of select="format-number(@GENERALTOTAL, '###.##0,00', 'formato')" /> 
														</td>
													</tr>
												</xsl:for-each>
											</tbody>
										</tbody>
									</table>
								</xsl:if>
							</td>
						</tr>

						<tr id="PAYMENTENTRIES">
							<td valign="center">
								<xsl:if xmlns:xsl="http://www.w3.org/1999/XSL/Transform" test="count(PAYMENTTERMS/ADITIONALENTRYCOLLECTION) &gt; 0">
									<table style="BORDER-RIGHT: #cecece 1px solid; BORDER-TOP: #cecece 1px solid; BORDER-LEFT: #cecece 1px solid; BORDER-BOTTOM: #cecece 1px solid" cellspacing="0" cellpadding="0" width="100%" border="0">
										<tbody>
											<tr>
												<td style="PADDING-RIGHT: 5px; PADDING-LEFT: 5px; FONT-SIZE: 12px; PADDING-BOTTOM: 5px; COLOR: #808080; PADDING-TOP: 5px" colspan="8">
													<b>Entradas Especiales 
													</b>
												</td>
											</tr>
											<tr align="middle" bgcolor="#e9e9e9">
												<th style="PADDING-RIGHT: 5px; PADDING-LEFT: 5px; PADDING-BOTTOM: 5px; PADDING-TOP: 5px" width="50%" height="20">
													<b>Descripción 
													</b>
												</th>
												<th style="PADDING-RIGHT: 5px; PADDING-LEFT: 5px; PADDING-BOTTOM: 5px; PADDING-TOP: 5px" width="50%">
													<b>Valor 
													</b>
												</th>
											</tr>
											<tbody>
												<xsl:for-each select="PAYMENTTERMS/ADITIONALENTRYCOLLECTION/ADITIONALENTRY">
													<tr>
														<td style="PADDING-RIGHT: 5px; PADDING-LEFT: 5px; PADDING-BOTTOM: 5px; PADDING-TOP: 5px" align="middle">
															<b>
															<xsl:value-of select="@DESCRIPTION" /> 
															</b>
														</td>
														<td style="PADDING-RIGHT: 5px; PADDING-LEFT: 5px; PADDING-BOTTOM: 5px; PADDING-TOP: 5px" align="middle">
														<xsl:value-of select="format-number(@VALUE, '###.##0,00', 'formato')" /> 
														</td>
													</tr>
												</xsl:for-each>
											</tbody>
										</tbody>
									</table>
								</xsl:if>
							</td>
						</tr>

						<tr id="TOTALS">
							<td>
							<!-- gerar total -->
								<table style="BORDER-BOTTOM: #818181 1px solid; BORDER-LEFT: #818181 1px solid; BORDER-TOP: #818181 1px solid; BORDER-RIGHT: #818181 1px solid" border="0" cellspacing="0" cellpadding="0" width="100%">
									<tbody>
										<tr bgcolor="#e9e9e9">
											<td style="LINE-HEIGHT: 20px; PADDING-LEFT: 5px; WIDTH: 80px; FONT-FAMILY: Arial; COLOR: #818181; FONT-SIZE: 10px; FONT-WEIGHT: bold">
												<b>
													<span style="COLOR: #535353">Total final: 
													</span>
												</b>
											</td>
											<td>
												<sub>
													<hr style="BORDER-BOTTOM: black 1px dotted; BORDER-LEFT: black 1px dotted; BORDER-TOP: black 1px dotted; BORDER-RIGHT: black 1px dotted" size="1" width="100%">
													</hr>
												</sub>
											</td>
											<td style="PADDING-RIGHT: 5px; FONT-FAMILY: Arial; FONT-SIZE: 10px" width="65" align="right">
												<b>
													<span style="PADDING-RIGHT: 2px">
													<xsl:value-of select="/LISTING/@CURRENCYSYMBOL" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" /> 
													</span>												
													<xsl:if xmlns:xsl="http://www.w3.org/1999/XSL/Transform" test="count(TOTALPRICES/MARGINS/BUDGET) &gt; 0">
														<xsl:variable select="translate(TOTALPRICES/MARGINS/BUDGET/@VALUE, ',', '.')" name="valor">
														</xsl:variable>
													<xsl:value-of select="format-number($valor, '###.##0,00', 'formato')" />
													</xsl:if>
													<xsl:if xmlns:xsl="http://www.w3.org/1999/XSL/Transform" test="count(TOTALPRICES/MARGINS/BUDGET) = 0"> 0,00 
													</xsl:if>
												</b>
											</td>
										</tr>
									</tbody>
								</table>
							</td>
						</tr>



						</tbody>
						<tfoot id="FOOTER">
							<tr>
								<td align="middle">
									<br>
										<br>
											<b>
												<span style="COLOR: #535353">Tienda: 
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
												<span style="COLOR: #535353">Dirección: 
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
												<span style="COLOR: #535353">Teléfono: 
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
								<td align="middle">©Promob Studio. Todos los derechos reservados 
								</td>
							</tr>
						</tfoot>

					</table>
				</body>
			</html>
		</xsl:template>
<!--template="BODY"-->
<xsl:template name="GerarTotalCategoria" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <tr>
    <td colspan="6" />
    <td align="right">
      <xsl:if test="count(TOTALPRICES/MARGINS/BUDGET) &gt; 0">
        <xsl:variable name="valor" select="translate(TOTALPRICES/MARGINS/BUDGET/@VALUE, ',', '.')" />
        <xsl:value-of select="format-number($valor, '###.##0,00', 'formato')" />
      </xsl:if>
      <xsl:if test="count(TOTALPRICES/MARGINS/BUDGET) = 0">							
						0,00
					</xsl:if>
    </td>
  </tr>
</xsl:template>
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
  
  <xsl:if test="count(REFERENCES/FERRAGEM) = 0 ">
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
      <td>
        <xsl:text> </xsl:text>
        <xsl:value-of disable-output-escaping="yes" select="$espacos" />
        <xsl:value-of select="@DESCRIPTION" />
      </td>
      <td align="center">
        <xsl:value-of select="@TEXTDIMENSION" />
      </td>
      <td align="right" style="padding-right:1px;">
        <xsl:if test="count(PRICE/MARGINS/BUDGET) &gt; 0">
          <xsl:variable name="valorPreco" select="translate(PRICE/MARGINS/BUDGET/@TOTAL, ',', '.')" />
          <xsl:variable name="valorComponentes" select="translate(PRICE/MARGINS/BUDGET/@TOTALCOMPONENTS, ',', '.')" />
          <xsl:value-of select="format-number($valorPreco + $valorComponentes, '###.##0,00', 'formato')" />
        </xsl:if>
        <xsl:if test="count(PRICE/MARGINS/BUDGET) = 0">
          <xsl:variable name="valorComponentes" select="translate(PRICE/MARGINS/BUDGET/@TOTALCOMPONENTS, ',', '.')" />
          <xsl:value-of select="format-number(0 + $valorComponentes, '###.##0,00', 'formato')" />
        </xsl:if>
      </td>
    </tbody>
  </xsl:if>
  
  
  </xsl:if>
  <xsl:if test="count(ITEMS) &gt; 0">
    <xsl:call-template name="PercorrerItens">
      <xsl:with-param name="nivel" select="$nivel + 1" />
      <xsl:with-param name="espacos" select="concat($espacos, '&lt;span style=&quot;margin:0;width:15px&quot;&gt;&lt;/span &gt;')" />
    </xsl:call-template>
  </xsl:if>
</xsl:template>

	</xsl:stylesheet>

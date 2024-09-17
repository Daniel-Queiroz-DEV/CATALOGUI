<?xml version="1.0" encoding="utf-8"?>
	<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
		<xsl:decimal-format name="formato" decimal-separator="," grouping-separator="." />
		<xsl:output method="html"/>
		<xsl:template match="LISTING">
			<html generator="ProMob.Cadastro">
				<head>
					<title>Orçamento</title>
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
													<img border="0" hspace="10" alt="" src="%pastasistema%/identity/logoleo.png" align="middle">
													</img> 
												</td>
											</tr>
										</tbody>
									</table>
									<table width="630" border="0">
										<tbody>
											<tr>
												<td style="FONT-SIZE: 12px; FONT-FAMILY: Arial; FONT-WEIGHT: bold; COLOR: #808080; PADDING-TOP: 20px" width="400">Data: 
												<xsl:value-of select="@DATE" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" />
													<span style="WIDTH: 10px; MARGIN: 0px">
													</span> Hora: 
												<xsl:value-of select="@HOUR" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" />
												</td>
												<td style="FONT-SIZE: 12px; FONT-FAMILY: Arial; FONT-WEIGHT: bold; COLOR: #808080; PADDING-TOP: 20px" align="right">Orçamento 
												</td>
											</tr>
										</tbody>
									</table>
								</td>
							</tr>
						</thead>

						<tbody>





						<tr id="TOTALS">
							<td>
							<!-- gerar totais -->
								<table style="BORDER-TOP: #818181 1px solid; BORDER-RIGHT: #818181 1px solid; BORDER-BOTTOM: #818181 1px solid; BORDER-LEFT: #818181 1px solid" cellspacing="0" cellpadding="0" width="100%" border="0">
									<tbody>
										<tr bgcolor="#eeeeee">
											<td style="FONT-SIZE: 10px; FONT-FAMILY: Arial; WIDTH: 80px; FONT-WEIGHT: bold; COLOR: #818181; PADDING-LEFT: 5px; LINE-HEIGHT: 20px" height="30">
												<b>
													<span style="COLOR: #808080">Total orçado: 
													</span>
												</b>
											</td>
											<td>
												<sub>
													<hr style="BORDER-TOP: black 1px dotted; BORDER-RIGHT: black 1px dotted; BORDER-BOTTOM: black 1px dotted; BORDER-LEFT: black 1px dotted" size="1" width="100%">
													</hr>
												</sub>
											</td>
											<td style="FONT-SIZE: 10px; FONT-FAMILY: Arial; COLOR: #808080; PADDING-RIGHT: 5px" width="65" align="right">
												<b>
													<span style="PADDING-RIGHT: 2px">
													<xsl:value-of select="/LISTING/@CURRENCYSYMBOL" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" /> 
													</span>
													<xsl:if xmlns:xsl="http://www.w3.org/1999/XSL/Transform" test="count(TOTALPRICES/MARGINS/BUDGET) &gt; 0">
														<xsl:variable name="valor" select="translate(TOTALPRICES/MARGINS/BUDGET/@VALUE, ',', '.')">
														</xsl:variable>
													<xsl:value-of select="format-number($valor, '###.##0,00', 'formato')" /> 
													</xsl:if>
													<xsl:if xmlns:xsl="http://www.w3.org/1999/XSL/Transform" test="count(TOTALPRICES/MARGINS/BUDGET) = 0">0,00 
													</xsl:if>
												</b>
											</td>
										</tr>
									</tbody>
								</table>
							</td>
							<xsl:if xmlns:xsl="http://www.w3.org/1999/XSL/Transform" test="count(ITEMSWITHOUTPRICE) &gt; 0">
							</xsl:if>
						</tr>

						<tr id="OBSERVATIONS">
							<td valign="middle">
								<table cellspacing="0" cellpadding="0" width="100%" border="0">
									<tbody>
										<tr>
											<td class="textoorc" style="FONT-SIZE: 10px; FONT-FAMILY: Arial; COLOR: #818181; PADDING-BOTTOM: 5px; PADDING-TOP: 5px; PADDING-LEFT: 5px; LINE-HEIGHT: 20px; PADDING-RIGHT: 5px" valign="top">
												<b>
													<span style="COLOR: #808080">Observações: 
													</span>
												</b>
											<xsl:value-of select="CUSTOMERSDATA/DATA[@ID='observacoes']/@VALUE" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" /> 
												<br>
													<br>
														<br>
															<br>
																<br>
																	<br>
																	</br>
																</br>
															</br>
														</br>
													</br>
												</br>
											</td>
										</tr>
									</tbody>
								</table>
							</td>
						</tr>

						<tr id="SIGNATURES">
							<td valign="top" align="center">
								<table cellspacing="0" cellpadding="0" width="78%" border="0">
									<tbody>
										<tr>
											<td style="FONT-SIZE: 10px; FONT-FAMILY: Arial" valign="top" align="center">_____________________________________ 
												<br>
													<b>Assinatura Cliente 
													</b>
												</br>
											</td>
											<td width="50">
											</td>
											<td style="FONT-SIZE: 10px; FONT-FAMILY: Arial" valign="top" align="center">_____________________________________ 
												<br>
													<b>Consultor de Negócios 
													</b>
												</br>
											</td>
										</tr>
									</tbody>
								</table>
							</td>
							<br>
							</br>
						</tr>

						</tbody>
						<tfoot id="FOOTER">
							<tr>
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
	</xsl:stylesheet>

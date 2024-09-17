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
													<img border="0" hspace="10" alt="" src="%pastasistema%/identity/logocliente.png" align="left">
													</img> 
												</td>
												<td width="1%">
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
												<td style="FONT-SIZE: 12px; FONT-FAMILY: Arial; FONT-WEIGHT: bold; COLOR: #808080; PADDING-TOP: 20px" align="right">Budget 
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
							<!-- gerar dados cliente -->
								<table style="FONT-SIZE: 12px; BORDER-TOP: #818181 1px solid; FONT-FAMILY: Tahoma; BORDER-RIGHT: #818181 1px solid; BORDER-COLLAPSE: collapse; BORDER-BOTTOM: #818181 1px solid; BORDER-LEFT: #818181 1px solid" cellspacing="0" cellpadding="0" width="100%" border="0">
									<tbody>
										<tr>
											<td style="FONT-SIZE: 16px; BORDER-BOTTOM: #818181 1px solid; COLOR: #808080; PADDING-BOTTOM: 5px; PADDING-TOP: 5px; PADDING-LEFT: 5px; PADDING-RIGHT: 5px" bgcolor="#eeeeee">
												<b>Customer Data: 
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



						<tr id="PAYMENTTERMS">
							<td valign="middle">
							<!-- gerar condicoes de pagamento -->
								<xsl:if xmlns:xsl="http://www.w3.org/1999/XSL/Transform" test="count(PAYMENTTERMS) &gt; 0">
									<table style="BORDER-TOP: #cecece 1px solid; BORDER-RIGHT: #cecece 1px solid; BORDER-BOTTOM: #cecece 1px solid; BORDER-LEFT: #cecece 1px solid" cellspacing="0" cellpadding="0" width="100%" border="0">
										<tbody>
											<tr>
												<td style="FONT-SIZE: 12px; COLOR: #808080; PADDING-BOTTOM: 5px; PADDING-TOP: 5px; PADDING-LEFT: 5px; PADDING-RIGHT: 5px" colspan="8">
													<b>Payment terms 
													</b>
												</td>
											</tr>
											<tr align="center" bgcolor="#e9e9e9">
												<th style="PADDING-BOTTOM: 5px; PADDING-TOP: 5px; PADDING-LEFT: 5px; PADDING-RIGHT: 5px" height="20" width="25%">
													<b>Description 
													</b>
												</th>
												<th style="PADDING-BOTTOM: 5px; PADDING-TOP: 5px; PADDING-LEFT: 5px; PADDING-RIGHT: 5px" width="25%">
													<b>Value to parcel 
													</b>
												</th>
												<th style="PADDING-BOTTOM: 5px; PADDING-TOP: 5px; PADDING-LEFT: 5px; PADDING-RIGHT: 5px" width="25%">
													<b>Parcel value 
													</b>
												</th>
												<th style="PADDING-BOTTOM: 5px; PADDING-TOP: 5px; PADDING-LEFT: 5px; PADDING-RIGHT: 5px" width="25%">
													<b>Total Value 
													</b>
												</th>
											</tr>
											<tbody>
												<xsl:for-each select="PAYMENTTERMS/PAYMENTTERMCOLLECTION/PAYMENTTERM">
													<tr>
														<td style="PADDING-BOTTOM: 5px; PADDING-TOP: 5px; PADDING-LEFT: 5px; PADDING-RIGHT: 5px" align="center">
															<b>
															<xsl:value-of select="@DESCRIPTION" /> 
															</b>
														</td>
														<td style="PADDING-BOTTOM: 5px; PADDING-TOP: 5px; PADDING-LEFT: 5px; PADDING-RIGHT: 5px" align="center">
														<xsl:value-of select="format-number(@PARCELEDTOTAL, '###.##0,00', 'formato')" /> 
														</td>
														<td style="PADDING-BOTTOM: 5px; PADDING-TOP: 5px; PADDING-LEFT: 5px; PADDING-RIGHT: 5px" align="center">
														<xsl:value-of select="format-number(@PARCELVALUE, '###.##0,00', 'formato')" /> 
														</td>
														<td style="PADDING-BOTTOM: 5px; PADDING-TOP: 5px; PADDING-LEFT: 5px; PADDING-RIGHT: 5px" align="center">
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
							<td valign="middle">
							<!-- gerar entradas diferenciadas -->
								<xsl:if xmlns:xsl="http://www.w3.org/1999/XSL/Transform" test="count(PAYMENTTERMS/ADITIONALENTRYCOLLECTION) &gt; 0">
									<table style="BORDER-TOP: #cecece 1px solid; BORDER-RIGHT: #cecece 1px solid; BORDER-BOTTOM: #cecece 1px solid; BORDER-LEFT: #cecece 1px solid" cellspacing="0" cellpadding="0" width="100%" border="0">
										<tbody>
											<tr>
												<td style="FONT-SIZE: 12px; COLOR: #808080; PADDING-BOTTOM: 5px; PADDING-TOP: 5px; PADDING-LEFT: 5px; PADDING-RIGHT: 5px" colspan="8">
													<b>Special entries 
													</b>
												</td>
											</tr>
											<tr align="center" bgcolor="#e9e9e9">
												<th style="PADDING-BOTTOM: 5px; PADDING-TOP: 5px; PADDING-LEFT: 5px; PADDING-RIGHT: 5px" height="20" width="50%">
													<b>Description 
													</b>
												</th>
												<th style="PADDING-BOTTOM: 5px; PADDING-TOP: 5px; PADDING-LEFT: 5px; PADDING-RIGHT: 5px" width="50%">
													<b>Value 
													</b>
												</th>
											</tr>
											<tbody>
												<xsl:for-each select="PAYMENTTERMS/ADITIONALENTRYCOLLECTION/ADITIONALENTRY">
													<tr>
														<td style="PADDING-BOTTOM: 5px; PADDING-TOP: 5px; PADDING-LEFT: 5px; PADDING-RIGHT: 5px" align="center">
															<b>
															<xsl:value-of select="@DESCRIPTION" /> 
															</b>
														</td>
														<td style="PADDING-BOTTOM: 5px; PADDING-TOP: 5px; PADDING-LEFT: 5px; PADDING-RIGHT: 5px" align="center">
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
							<!-- gerar totais -->
								<table style="BORDER-TOP: #818181 1px solid; BORDER-RIGHT: #818181 1px solid; BORDER-BOTTOM: #818181 1px solid; BORDER-LEFT: #818181 1px solid" cellspacing="0" cellpadding="0" width="100%" border="0">
									<tbody>
										<tr bgcolor="#eeeeee">
											<td style="FONT-SIZE: 10px; FONT-FAMILY: Arial; WIDTH: 80px; FONT-WEIGHT: bold; COLOR: #818181; PADDING-LEFT: 5px; LINE-HEIGHT: 20px" height="30">
												<b>
													<span style="COLOR: #808080">Final Total: 
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
						</tr>

						<tr id="OBSERVATIONS">
							<td valign="middle">
								<table cellspacing="0" cellpadding="0" width="100%" border="0">
									<tbody>
										<tr>
											<td class="textoorc" style="FONT-SIZE: 10px; FONT-FAMILY: Arial; COLOR: #818181; PADDING-BOTTOM: 5px; PADDING-TOP: 5px; PADDING-LEFT: 5px; LINE-HEIGHT: 20px; PADDING-RIGHT: 5px" valign="top">
												<b>
													<span style="COLOR: #808080">Observations: 
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
													<b>Customer 
													</b>
												</br>
											</td>
											<td width="50">
											</td>
											<td style="FONT-SIZE: 10px; FONT-FAMILY: Arial" valign="top" align="center">_____________________________________ 
												<br>
													<b>Store 
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
								<td align="center">©Promob Studio. All rignts reserved. 
								</td>
							</tr>
						</tfoot>

					</table>
				</body>
			</html>
		</xsl:template>
	</xsl:stylesheet>

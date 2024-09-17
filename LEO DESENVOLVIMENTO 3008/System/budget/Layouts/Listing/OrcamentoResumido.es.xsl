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
								<td align="middle">
									<table style="BORDER-RIGHT: #cecece 1px solid; BORDER-TOP: #cecece 1px solid; BORDER-LEFT: #cecece 1px solid; BORDER-BOTTOM: #cecece 1px solid" width="100%" bgcolor="#eeeeee" border="0">
										<tbody>
											<tr>
												<td height="70">
													<img alt="" hspace="10" src="%pastasistema%\identity\logoCliente.png" align="left" border="0"> 
													</img>
												</td>
												<td width="1%">
													<img alt="" src="%pastasistema%\identity\logoPromob.png" align="left" border="0"> 
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
							<td align="middle">
							<!-- gerar dados cliente -->
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
																	<span style="COLOR: #535353">Bairro:
																	</span> 
																</b>
															<xsl:value-of select="CUSTOMERSDATA/DATA[@ID='bairro']/@VALUE" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" /> 
															</td>
															<td style="FONT-SIZE: 10px">
																<b>
																	<span style="COLOR: #535353">Estado:
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



						<tr id="PAYMENTTERMS">
							<td valign="center">
							<!-- gerar condicoes de pagamento -->
								<xsl:if xmlns:xsl="http://www.w3.org/1999/XSL/Transform" test="count(PAYMENTTERMS) &gt; 0">
									<table style="BORDER-RIGHT: #cecece 1px solid; BORDER-TOP: #cecece 1px solid; BORDER-LEFT: #cecece 1px solid; BORDER-BOTTOM: #cecece 1px solid" cellspacing="0" cellpadding="0" width="100%" border="0">
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
													<b>Valor Total
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
							<!-- gerar entradas diferenciadas -->
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
							<!-- gerar totais -->
								<table style="BORDER-RIGHT: #818181 1px solid; BORDER-TOP: #818181 1px solid; BORDER-LEFT: #818181 1px solid; BORDER-BOTTOM: #818181 1px solid" cellspacing="0" cellpadding="0" width="100%" border="0">
									<tbody>
										<tr bgcolor="#eeeeee">
											<td style="PADDING-LEFT: 5px; FONT-WEIGHT: bold; FONT-SIZE: 10px; WIDTH: 80px; COLOR: #818181; LINE-HEIGHT: 20px; FONT-FAMILY: Arial" height="30">
												<b>
													<span style="COLOR: #808080">Total Final:
													</span> 
												</b>
											</td>
											<td>
												<sub>
													<hr style="BORDER-RIGHT: black 1px dotted; BORDER-TOP: black 1px dotted; BORDER-LEFT: black 1px dotted; BORDER-BOTTOM: black 1px dotted" width="100%" size="1">
													</hr>
												</sub>
											</td>
											<td style="PADDING-RIGHT: 5px; FONT-SIZE: 10px; COLOR: #808080; FONT-FAMILY: Arial" align="right" width="65">
												<b>
													<span style="PADDING-RIGHT: 2px">
													<xsl:value-of select="/LISTING/@CURRENCYSYMBOL" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" /> 
													</span>
													<xsl:if xmlns:xsl="http://www.w3.org/1999/XSL/Transform" test="count(TOTALPRICES/MARGINS/BUDGET) &gt; 0">
														<xsl:variable select="translate(TOTALPRICES/MARGINS/BUDGET/@VALUE, ',', '.')" name="valor">
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
							<td valign="center">
								<table cellspacing="0" cellpadding="0" width="100%" border="0">
									<tbody>
										<tr>
											<td class="textoorc" style="PADDING-RIGHT: 5px; PADDING-LEFT: 5px; FONT-SIZE: 10px; PADDING-BOTTOM: 5px; COLOR: #818181; LINE-HEIGHT: 20px; PADDING-TOP: 5px; FONT-FAMILY: Arial" valign="top">
												<b>
													<span style="COLOR: #808080">Comentario:
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
							<td valign="top" align="middle">
								<table cellspacing="0" cellpadding="0" width="78%" border="0">
									<tbody>
										<tr>
											<td style="FONT-SIZE: 10px; FONT-FAMILY: Arial" valign="top" align="middle">_____________________________________
												<br>
													<b>Cliente
													</b>
												</br>
											</td>
											<td width="50">
											</td>
											<td style="FONT-SIZE: 10px; FONT-FAMILY: Arial" valign="top" align="middle">_____________________________________
												<br>
													<b>Tienda
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
								<td align="middle">©Promob Studio. Todos los derechos reservados.
								</td>
							</tr>
						</tfoot>

					</table>
				</body>
			</html>
		</xsl:template>
	</xsl:stylesheet>

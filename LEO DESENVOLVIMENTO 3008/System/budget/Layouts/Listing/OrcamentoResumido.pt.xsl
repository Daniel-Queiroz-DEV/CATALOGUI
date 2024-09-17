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
					<table align="center" border="0" width="630">
						<thead id="HEADER">
							<tr>
								<td align="middle">
									<table style="BORDER-RIGHT: #cecece 1px solid; BORDER-TOP: #cecece 1px solid; BORDER-LEFT: #cecece 1px solid; BORDER-BOTTOM: #cecece 1px solid" width="100%" bgcolor="#eeeeee" border="0">
										<tbody>
											<tr>
												<td height="70">
													<img alt="" hspace="10" src="%pastasistema%\identity\logoCliente1.png" align="middle" border="0"> 
													</img>
												</td>
											</tr>
										</tbody>
									</table>
									<table width="630" border="0">
										<tbody>
											<tr>
												<td style="FONT-WEIGHT: bold; FONT-SIZE: 12px; COLOR: #808080; PADDING-TOP: 20px; FONT-FAMILY: Arial" width="400">Data: 
												<xsl:value-of select="@DATE" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" />
													<span style="MARGIN: 0px; WIDTH: 10px">
													</span> Hora: 
												<xsl:value-of select="@HOUR" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" />
												</td>
												<td style="FONT-WEIGHT: bold; FONT-SIZE: 12px; COLOR: #808080; PADDING-TOP: 20px; FONT-FAMILY: Arial" align="right">Orçamento 
												</td>
											</tr>
										</tbody>
									</table>
								</td>
							</tr>
						</thead>

						<tbody>
						<tr id="CUSTOMERSDATA">
							<td align="middle">
							<!-- gerar dados empresa -->
								<table style="BORDER-RIGHT: #818181 1px solid; BORDER-TOP: #818181 1px solid; FONT-SIZE: 12px; BORDER-LEFT: #818181 1px solid; BORDER-BOTTOM: #818181 1px solid; FONT-FAMILY: Tahoma; BORDER-COLLAPSE: collapse" cellspacing="0" cellpadding="0" width="100%" border="0">
									<tbody>
										<tr>
											<td style="PADDING-RIGHT: 5px; PADDING-LEFT: 5px; FONT-SIZE: 16px; PADDING-BOTTOM: 5px; COLOR: #808080; PADDING-TOP: 5px; BORDER-BOTTOM: #818181 1px solid" bgcolor="#eeeeee">
												<b>Dados da Empresa:
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
																	<span style="COLOR: #535353">Nome:
																	</span> 
																</b>
															<xsl:value-of select="CUSTOMERSDATA/DATA[@ID='rep_nomeempresa']/@VALUE" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" /> 
															</td>
															<td style="FONT-SIZE: 10px">
																<b>
																	<span style="COLOR: #535353">CPF/CNPJ:
																	</span> 
																</b>
															<xsl:value-of select="CUSTOMERSDATA/DATA[@ID='rep_cpfcnpjempresa']/@VALUE" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" /> 
															</td>
														</tr>
														<tr>
															<td style="FONT-SIZE: 10px">
																<b>
																	<span style="COLOR: #535353">Endereço:
																	</span> 
																</b>
															<xsl:value-of select="CUSTOMERSDATA/DATA[@ID='rep_enderecoempresa']/@VALUE" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" /> 
															</td>
															<td style="FONT-SIZE: 10px">
																<b>
																	<span style="COLOR: #535353">CEP:
																	</span> 
																</b>
															<xsl:value-of select="CUSTOMERSDATA/DATA[@ID='rep_cepenpresa']/@VALUE" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" /> 
															</td>
														</tr>
														<tr>
															<td style="FONT-SIZE: 10px">
																<b>
																	<span style="COLOR: #535353">Bairro:
																	</span> 
																</b>
															<xsl:value-of select="CUSTOMERSDATA/DATA[@ID='rep_bairroempresa']/@VALUE" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" /> 
															</td>
															<td style="FONT-SIZE: 10px">
																<b>
																	<span style="COLOR: #535353">UF:
																	</span> 
																</b>
															<xsl:value-of select="CUSTOMERSDATA/DATA[@ID='rep_ufempresa']/@VALUE" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" /> 
															</td>
														</tr>
														<tr>
															<td style="FONT-SIZE: 10px">
																<b>
																	<span style="COLOR: #535353">Cidade:
																	</span> 
																</b>
															<xsl:value-of select="CUSTOMERSDATA/DATA[@ID='rep_cidadeempresa']/@VALUE" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" /> 
															</td>
														</tr>
														<tr>
															<td style="FONT-SIZE: 10px">
																<b>
																	<span style="COLOR: #535353">Telefone:
																	</span> 
																</b>
															<xsl:value-of select="CUSTOMERSDATA/DATA[@ID='rep_telefoneempresa']/@VALUE" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" /> 
															</td>	
	                                                    </tr>
														<tr>
															<td style="FONT-SIZE: 10px" colspan="2">
																<b>
																	<span style="COLOR: #535353">E-mail:
																	</span> 
																</b>
															<xsl:value-of select="CUSTOMERSDATA/DATA[@ID='rep_emailempresa']/@VALUE" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" /> 
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

						<tr id="CUSTOMERSDATA">
							<td align="middle">
							<!-- gerar dados cliente -->
								<table style="BORDER-RIGHT: #818181 1px solid; BORDER-TOP: #818181 1px solid; FONT-SIZE: 12px; BORDER-LEFT: #818181 1px solid; BORDER-BOTTOM: #818181 1px solid; FONT-FAMILY: Tahoma; BORDER-COLLAPSE: collapse" cellspacing="0" cellpadding="0" width="100%" border="0">
									<tbody>
										<tr>
											<td style="PADDING-RIGHT: 5px; PADDING-LEFT: 5px; FONT-SIZE: 16px; PADDING-BOTTOM: 5px; COLOR: #808080; PADDING-TOP: 5px; BORDER-BOTTOM: #818181 1px solid" bgcolor="#eeeeee">
												<b>Dados do Cliente:
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
																	<span style="COLOR: #535353">Nome:
																	</span> 
																</b>
															<xsl:value-of select="CUSTOMERSDATA/DATA[@ID='nomecliente']/@VALUE" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" /> 
															</td>
															<td style="FONT-SIZE: 10px">
																<b>
																	<span style="COLOR: #535353">CPF/CNPJ:
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
						
						<tr id="TOTALS">
							<td>
							<!-- gerar totais -->
								<table style="BORDER-RIGHT: #818181 1px solid; BORDER-TOP: #818181 1px solid; BORDER-LEFT: #818181 1px solid; BORDER-BOTTOM: #818181 1px solid" cellspacing="0" cellpadding="0" width="100%" border="0">
									<tbody>
										<tr bgcolor="#eeeeee">
											<td style="PADDING-LEFT: 5px; FONT-WEIGHT: bold; FONT-SIZE: 10px; WIDTH: 80px; COLOR: #818181; LINE-HEIGHT: 20px; FONT-FAMILY: Arial" height="30">
												<b>
													<span style="COLOR: #808080">Total orçado:
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
							
							<xsl:if test="count(ITEMSWITHOUTPRICE) &gt; 0">
								<tr>
									<td style="PADDING: 5px; COLOR: black; FONT-SIZE: 16px; text-align:center; " bgcolor="red">
										<b>O Orçamento possui itens abaixo relacionados sem preço. A Fábrica deve ser contactada, pois o valor final no pedido de compra pode divergir.
										</b>
									</td>
								</tr>	
								<td valign="middle">
									<table style="BORDER-BOTTOM: #cacaca 1px solid; BORDER-LEFT: #cacaca 1px solid; MARGIN-TOP: 5px; BORDER-COLLAPSE: collapse; BORDER-TOP: #cacaca 1px solid; BORDER-RIGHT: #cacaca 1px solid" border="1" cellspacing="0" cellpadding="0" width="630">
										<xsl:for-each select="ITEMSWITHOUTPRICE">
											<thead>
												<tr id="columns" align="center" bgcolor="#e9e9e9">
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
													<th id="reference" width="27%">
														<b>Referência 
														</b>
													</th>
													<th id="description" width="31%">
														<b>Descrição 
														</b>
													</th>
													<th id="size" width="15%">
														<b>Dimensões 
														</b>
													</th>
												</tr>
											</thead>
											<xsl:call-template name="PercorrerItensSemPreco">
											</xsl:call-template>
										</xsl:for-each>
									</table>
								</td>									
								
							</xsl:if>								
						</tr>

						<tr id="OBSERVATIONS">
							<td valign="center">
								<table cellspacing="0" cellpadding="0" width="100%" border="0">
									<tbody>
										<tr>
											<td class="textoorc" style="PADDING-RIGHT: 5px; PADDING-LEFT: 5px; FONT-SIZE: 10px; PADDING-BOTTOM: 5px; COLOR: #818181; LINE-HEIGHT: 20px; PADDING-TOP: 5px; FONT-FAMILY: Arial" valign="top">
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
							<td valign="top" align="middle">
								<table cellspacing="0" cellpadding="0" width="78%" border="0">
									<tbody>
										<tr>
											<td style="FONT-SIZE: 10px; FONT-FAMILY: Arial" valign="top" align="middle">_____________________________________
												<br>
													<b>Assinatura Cliente
													</b>
												</br>
											</td>
											<td width="50">
											</td>
											<td style="FONT-SIZE: 10px; FONT-FAMILY: Arial" valign="top" align="middle">_____________________________________
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
								<td align="middle">©Promob Studio. Todos os direitos reservados
								</td>
							</tr>
						</tfoot>

					</table>
				</body>
			</html>
		</xsl:template>
		
<xsl:template name="PercorrerItensSemPreco" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:if test="count(ITEM) &gt; 0">
		<xsl:for-each select="ITEM">
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
					<xsl:value-of select="@DESCRIPTION" />
				</td>
				<td align="center">
					<xsl:value-of select="@TEXTDIMENSION" />
				</td>
			</tbody>
		</xsl:for-each>
	</xsl:if>
</xsl:template>		
		
		
		
	</xsl:stylesheet>

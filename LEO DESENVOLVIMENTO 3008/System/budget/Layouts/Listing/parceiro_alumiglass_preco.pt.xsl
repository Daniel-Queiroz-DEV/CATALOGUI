<?xml version="1.0" encoding="utf-8"?>
	<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
		<xsl:decimal-format name="formato" decimal-separator="," grouping-separator="." />
		<xsl:output method="html"/>
		<xsl:template match="LISTING">
			<html generator="ProMob.Cadastro">
				<head>
					<title>Pedido Alumiglass</title>
					<link href="%pastasistema%\Budget\Layouts\Listing\formatacao.css" rel="stylesheet" type="text/css"/>
				</head>
				<body>
					<table align="center" border="0">
						<thead id="HEADER">
							<tr>
								<td align="middle">
									<table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-COLLAPSE: collapse; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="1" bordercolor="#dfdfdf" width="100%" bgcolor="#eeeeee">
										<tbody>
											<tr>
												<td style="PADDING-BOTTOM: 10px; PADDING-LEFT: 10px; PADDING-RIGHT: 10px; PADDING-TOP: 10px" width="1%">
													<img src="%pastasistema%/identity/logo_alumiglass.png">
													</img> 
												</td>
												<td style="PADDING-BOTTOM: 10px; PADDING-LEFT: 10px; PADDING-RIGHT: 10px; PADDING-TOP: 10px" valign="top">
													<table border="0" cellspacing="0" cellpadding="3" width="100%">
														<tbody>
															<tr>
																<td style="FONT-FAMILY: Arial; HEIGHT: 30px; COLOR: #556982; FONT-SIZE: 16px; FONT-WEIGHT: bold" valign="top" colspan="2">Dados do parceiro 
																</td>
															</tr>
															<tr>
																<td style="COLOR: #535353" width="100%" align="left">
																	<b>Nome: 
																	</b>Alumiglass Acessórios p/ Móveis Ltda®
																</td>
															</tr>
															<tr>
																<td style="COLOR: #535353" width="100%" align="left">
																	<b>Endereço:
																	</b>  Rua: Santo Bortolini, 785; Bairro: Bela Vista - Caxias do Sul/RS - 95076-087

																</td>
															</tr>
															<tr>
																<td style="COLOR: #535353" width="100%" align="left">
																	<b>Telefone: 
																	</b>+55 54 3208 4345

																</td>
															</tr>
															<tr>
																<td style="COLOR: #535353" width="100%" align="left">
																	<b>E-mail: </b>marcelo@alumiglass.com.br
																</td>
															</tr>
															<tr>
																<td style="COLOR: #535353" width="100%" align="left">
																	<b>Website: 
																	</b> http://www.alumiglass.com.br
																</td>
															</tr>
														</tbody>
													</table>
												</td>
											</tr>
										</tbody>
									</table>
									<table border="0" width="630">
										<tbody>
											<tr>
												<td style="FONT-FAMILY: Arial; COLOR: #556982; FONT-SIZE: 12px; FONT-WEIGHT: bold; PADDING-TOP: 20px" width="400">Data: 
												<xsl:value-of select="@DATE" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" />
													<span style="MARGIN: 0px; WIDTH: 10px">
													</span> Hora: 
												<xsl:value-of select="@HOUR" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" />
												</td>
											</tr>
										</tbody>
									</table>
								</td>
							</tr>
						</thead>

						<tbody>
						<tr id="CUSTOMERDATA">
							<td valign="center">
								<table style="BORDER-BOTTOM: #818181 1px solid; BORDER-LEFT: #818181 1px solid; BORDER-COLLAPSE: collapse; FONT-FAMILY: Tahoma; FONT-SIZE: 12px; BORDER-TOP: #818181 1px solid; BORDER-RIGHT: #818181 1px solid" border="0" cellspacing="0" cellpadding="0" width="100%">
									<tbody>
										<tr>
											<td style="BORDER-BOTTOM: #818181 1px solid; PADDING-BOTTOM: 5px; PADDING-LEFT: 5px; PADDING-RIGHT: 5px; COLOR: #556982; FONT-SIZE: 16px; PADDING-TOP: 5px" bgcolor="#eeeeee">
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

						<tr id="COMPANYDATA" templatetext="Estilo Padrão">
							<td valign="center">
								<table style="BORDER-BOTTOM: #818181 1px solid; BORDER-LEFT: #818181 1px solid; BORDER-COLLAPSE: collapse; FONT-FAMILY: Tahoma; FONT-SIZE: 12px; BORDER-TOP: #818181 1px solid; BORDER-RIGHT: #818181 1px solid" border="0" cellspacing="0" cellpadding="0" width="100%">
									<tbody>
										<tr>
											<td style="BORDER-BOTTOM: #818181 1px solid; PADDING-BOTTOM: 5px; PADDING-LEFT: 5px; PADDING-RIGHT: 5px; COLOR: #556982; FONT-SIZE: 16px; PADDING-TOP: 5px" bgcolor="#eeeeee">
												<b>Dados da loja: 
												</b>
											</td>
										</tr>
										<tr>
											<td style="PADDING-BOTTOM: 5px; LINE-HEIGHT: 20px; PADDING-LEFT: 5px; PADDING-RIGHT: 5px; PADDING-TOP: 5px" height="22" width="592">
												<table border="0" cellspacing="5" cellpadding="2" width="100%">
													<tbody>
														<tr>
															<td style="WIDTH: 50%; FONT-SIZE: 10px">
																<b>
																	<span style="COLOR: #535353" width="50%">Nome: 
																	</span>
																</b>
															<xsl:value-of select="CUSTOMERSDATA/DATA[@ID='rep_nomeempresa']/@VALUE" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" /> 
															</td>
															<td style="WIDTH: 50%; FONT-SIZE: 10px">
																<b>
																	<span style="COLOR: #535353" width="50%">Endereço: 
																	</span>
																</b>
															<xsl:value-of select="CUSTOMERSDATA/DATA[@ID='rep_enderecoempresa']/@VALUE" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" /> 
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
																	<span style="COLOR: #535353">CEP: 
																	</span>
																</b>
															<xsl:value-of select="CUSTOMERSDATA/DATA[@ID='rep_cepenpresa']/@VALUE" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" /> 
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
																	<span style="COLOR: #535353">Telefone: 
																	</span>
																</b>
															<xsl:value-of select="CUSTOMERSDATA/DATA[@ID='rep_telefoneempresa']/@VALUE" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" /> 
															</td>
															<td style="FONT-SIZE: 10px">
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
						
						<tr id="BODY" templatetext="Módulos explodidos por categoria">
							<td valign="top">
								<xsl:for-each xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="AMBIENTS/AMBIENT">
									<xsl:if test="count(CATEGORIES/CATEGORY) &gt; 0">
										<table border="0" cellspacing="0" cellpadding="0" width="100%">
											<tbody>
												<tr>
													<td style="COLOR: #808080; FONT-SIZE: 12px" colspan="7">
														<b>
														<xsl:value-of select="@DESCRIPTION" /> 
														</b>
													</td>
												</tr>
											</tbody>
										</table>
										<table style="BORDER-BOTTOM: #cacaca 1px solid; BORDER-LEFT: #cacaca 1px solid; MARGIN-TOP: 5px; BORDER-COLLAPSE: collapse; BORDER-TOP: #cacaca 1px solid; BORDER-RIGHT: #cacaca 1px solid" border="1" cellspacing="0" cellpadding="0" width="100%">
											<xsl:for-each select="CATEGORIES/CATEGORY">
												<thead>
													<tr height="20">
														<td style="PADDING-LEFT: 8px" colspan="7">
															- <xsl:value-of select="@DESCRIPTION" />
														</td>
													</tr>
													<tr id="columns" bgcolor="#e9e9e9">
														<th id="item" height="30" width="3%">
															<b>Item 
															</b>
														</th>
														<th id="quantity" width="6%">
															<b>Qtd 
															</b>
														</th>
														<th id="repetition" width="6%">
															<b>Repetição
															</b>
														</th>
														<th id="reference" width="15%">
															<b>Referência 
															</b>
														</th>
														<th id="description" width="25%">
															<b>Descrição 
															</b>
														</th>
														<th id="size" width="17%">
															<b>Dimensões 
															</b>
														</th>
														<th id="orderprice" width="11%" align="right">
															<b>Preço 
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
											</xsl:for-each>
											<tbody>
											</tbody>
										</table>
										<br>
										</br>
									</xsl:if>
								</xsl:for-each>
							</td>
						</tr>

						<tr>
							<td>
								<table style="BORDER-RIGHT: #cecece 1px solid; BORDER-TOP: #cecece 1px solid; BORDER-LEFT: #cecece 1px solid; BORDER-BOTTOM: #cecece 1px solid" cellspacing="0" cellpadding="0" width="100%" border="0">
									<tbody>
										<tr bgcolor="#e9e9e9">
											<td style="PADDING-LEFT: 5px; FONT-WEIGHT: bold; FONT-SIZE: 10px; WIDTH: 110px; COLOR: #818181; LINE-HEIGHT: 20px; FONT-FAMILY: Arial">
												<b>
													<span style="COLOR: #535353">Subtotal: 
													</span>
												</b>
											</td>
											<td>
												<sub>
													<hr style="BORDER-RIGHT: black 1px dotted; BORDER-TOP: black 1px dotted; BORDER-LEFT: black 1px dotted; BORDER-BOTTOM: black 1px dotted" width="100%" size="1">
													</hr>
												</sub>
											</td>
											<td style="PADDING-RIGHT: 5px; FONT-SIZE: 10px; FONT-FAMILY: Arial" align="right" width="65">
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
						
						
						<tr id="PAYMENTTERMS">
						<!-- gerar condicoes pagamento -->
							<td valign="center">
								<xsl:if xmlns:xsl="http://www.w3.org/1999/XSL/Transform" test="count(PAYMENTTERMS) &gt; 0">
									<table style="BORDER-BOTTOM: #cecece 1px solid; BORDER-LEFT: #cecece 1px solid; BORDER-TOP: #cecece 1px solid; BORDER-RIGHT: #cecece 1px solid" border="0" cellspacing="0" cellpadding="0" width="100%">
										<tbody>
											<tr>
												<td style="PADDING-BOTTOM: 5px; PADDING-LEFT: 5px; PADDING-RIGHT: 5px; COLOR: #808080; FONT-SIZE: 12px; PADDING-TOP: 5px" colspan="7">
													<b>Condições de Pagamento 
													</b>
												</td>
											</tr>
											<tr align="middle" bgcolor="#e9e9e9">
												<th style="PADDING-BOTTOM: 5px; PADDING-LEFT: 5px; PADDING-RIGHT: 5px; PADDING-TOP: 5px" height="20" width="25%">
													<b>Descrição 
													</b>
												</th>
												<th style="PADDING-BOTTOM: 5px; PADDING-LEFT: 5px; PADDING-RIGHT: 5px; PADDING-TOP: 5px" width="25%">
													<b>Valor para parcelar 
													</b>
												</th>
												<th style="PADDING-BOTTOM: 5px; PADDING-LEFT: 5px; PADDING-RIGHT: 5px; PADDING-TOP: 5px" width="25%">
													<b>Valor das Parcelas 
													</b>
												</th>
												<th style="PADDING-BOTTOM: 5px; PADDING-LEFT: 5px; PADDING-RIGHT: 5px; PADDING-TOP: 5px" width="25%">
													<b>Valor Total 
													</b>
												</th>
											</tr>
											<tbody>
												<xsl:for-each select="PAYMENTTERMS/PAYMENTTERMCOLLECTION/PAYMENTTERM">
													<tr>
														<td style="PADDING-BOTTOM: 5px; PADDING-LEFT: 5px; PADDING-RIGHT: 5px; PADDING-TOP: 5px" align="middle">
															<b>
															<xsl:value-of select="@DESCRIPTION" /> 
															</b>
														</td>
														<td style="PADDING-BOTTOM: 5px; PADDING-LEFT: 5px; PADDING-RIGHT: 5px; PADDING-TOP: 5px" align="middle">
														<xsl:value-of select="format-number(@PARCELEDTOTAL, '###.##0,00', 'formato')" /> 
														</td>
														<td style="PADDING-BOTTOM: 5px; PADDING-LEFT: 5px; PADDING-RIGHT: 5px; PADDING-TOP: 5px" align="middle">
														<xsl:value-of select="format-number(@PARCELVALUE, '###.##0,00', 'formato')" /> 
														</td>
														<td style="PADDING-BOTTOM: 5px; PADDING-LEFT: 5px; PADDING-RIGHT: 5px; PADDING-TOP: 5px" align="middle">
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
								<xsl:if test="PAYMENTTERMS/ADITIONALENTRYCOLLECTION/ADITIONALENTRY/@VALUE &gt; 0">  
									<table style="BORDER-BOTTOM: #cecece 1px solid; BORDER-LEFT: #cecece 1px solid; BORDER-TOP: #cecece 1px solid; BORDER-RIGHT: #cecece 1px solid" border="0" cellspacing="0" cellpadding="0" width="100%">
										<tbody>
											<tr>
												<td style="PADDING-BOTTOM: 5px; PADDING-LEFT: 5px; PADDING-RIGHT: 5px; COLOR: #808080; FONT-SIZE: 12px; PADDING-TOP: 5px" colspan="7">
													<b>Variáveis
													</b>
												</td>
											</tr>
											<tr align="middle" bgcolor="#e9e9e9">
												<th style="PADDING-BOTTOM: 5px; PADDING-LEFT: 5px; PADDING-RIGHT: 5px; PADDING-TOP: 5px" height="20" width="50%">
													<b>Descrição 
													</b>
												</th>
												<th style="PADDING-BOTTOM: 5px; PADDING-LEFT: 5px; PADDING-RIGHT: 5px; PADDING-TOP: 5px" width="50%">
													<b>Valor 
													</b>
												</th>
											</tr>
											<tbody>
												<xsl:for-each select="PAYMENTTERMS/ADITIONALENTRYCOLLECTION/ADITIONALENTRY">
													<xsl:if test="@VALUE &gt; 0">
														<tr>
															<td style="PADDING-BOTTOM: 5px; PADDING-LEFT: 5px; PADDING-RIGHT: 5px; PADDING-TOP: 5px" align="middle">
																<b>
																<xsl:value-of select="@DESCRIPTION" /> 
																</b>
															</td>
															<td style="PADDING-BOTTOM: 5px; PADDING-LEFT: 5px; PADDING-RIGHT: 5px; PADDING-TOP: 5px" align="middle">
															<xsl:value-of select="format-number(@VALUE, '###.##0,00', 'formato')" /> 
															</td>
														</tr>
													</xsl:if>
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
													<xsl:if xmlns:xsl="http://www.w3.org/1999/XSL/Transform" test="count(PAYMENTTERMS/PAYMENTTERMCOLLECTION/PAYMENTTERM) &gt; 0">
														<xsl:variable select="translate(PAYMENTTERMS/PAYMENTTERMCOLLECTION/PAYMENTTERM/@GENERALTOTAL, ',', '.')" name="valor">
														</xsl:variable>
													<xsl:value-of select="format-number($valor, '###.##0,00', 'formato')" />
													</xsl:if>
													<xsl:if xmlns:xsl="http://www.w3.org/1999/XSL/Transform" test="count(PAYMENTTERMS/PAYMENTTERMCOLLECTION/PAYMENTTERM) = 0"> 0,00 
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
								<td align="middle">©Promob. Todos os direitos reservados 
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
				<td colspan="7" align="right">
					<xsl:if test="count(TOTALPRICES/MARGINS/BUDGET) &gt; 0">
						<xsl:text>Subtotal - </xsl:text>
						<xsl:variable name="valor" select="translate(TOTALPRICES/MARGINS/BUDGET/@VALUE, ',', '.')" />
						<xsl:value-of select="/LISTING/@CURRENCYSYMBOL" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" /><xsl:text> </xsl:text><xsl:value-of select="format-number(0 + $valor, '###.##0,00', 'formato')" />
					</xsl:if>
					<xsl:if test="count(TOTALPRICES/MARGINS/BUDGET) = 0">
						<xsl:text>Subtotal - </xsl:text>
						<xsl:value-of select="/LISTING/@CURRENCYSYMBOL" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" /><xsl:text> 0,00</xsl:text>
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
			<tbody>
				<td height="25" align="center" style="padding-left:1px;">
					<xsl:number level="any" />
				</td>
				<td align="center">
					<xsl:value-of select="@QUANTITY" />
					<xsl:text> </xsl:text>
					<xsl:value-of select="@UNIT" />
				</td>
				<td align="center">
					<xsl:value-of select="@REPETITION" />
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
			<xsl:if test="count(ITEMS) &gt; 0">
				<xsl:call-template name="PercorrerItens">
					<xsl:with-param name="nivel" select="$nivel + 1" />
					<xsl:with-param name="espacos" select="concat($espacos, '&lt;span style=&quot;margin:0;width:15px&quot;&gt;&lt;/span &gt;')" />
				</xsl:call-template>
			</xsl:if>
		</xsl:template>
		<!-- FIM template="BODY"-->
	
	</xsl:stylesheet>

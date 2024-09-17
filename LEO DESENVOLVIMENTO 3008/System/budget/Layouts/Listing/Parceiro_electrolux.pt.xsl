<?xml version="1.0" encoding="utf-8"?>
	<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
		<xsl:decimal-format name="formato" decimal-separator="," grouping-separator="." />
		<xsl:output method="html"/>
		<xsl:template match="LISTING">
			<html generator="ProMob.Cadastro">
				<head>
					<title>Pedido Fábrica</title>
					<link href="%pastasistema%\Budget\Layouts\Listing\Orcamento.css" rel="stylesheet" type="text/css"/>
				</head>
				<body>
					<table align="center" border="0">
						<thead id="HEADER">
							<tr>
								<td align="middle">
									<table style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none; BORDER-COLLAPSE: collapse" bordercolor="#dfdfdf" width="100%" bgcolor="#eeeeee" border="1">
										<tbody>
											<tr>
												<td style="PADDING-RIGHT: 10px; PADDING-LEFT: 10px; PADDING-BOTTOM: 10px; PADDING-TOP: 10px" width="1%">
													<img height="27" src="%pastasistema%\identity\logoLEO.png" width="100">
													</img> 
												</td>
												<td style="PADDING-RIGHT: 10px; PADDING-LEFT: 10px; PADDING-BOTTOM: 10px; PADDING-TOP: 10px" valign="top">
													<table cellspacing="0" cellpadding="3" width="100%" border="0">
														<tbody>
															<tr>
																<td style="FONT-WEIGHT: bold; FONT-SIZE: 16px; COLOR: #556982; FONT-FAMILY: Arial; HEIGHT: 30px" valign="top" colspan="2">Dados do parceiro 
																</td>
															</tr>
															<tr>
																<td style="COLOR: #535353" align="left" width="100%">
																	<b>Razão Social: 
																	</b> CENTRAL SOB MEDIDA COMERCIO DE MOVEIS LTDA - ME 
																</td>
															</tr>
															<tr>
																<td style="COLOR: #535353" align="left" width="100%">
																	<b>CPF/CNPJ: 
																	</b> 24.147.326/0001-04
																</td>
															</tr>
															<tr>
																<td style="COLOR: #535353" align="left" width="100%">
																	<b>Endereço:
																	</b>RUA WALLACE BARNES,45 
																</td>
															</tr>
															<tr>
																<td style="COLOR: #535353" align="left" width="100%">
																	<b>Telefone:
																	</b>(19)21173465 
																</td>
															</tr>
															
															<tr>								
																<td align="left"><br /></td>	
															</tr>
																																											
														</tbody>
													</table>
												</td>
											</tr>
										</tbody>
									</table>
									<table width="630" border="0">
										<tbody>
											<tr>
												<td style="FONT-WEIGHT: bold; FONT-SIZE: 12px; COLOR: #556982; PADDING-TOP: 20px; FONT-FAMILY: Arial" width="400">Data: 
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
								<table style="BORDER-RIGHT: #818181 1px solid; BORDER-TOP: #818181 1px solid; FONT-SIZE: 12px; BORDER-LEFT: #818181 1px solid; BORDER-BOTTOM: #818181 1px solid; FONT-FAMILY: Tahoma; BORDER-COLLAPSE: collapse" cellspacing="0" cellpadding="0" width="100%" border="0">
									<tbody>
										<tr>
											<td style="PADDING-RIGHT: 5px; PADDING-LEFT: 5px; FONT-SIZE: 16px; PADDING-BOTTOM: 5px; COLOR: #808080; PADDING-TOP: 5px; BORDER-BOTTOM: #818181 1px solid" bgcolor="#eeeeee">
												<b>Dados do cliente: 
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
								<table style="BORDER-RIGHT: #818181 1px solid; BORDER-TOP: #818181 1px solid; FONT-SIZE: 12px; BORDER-LEFT: #818181 1px solid; BORDER-BOTTOM: #818181 1px solid; FONT-FAMILY: Tahoma; BORDER-COLLAPSE: collapse" cellspacing="0" cellpadding="0" width="100%" border="0">
									<tbody>
										<tr>
											<td style="PADDING-RIGHT: 5px; PADDING-LEFT: 5px; FONT-SIZE: 16px; PADDING-BOTTOM: 5px; COLOR: #556982; PADDING-TOP: 5px; BORDER-BOTTOM: #818181 1px solid" bgcolor="#eeeeee">
												<b>Dados da Empresa: 
												</b>
											</td>
										</tr>
										<tr>
											<td style="PADDING-RIGHT: 5px; PADDING-LEFT: 5px; PADDING-BOTTOM: 5px; LINE-HEIGHT: 20px; PADDING-TOP: 5px" width="592" height="22">
												<table cellspacing="5" cellpadding="2" width="100%" border="0">
													<tbody>
														<tr>
															<td style="FONT-SIZE: 10px; WIDTH: 50%">
																<b>
																	<span style="COLOR: #535353" width="50%">Nome: 
																	</span>
																</b>
															<xsl:value-of select="CUSTOMERSDATA/DATA[@ID='rep_nomeempresa']/@VALUE" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" /> 
															</td>
															<td style="FONT-SIZE: 10px; WIDTH: 50%">
																<b>
																	<span style="COLOR: #535353" width="50%">CPF/CNPJ: 
																	</span>
																</b>
															<xsl:value-of select="CUSTOMERSDATA/DATA[@ID='rep_cpfcnpjempresa']/@VALUE" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" /> 
															</td>															
															<td style="FONT-SIZE: 10px; WIDTH: 50%">
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

						<tr id="TOTALS">
							<td>
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
												<b>R$ 
													<xsl:if xmlns:xsl="http://www.w3.org/1999/XSL/Transform" test="count(TOTALPRICES/MARGINS/BUDGET) &gt; 0">
														<xsl:variable name="valor" select="translate(TOTALPRICES/MARGINS/BUDGET/@VALUE, ',', '.')">
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

						</tbody>						
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


						</tbody>
						<tfoot id="FOOTER">
							<tr>
								<td align="middle">®Promob. Todos os direitos reservados. 
								</td>
							</tr>
						</tfoot>

					</table>
				</body>
			</html>
		</xsl:template>
<!--template="BODY"-->
<xsl:template name="PercorrerItens" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:if test="count(ITEMS) &gt; 0">
    <xsl:for-each select="ITEMS/ITEM">
      <xsl:call-template name="GerarItem" />
    </xsl:for-each>
  </xsl:if>
</xsl:template>
<xsl:template name="GerarItem" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
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
      <xsl:value-of select="@DESCRIPTION" />
    </td>
    <td align="center">
      <xsl:value-of select="@TEXTDIMENSION" />
    </td>
    
  </tbody>
  <xsl:if test="count(ITEMS) &gt; 0">
    <xsl:call-template name="PercorrerItens" />
  </xsl:if>
</xsl:template>

	</xsl:stylesheet>

﻿<?xml version="1.0" encoding="utf-8"?>
	<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
		<xsl:decimal-format name="formato" decimal-separator="," grouping-separator="." />
		<xsl:output method="html"/>
		<xsl:template match="LISTING">
			<html generator="ProMob.Cadastro">
				<head>
					<title>Parceiro Electrolux</title>
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
													<img height="27" src="%pastasistema%/identity/logoElectrolux.gif" width="100">
													</img> 
												</td>
												<td style="PADDING-RIGHT: 10px; PADDING-LEFT: 10px; PADDING-BOTTOM: 10px; PADDING-TOP: 10px" valign="top">
													<table cellspacing="0" cellpadding="3" width="100%" border="0">
														<tbody>
															<tr>
																<td style="FONT-WEIGHT: bold; FONT-SIZE: 16px; COLOR: #556982; FONT-FAMILY: Arial; HEIGHT: 30px" valign="top" colspan="2">Partner Data 
																</td>
															</tr>
															<tr>
																<td style="COLOR: #535353" align="left" width="100%">
																	<b>Name: 
																	</b> Loja Electrolux 
																</td>
															</tr>
															<tr>
																<td style="COLOR: #535353" align="left" width="100%">
																	<b>E-mail: 
																	</b> vendas@lojaelectrolux.com.br 
																</td>
															</tr>
															<tr>
																<td style="COLOR: #535353" align="left" width="100%">
																	<b>Website:
																	</b>www.Electrolux.com.br 
																</td>
															</tr>

															<tr>								
																<td align="left"><br /></td>	
															</tr>
															
															<tr>
																<td style="COLOR: #535353" align="left" width="100%">
																	<b>Para consulta de preços acesse o website acima. </b>
																</td>
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
												<td style="FONT-WEIGHT: bold; FONT-SIZE: 12px; COLOR: #556982; PADDING-TOP: 20px; FONT-FAMILY: Arial" width="400">Date: 
												<xsl:value-of select="@DATE" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" />
													<span style="MARGIN: 0px; WIDTH: 10px">
													</span> Time: 
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
												<b>Customer Data: 
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

						<tr id="COMPANYDATA" templatetext="Estilo Padrão">
							<td valign="center">
								<table style="BORDER-RIGHT: #818181 1px solid; BORDER-TOP: #818181 1px solid; FONT-SIZE: 12px; BORDER-LEFT: #818181 1px solid; BORDER-BOTTOM: #818181 1px solid; FONT-FAMILY: Tahoma; BORDER-COLLAPSE: collapse" cellspacing="0" cellpadding="0" width="100%" border="0">
									<tbody>
										<tr>
											<td style="PADDING-RIGHT: 5px; PADDING-LEFT: 5px; FONT-SIZE: 16px; PADDING-BOTTOM: 5px; COLOR: #556982; PADDING-TOP: 5px; BORDER-BOTTOM: #818181 1px solid" bgcolor="#eeeeee">
												<b>Vendor Data: 
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
																	<span style="COLOR: #535353" width="50%">Name: 
																	</span>
																</b>
															<xsl:value-of select="CUSTOMERSDATA/DATA[@ID='rep_nomeempresa']/@VALUE" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" /> 
															</td>
															<td style="FONT-SIZE: 10px; WIDTH: 50%">
																<b>
																	<span style="COLOR: #535353" width="50%">Address: 
																	</span>
																</b>
															<xsl:value-of select="CUSTOMERSDATA/DATA[@ID='rep_enderecoempresa']/@VALUE" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" /> 
															</td>
														</tr>
														<tr>
															<td style="FONT-SIZE: 10px">
																<b>
																	<span style="COLOR: #535353">District: 
																	</span>
																</b>
															<xsl:value-of select="CUSTOMERSDATA/DATA[@ID='rep_bairroempresa']/@VALUE" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" /> 
															</td>
															<td style="FONT-SIZE: 10px">
																<b>
																	<span style="COLOR: #535353">Zip Code: 
																	</span>
																</b>
															<xsl:value-of select="CUSTOMERSDATA/DATA[@ID='rep_cepenpresa']/@VALUE" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" /> 
															</td>
														</tr>
														<tr>
															<td style="FONT-SIZE: 10px">
																<b>
																	<span style="COLOR: #535353">City: 
																	</span>
																</b>
															<xsl:value-of select="CUSTOMERSDATA/DATA[@ID='rep_cidadeempresa']/@VALUE" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" /> 
															</td>
															<td style="FONT-SIZE: 10px">
																<b>
																	<span style="COLOR: #535353">State: 
																	</span>
																</b>
															<xsl:value-of select="CUSTOMERSDATA/DATA[@ID='rep_ufempresa']/@VALUE" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" /> 
															</td>
														</tr>
														<tr>
															<td style="FONT-SIZE: 10px">
																<b>
																	<span style="COLOR: #535353">Phone: 
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

						<tr id="BODY" templatetext="Módulos montados">
							<td valign="top">
								<xsl:for-each xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="AMBIENTS/AMBIENT">
									<xsl:if test="count(CATEGORIES/CATEGORY) &gt; 0">
										<table cellspacing="0" cellpadding="0" width="100%" border="0">
											<tbody>
												<tr>
													<td style="FONT-SIZE: 12px; COLOR: #556982" colspan="8">
														<b>
														<xsl:value-of select="@DESCRIPTION" /> 
														</b>
													</td>
												</tr>
											</tbody>
										</table>
										<table style="BORDER-RIGHT: #cacaca 1px solid; BORDER-TOP: #cacaca 1px solid; MARGIN-TOP: 5px; BORDER-LEFT: #cacaca 1px solid; BORDER-BOTTOM: #cacaca 1px solid; BORDER-COLLAPSE: collapse" cellspacing="0" cellpadding="0" width="100%" border="1">
											<thead>
												<tr align="middle" bgcolor="#e9e9e9">
													<th id="item" width="4%" height="30">
														<b>Item 
														</b>
													</th>
													<th id="repetition" width="6%">
														<b>Rep 
														</b>
													</th>
													<th id="quantity" width="7%">
														<b>Qty 
														</b>
													</th>
													<th id="reference" width="31%">
														<b>Reference 
														</b>
													</th>
													<th id="description" width="27%">
														<b>Description 
														</b>
													</th>
													<th id="size" width="15%">
														<b>Dimensions 
														</b>
													</th>
												</tr>
											</thead>
											<xsl:for-each select="CATEGORIES/CATEGORY">
												<xsl:call-template name="PercorrerItens">
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


						</tbody>
						<tfoot id="FOOTER">
							<tr>
								<td align="middle">©Promob. All rights reserved. 
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

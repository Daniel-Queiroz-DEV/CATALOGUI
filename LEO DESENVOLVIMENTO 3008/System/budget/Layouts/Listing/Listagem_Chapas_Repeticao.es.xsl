<?xml version="1.0" encoding="utf-8"?>
	<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
		<xsl:decimal-format name="formato" decimal-separator="," grouping-separator="." />
		<xsl:output method="html"/>
		<xsl:template match="LISTING">
			<html generator="ProMob.Cadastro">
				<head>
					<title>Listagem Módulos Montados</title>
					<link href="%pastasistema%\Budget\Layouts\Listing\Orcamento.css" rel="stylesheet" type="text/css"/>
					<script>
						var pasta = external.GetStringVSA('pastaSistema');
						var plus = pasta + "\\identity\\plus.gif";
						var minus = pasta + "\\identity\\minus.gif";
						
						function expandNested(object){
							if (object.parentNode.parentNode.nextSibling.style.display=="none"){
								object.src = minus;
								object.parentNode.parentNode.nextSibling.style.display="";
							}else{
								object.src = plus;
								object.parentNode.parentNode.nextSibling.style.display="none";
							}
							
						
						}
					</script>
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
													<img style="MARGIN-RIGHT: 300px" alt="" hspace="10" src="%pastasistema%\identity\logoCliente.png" align="left" border="0">
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
												<td style="FONT-WEIGHT: bold; FONT-SIZE: 12px; COLOR: #808080; PADDING-TOP: 20px; FONT-FAMILY: Arial" align="right">Listado 
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
										<table style="BORDER-RIGHT: #cacaca 1px solid; BORDER-TOP: #cacaca 1px solid; MARGIN-TOP: 5px; BORDER-LEFT: #cacaca 1px solid; BORDER-BOTTOM: #cacaca 1px solid; BORDER-COLLAPSE: collapse" cellspacing="0" cellpadding="0" width="100%" border="1">
											<thead>
												<tr bgcolor="#e9e9e9">
													<td width="20" height="30">
													</td>
													<td align="middle" width="110">
														<b>Materia Primaa 
														</b>
													</td>
													<td align="middle" width="30">
														<b>Esp 
														</b>
													</td>
													<td align="middle" width="200">
														<b>Acabamiento 
														</b>
													</td>
													<td align="middle" width="150">
														<b>Dimension Max 
														</b>
													</td>
													<td align="middle" width="100">
														<b>Cant M² 
														</b>
													</td>
													<td align="middle" width="100">
														<b>Cant Paneles 
														</b>
													</td>
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
								<td align="middle">
									<br>
										<br>
											<b>
												<span style="COLOR: #535353">
													<span style="COLOR: #535353">Tienda: 
													</span>
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
												</span> 
											</b>
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
<xsl:template name="PercorrerItens" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:if test="count(ITEMS) &gt; 0">
    <xsl:for-each select="ITEMS/ITEM">
      <xsl:call-template name="GerarItem" />
    </xsl:for-each>
  </xsl:if>
</xsl:template>
<xsl:template name="GerarItem" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:if test="count(ITEMS) &gt; 0">
    <tr>
      <td width="20" align="center">
        <img src="%pastasistema%\identity\plus.gif" alt="" width="9" height="9" border="0" onClick="expandNested(this);" style="cursor:pointer;cursor:hand" />
      </td>
      <td align="center" height="25">
        <xsl:value-of select="REFERENCES/MATERIAL/@REFERENCE" />
      </td>
      <td align="center">
        <xsl:value-of select="REFERENCES/THICKNESS/@REFERENCE" />
      </td>
      <td align="center">
        <xsl:value-of select="REFERENCES/MODEL/@REFERENCE" />
      </td>
      <td align="center">
        <xsl:value-of select="REFERENCES/MAXWIDTH/@REFERENCE" /> x <xsl:value-of select="REFERENCES/MAXDEPTH/@REFERENCE" /></td>
      <td align="center">
        <xsl:value-of select="@QUANTITY" />
      </td>
      <xsl:if test="count(REFERENCES/MAXWIDTH) &gt; 0 and count(REFERENCES/MAXDEPTH) &gt; 0">
        <xsl:variable name="largura" select="REFERENCES/MAXWIDTH/@REFERENCE div 1000" />
        <xsl:variable name="profundidade" select="REFERENCES/MAXDEPTH/@REFERENCE div 1000" />
        <xsl:variable name="resultado" select="@QUANTITY div ($largura * $profundidade)" />
        <td align="center">
          <xsl:value-of select="format-number($resultado, '##0,000', 'formato')" />
        </td>
      </xsl:if>
      <xsl:if test="count(REFERENCES/MAXWIDTH) &lt;= 0 or count(REFERENCES/MAXDEPTH) &lt;= 0">
        <td align="center">-</td>
      </xsl:if>
    </tr>
    <tr height="1" style="display:none">
      <td colspan="7" valign="top" align="right">
        <table width="100%" border="0" cellspacing="0" cellpadding="5" style="border-bottom:none;border-left:1px Solid #CECECE">
          <tr bgcolor="#E9E9E9">
            <td align="center" width="10%">
              <b>Repeticion</b>
            </td>
            <td align="center" style="border-left:1px Solid #CECECE">
              <b>Referencia</b>
            </td>
            <td align="center" style="border-left:1px Solid #CECECE">
              <b>Anchura</b>
            </td>
            <td align="center" style="border-left:1px Solid #CECECE">
              <b>Profundidad</b>
            </td>
            <td align="center" style="border-left:1px Solid #CECECE">
              <b>Cant M²</b>
            </td>
          </tr>
          <xsl:call-template name="PercorrerItens" />
        </table>
      </td>
    </tr>
  </xsl:if>
  <xsl:if test="count(ITEMS) &lt;= 0">
    <tr>
      <td align="center">
        <xsl:value-of select="@REPETITION" />
      </td>
      <td align="center" style="border-left:1px Solid #CECECE">
        <xsl:value-of select="@REFERENCE" />
      </td>
      <td align="center" style="border-left:1px Solid #CECECE">
        <xsl:value-of select="@WIDTH" />
      </td>
      <td align="center" style="border-left:1px Solid #CECECE">
        <xsl:value-of select="@DEPTH" />
      </td>
      <td align="center" style="border-left:1px Solid #CECECE">
        <xsl:value-of select="@QUANTITY" />
      </td>
    </tr>
  </xsl:if>
</xsl:template>
<!--/template=-->

	</xsl:stylesheet>

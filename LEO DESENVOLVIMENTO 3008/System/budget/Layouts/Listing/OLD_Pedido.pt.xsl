<?xml version="1.0" encoding="utf-8"?>
	<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
		<xsl:decimal-format name="formato" decimal-separator=',' grouping-separator='.' />
		<xsl:output method="html"/>			  
		<xsl:template match="LISTING">
			
			<html generator="ProMob.Cadastro">
				<head>
					<title>Pedido</title>
					<link href="%pastasistema%\Budget\Layouts\Listing\Pedido.css" rel="stylesheet" type="text/css"/>					
				</head>
				
				<body >
					
					<table align="center" border="0">
						
						<!-- gerar cabecalho -->
                        <thead id="HEADER">
                            <tr>
                                <td align="middle">
                                    <table style="BORDER-RIGHT: #cecece 1px solid; BORDER-TOP: #cecece 1px solid; BORDER-LEFT: #cecece 1px solid; BORDER-BOTTOM: #cecece 1px solid" width="100%" bgcolor="#eeeeee" border="0">
                                        <tbody>
					<tr>
						<td height="70">
							<img src="%pastasistema%\Identity\logoCliente.png" border="0" alt="" hspace="10" align="left" />
						</td>
						<td wifth="1%">
							<img src="%pastasistema%\identity\logoPromob.png" border="0" alt="" align="left"/>
						</td>
					</tr>
				</tbody>
                                    </table>
                                    <table  width="630" border="0" >
                                        <tr>
                                            <td width="400" style="padding-top:20px;font-size:12px;color:#808080;font-weight:bold;font-family:Arial;">
                                                Data: <xsl:value-of select="@DATE"/>
                                                <span style="margin:0;width:10px;"></span>
                                                Hora: <xsl:value-of select="@HOUR"/>
                                            </td>
                                            <td align="right" style="padding-top:20px;font-size:12px;color:#808080;font-weight:bold;font-family:Arial;">
                                                Pedido
                                            </td>
                                        </tr>
                                    </table>						
                                 </td>
                            </tr>	
                        </thead>
                                    
                        <!-- GERAR CORPO -->
						<tbody>			
                            <tr id="CUSTOMERDATA">
                                <td align="center">
                                    <table width="100%" border="0" cellspacing="0" cellpadding="0" style="border:1px Solid #CECECE;font-family:Tahoma;font-size:12px;border-collapse:collapse;">			
                                        <tr>					
                                            <td bgcolor="#EEEEEE" style="font-size:16px;padding:5px;color:#808080;border-bottom:1px Solid #818181"><b>Dados do cliente:</b></td>
                                        </tr>
                                        
                                        <tr>
                                            <td height="22" width="592" style="line-height:20px;padding:5px;">
                                                <table width="100%" cellspacing="5" cellpadding="2" border="0">
                                                    <tr>
                                                        <td style="font-size:10px;"><b><span style="color:#535353;">Nome:</span></b>
                                                            <xsl:value-of select="CUSTOMERSDATA/DATA[@ID='nomecliente']/@VALUE"/>
                                                        </td>
                                                        <td style="font-size:10px;"><b><span style="color:#535353">CPF:</span></b>
                                                            <xsl:value-of select="CUSTOMERSDATA/DATA[@ID='cpfcnpj']/@VALUE"/>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="font-size:10px;"><b><span style="color:#535353">Endereço:</span></b> 
                                                            <xsl:value-of select="CUSTOMERSDATA/DATA[@ID='endereco']/@VALUE"/>
                                                        </td>
                                                        <td style="font-size:10px;"><b><span style="color:#535353">CEP:</span></b> 
                                                            <xsl:value-of select="CUSTOMERSDATA/DATA[@ID='cep']/@VALUE"/>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="font-size:10px;"><b><span style="color:#535353">Bairro:</span></b>
                                                            <xsl:value-of select="CUSTOMERSDATA/DATA[@ID='bairro']/@VALUE"/>
                                                        </td>
                                                        <td style="font-size:10px;"><b><span style="color:#535353">UF:</span></b> 
                                                            <xsl:value-of select="CUSTOMERSDATA/DATA[@ID='uf']/@VALUE"/>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="font-size:10px;"><b><span style="color:#535353">End. Entrega:</span></b> 
                                                            <xsl:value-of select="CUSTOMERSDATA/DATA[@ID='endentrega']/@VALUE"/>
                                                        </td>
                                                        <td style="font-size:10px;"><b><span style="color:#535353">Cidade:</span></b> 
                                                            <xsl:value-of select="CUSTOMERSDATA/DATA[@ID='cidade']/@VALUE"/>
                                                        </td>								
                                                    </tr>
                                                    <tr>
                                                        <td style="font-size:10px;"><b><span style="color:#535353">Telefone:</span></b> 
                                                            <xsl:value-of select="CUSTOMERSDATA/DATA[@ID='fone']/@VALUE"/>
                                                        </td>
                                                        <td style="font-size:10px;"><b><span style="color:#535353">Celular:</span></b> 
                                                            <xsl:value-of select="CUSTOMERSDATA/DATA[@ID='celular']/@VALUE"/>
                                                        </td>								
                                                    </tr>
                                                    <tr>								
                                                        <td colspan="2" style="font-size:10px;"><b><span style="color:#535353">E-mail:</span></b> 
                                                            <xsl:value-of select="CUSTOMERSDATA/DATA[@ID='email']/@VALUE"/>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    
                                    </table>
                                </td>
                            </tr>
                            
                            <!-- gerar listagem pecas -->
                            <tr id="BODY">
                                <td valign="top">
				
				<xsl:if test="count(ITEMSWITHOUTPRICE) &gt; 0">
					<tr>
						<td style="PADDING: 5px; COLOR: black; FONT-SIZE: 16px; text-align:center; " bgcolor="red">
							<b>Pedido com itens sem preço. A Fábrica deve ser contactada 
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
			
			<xsl:if test="count(ITEMSWITHOUTPRICE) = 0">				
				
                                    <xsl:for-each select="AMBIENTS/AMBIENT">
                
                                        <xsl:if test="count(CATEGORIES/CATEGORY) &gt; 0" >
                                            <table width="100%" cellspacing="0" cellpadding="0">
                                                <tr>
                                                    <td colspan="8" style="font-size:12px;color:#808080;"><b><xsl:value-of select="@DESCRIPTION"/></b></td>
                                                </tr>
                                            </table>
                                            
                                            <table width="100%" border="1" cellspacing="0" cellpadding="0" style="border:1px Solid #CECECE;border-collapse:collapse;margin-top:5px;">
                                                
                                                <xsl:for-each select="CATEGORIES/CATEGORY">
                                                    
                                                    <thead>
                                                        <tr height="20">
                                                            <td colspan="8" style="padding-left:5px;">- <xsl:value-of select="@DESCRIPTION"/></td>
                                                        </tr>
                                                        <tr  bgcolor="#E9E9E9">
                                                            <tr id="columns" bgcolor="#E9E9E9" align="center">
                                                            <th id="item" width="4%" height="30"><b>Ítem</b></th>
                                                            <th id="repetition" width="4%" ><b>Rep</b></th>
                                                            <th id="quantity" width="8%"><b>Qtd</b></th>
                                                            <th id="reference" width="18%"><b>Referência</b></th>
                                                            <th id="description" width="33%"><b>Descrição</b></th>
                                                            <th id="size" width="17%"><b>Dimensões</b></th>
                                                            <th id="orderprice" width="8%"><b>Preço<br/>Tabela</b></th>
                                                            <th id="salesprice" width="8%"><b>Preço<br/>Final</b></th>
                                                        </tr>				
                                                        </tr>
                                                    </thead>
                                                    
                                                    <xsl:call-template name="PercorrerItens">
                                                        <xsl:with-param name="nivel" select="0"/>
                                                    </xsl:call-template>	
                                                    
                                                    <tr>
                                                        <td id="totalprice" colspan="6" colcnt="2">
                                                            <td align="right">  					
                                                                <xsl:if test="count(TOTALPRICES) &gt; 0" >											
                                                                    <xsl:variable name="valor" select="translate(TOTALPRICES/@TABLE, ',', '.')" />
                                                                    <xsl:value-of select="format-number($valor, '###.##0,00', 'formato')"/>
                                                                </xsl:if>
                                                                <xsl:if test="count(TOTALPRICES) = 0" >							
                                                                    0,00
                                                                </xsl:if>
                                                            </td>
                                                            <td align="right">  
                                                                <xsl:if test="count(TOTALPRICES/MARGINS/ORDER) &gt; 0" >											
                                                                    <xsl:variable name="valor" select="translate(TOTALPRICES/MARGINS/ORDER/@VALUE, ',', '.')" />
                                                                    <xsl:value-of select="format-number($valor, '###.##0,00', 'formato')"/>
                                                                </xsl:if>
                                                                <xsl:if test="count(TOTALPRICES/MARGINS/ORDER) = 0" >							
                                                                    0,00
                                                                </xsl:if>
                                                            </td>
                                                        </td>
                                                    </tr>
                                                    
                                                </xsl:for-each>								
                                            </table>
                                            <br/>
                                            <br/>
                                            
                                            <table width="100%" border="0" cellspacing="0" cellpadding="0" style="border:1px Solid #CECECE;">
                        
                                                <tr  bgcolor="#E9E9E9">
                                                    <td style="width:80px;color:#818181;line-height:20px;padding-left:5px;font-size:10px;font-family:Arial;font-weight:bold;">
                                                        <b><span style="color:#535353">Total tabela:</span></b>
                                                    </td>
                                                    <td>
                                                        <sub><hr width="100%" size="1" style="border:1px Dotted Black;"/></sub>
                                                    </td>
                                                    <td width="65" align="right" style="padding-right:5px;font-size:10px;font-family:Arial;">
                                                        <b>
                                                        <span style="PADDING-RIGHT: 2px">
												    	<xsl:value-of select="/LISTING/@CURRENCYSYMBOL" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" /> 
													    </span>
                                                        <xsl:if test="count(TOTALPRICES) &gt; 0" >											
                                                            <xsl:if test="count(TOTALPRICES/@TABLE) &gt; 0" >	
                                                                <xsl:variable name="valor" select="translate(TOTALPRICES/@TABLE, ',', '.')" />
                                                                <xsl:value-of select="format-number($valor, '###.##0,00', 'formato')"/>
                                                            </xsl:if>
                                                        </xsl:if>
                                                        <xsl:if test="count(TOTALPRICES) = 0" >							
                                                            0,00
                                                        </xsl:if>
                                                        <xsl:if test="count(TOTALPRICES/@TABLE) = 0" >							
                                                            0,00
                                                        </xsl:if>
                                                        </b>
                                                    </td>
                                                </tr>							
                                                
                                                <tr  bgcolor="#E9E9E9">
                                                    <td style="width:80px;color:#818181;line-height:20px;padding-left:5px;font-size:10px;font-family:Arial;font-weight:bold;">
                                                        <b><span style="color:#535353">Total final:</span></b>
                                                    </td>
                                                    <td>
                                                        <sub><hr width="100%" size="1" style="border:1px Dotted Black;"/></sub>
                                                    </td>
                                                    <td width="65" align="right" style="padding-right:5px;font-size:10px;font-family:Arial;">
                                                        <b>
                                                        <span style="PADDING-RIGHT: 2px">
													    <xsl:value-of select="/LISTING/@CURRENCYSYMBOL" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" /> 
													    </span>
                                                        <xsl:if test="count(TOTALPRICES/MARGINS/ORDER) &gt; 0" >											
                                                            <xsl:variable name="valor" select="translate(TOTALPRICES/MARGINS/ORDER/@VALUE, ',', '.')" />
                                                            <xsl:value-of select="format-number($valor, '###.##0,00', 'formato')"/>
                                                        </xsl:if>
                                                        <xsl:if test="count(TOTALPRICES/MARGINS/ORDER) = 0" >							
                                                            0,00
                                                        </xsl:if>
                                                        </b>
                                                    </td>
                                                </tr>
                                            </table>
                                            
                                            
                                            <br/>
                                        </xsl:if>
                                        
                                    </xsl:for-each>	
			</xsl:if>
			</td>
				
				
                            </tr>
                            
                        </tbody>
                        
                        <!-- gerar rodape -->
                        <tfoot id="FOOTER">
                            <tr>
                                <td align="center">
                                    <br/>
                                    <br/>
                                    <b><span style="color:#535353">Razão social:</span></b> 						
                                    <span style="margin:0;width:5px;"></span>
                                    <xsl:value-of select="CUSTOMERSDATA/DATA[@ID='rep_nomeempresa']/@VALUE"/> 
                                    <span style="margin:0;width:10px;"></span>	
                                    | 
                                    <span style="margin:0;width:10px;"></span>						
                                    <b><span style="color:#535353">Endereço:</span></b>
                                    <span style="margin:0;width:5px;"></span>						
                                    <xsl:value-of select="CUSTOMERSDATA/DATA[@ID='rep_enderecoempresa']/@VALUE"/>
                                    <span style="margin:0;width:10px;"></span>
                                    | 
                                    <span style="margin:0;width:10px;"></span>
                                    <b><span style="color:#535353">Telefone:</span></b>
                                    <span style="margin:0;width:5px;"></span>						
                                    <xsl:value-of select="CUSTOMERSDATA/DATA[@ID='rep_telefoneempresa']/@VALUE"/>
                                </td>
                            </tr>
                            <tr>
                                <td align="center">© Promob Studio. Todos os direitos reservados</td>
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


		<!--template="BODY"-->
		<xsl:template name="PercorrerItens">
			<xsl:param name="nivel"/>
			<xsl:param name="espacos"/>
			
			<xsl:if test="count(ITEMS) &gt; 0" >															
				<xsl:for-each select="ITEMS/ITEM">
					<xsl:call-template name="GerarItem">
						<xsl:with-param name="nivel" select="$nivel"/>
						<xsl:with-param name="espacos" select="$espacos"/>
					</xsl:call-template>
				</xsl:for-each>									
			</xsl:if>			
		
		</xsl:template>	
		
		<xsl:template name="GerarItem">
			<xsl:param name="nivel"/>
			<xsl:param name="espacos"/>
			<xsl:if test="((count(REFERENCES) = 0) or 
(count(REFERENCES) &gt; 0 and count(REFERENCES/HIDE_STRUCTURE) = 0) or 
(count(REFERENCES) &gt; 0 and count(REFERENCES/HIDE_STRUCTURE) &gt; 0 and count(REFERENCES/HIDE_STRUCTURE/@REFERENCE) &gt; 0 and REFERENCES/HIDE_STRUCTURE/@REFERENCE != 'TRUE'))" >


			<tbody id="columns">
				<td id="item" height="25" align="center" style="padding-left:1px;"><xsl:number level="any"/></td>
				<td id="repetition" align="center"><xsl:value-of select="@REPETITION"/></td>
				<td id="quantity" align="center"><xsl:value-of select="@QUANTITY"/><xsl:text>&#160;</xsl:text><xsl:value-of select="@UNIT"/></td>
				<td id="reference"><xsl:text>&#160;</xsl:text><xsl:value-of select="@REFERENCE"/></td>
				<td id="description"><xsl:text>&#160;</xsl:text><xsl:value-of disable-output-escaping="yes" select="$espacos"/><xsl:value-of select="@DESCRIPTION"/></td>
				<td id="size" align="center"><xsl:value-of select="@TEXTDIMENSION"/></td>
				
				<td id="orderprice" align="right" style="padding-right:1px;">								
					
					<xsl:if test="count(PRICE) &gt; 0" >	
						<xsl:variable name="valorPreco" select="translate(PRICE/@TABLE, ',', '.')" />	
						<xsl:variable name="valorComponentes" select="translate(PRICE/@TOTALCOMPONENTS, ',', '.')" />						
						<xsl:value-of select="format-number($valorPreco + $valorComponentes, '###.##0,00', 'formato')"/>						
					</xsl:if>
					<xsl:if test="count(PRICE) = 0" >	
						<xsl:variable name="valorComponentes" select="translate(PRICE/@TOTALCOMPONENTS, ',', '.')" />						
						<xsl:value-of select="format-number(0 + $valorComponentes, '###.##0,00', 'formato')"/>						
					</xsl:if>
				
				</td>									
				
				<td id="salesprice" align="right" style="padding-right:1px;">
				
					<xsl:if test="count(PRICE/MARGINS/ORDER) &gt; 0" >	
						<xsl:variable name="valorPreco" select="translate(PRICE/MARGINS/ORDER/@TOTAL, ',', '.')" />	
						<xsl:variable name="valorComponentes" select="translate(PRICE/MARGINS/ORDER/@TOTALCOMPONENTS, ',', '.')" />						
						<xsl:value-of select="format-number($valorPreco + $valorComponentes, '###.##0,00', 'formato')"/>
					</xsl:if>
					<xsl:if test="count(PRICE/MARGINS/ORDER) = 0" >							
						<xsl:variable name="valorComponentes" select="translate(PRICE/MARGINS/ORDER/@TOTALCOMPONENTS, ',', '.')" />
						<xsl:value-of select="format-number(0 + $valorComponentes, '###.##0,00', 'formato')"/>
					</xsl:if>
				
				</td>											
			</tbody>
			</xsl:if>	
			<xsl:if test="count(ITEMS) &gt; 0" >							
				<xsl:call-template name="PercorrerItens">															
					<xsl:with-param name="nivel" select="$nivel + 1"/>
					<xsl:with-param name="espacos" select="concat($espacos, '&lt;span style=&quot;margin:0;width:15px&quot;&gt;&lt;/span &gt;')"/>
				</xsl:call-template>
			</xsl:if>			
		
		</xsl:template>	
        <!--/template=-->

	</xsl:stylesheet>
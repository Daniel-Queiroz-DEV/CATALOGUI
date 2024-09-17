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
                                <td align="center">
                                    <table width="100%" border="0" bgcolor="#eeeeee" style="border: 1px Solid #CECECE;">
                                        <tr>
                                            <td height="70"><img src="%pastasistema%\Identity\logoCliente.png" border="0" alt="" hspace="10" align="left" /></td><td><img src="%pastasistema%\identity\logoPromob.png" border="0" alt="" align="left"/></td>
                                        </tr>
                                    </table>
                                    <table  width="630" border="0" >
                                        <tr>
                                            <td width="400" style="padding-top:20px;font-size:12px;color:#808080;font-weight:bold;font-family:Arial;">
                                                Fecha: <xsl:value-of select="@DATE"/>
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
                                                        <td style="font-size:10px;"><b><span style="color:#535353;">Nombre:</span></b>
                                                            <xsl:value-of select="CUSTOMERSDATA/DATA[@ID='nomecliente']/@VALUE"/>
                                                        </td>
                                                        <td style="font-size:10px;"><b><span style="color:#535353">C.P:</span></b>
                                                            <xsl:value-of select="CUSTOMERSDATA/DATA[@ID='cpfcnpj']/@VALUE"/>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="font-size:10px;"><b><span style="color:#535353">Dirección:</span></b> 
                                                            <xsl:value-of select="CUSTOMERSDATA/DATA[@ID='endereco']/@VALUE"/>
                                                        </td>
                                                        <td style="font-size:10px;"><b><span style="color:#535353">CUIT/CUIL:</span></b> 
                                                            <xsl:value-of select="CUSTOMERSDATA/DATA[@ID='cep']/@VALUE"/>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="font-size:10px;"><b><span style="color:#535353">Bairro:</span></b>
                                                            <xsl:value-of select="CUSTOMERSDATA/DATA[@ID='bairro']/@VALUE"/>
                                                        </td>
                                                        <td style="font-size:10px;"><b><span style="color:#535353">Estado:</span></b> 
                                                            <xsl:value-of select="CUSTOMERSDATA/DATA[@ID='uf']/@VALUE"/>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="font-size:10px;"><b><span style="color:#535353">Dirección de entrega:</span></b> 
                                                            <xsl:value-of select="CUSTOMERSDATA/DATA[@ID='endentrega']/@VALUE"/>
                                                        </td>
                                                        <td style="font-size:10px;"><b><span style="color:#535353">Ciudad:</span></b> 
                                                            <xsl:value-of select="CUSTOMERSDATA/DATA[@ID='cidade']/@VALUE"/>
                                                        </td>								
                                                    </tr>
                                                    <tr>
                                                        <td style="font-size:10px;"><b><span style="color:#535353">Teléfono:</span></b> 
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
                                                            <th id="quantity" width="8%"><b>Cant</b></th>
                                                            <th id="reference" width="18%"><b>Referência</b></th>
                                                            <th id="description" width="33%"><b>Descripción</b></th>
                                                            <th id="size" width="17%"><b>Dimensiones</b></th>
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
                                </td>
                            </tr>
                            
                            <br/>
                            <!--
                            <tr id="TOTALS">
                                <td align="center">
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
                                    
                                    <tr bgcolor="#E9E9E9">
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
                                </td>
                            </tr>
			    -->
                        </tbody>
                        
                        <!-- gerar rodape -->
                        <tfoot id="FOOTER">
                            <tr>
                                <td align="center">
                                    <br/>
                                    <br/>
                                    <b><span style="color:#535353">Tienda:</span></b> 						
                                    <span style="margin:0;width:5px;"></span>
                                    <xsl:value-of select="CUSTOMERSDATA/DATA[@ID='rep_nomeempresa']/@VALUE"/> 
                                    <span style="margin:0;width:10px;"></span>	
                                    | 
                                    <span style="margin:0;width:10px;"></span>						
                                    <b><span style="color:#535353">Dirección:</span></b>
                                    <span style="margin:0;width:5px;"></span>						
                                    <xsl:value-of select="CUSTOMERSDATA/DATA[@ID='rep_enderecoempresa']/@VALUE"/>
                                    <span style="margin:0;width:10px;"></span>
                                    | 
                                    <span style="margin:0;width:10px;"></span>
                                    <b><span style="color:#535353">Teléfono:</span></b>
                                    <span style="margin:0;width:5px;"></span>						
                                    <xsl:value-of select="CUSTOMERSDATA/DATA[@ID='rep_telefoneempresa']/@VALUE"/>
                                </td>
                            </tr>
                            <tr>
                                <td align="center">© Promob Studio. Todos los derechos reservados.</td>
                            </tr>
                        </tfoot>
						
					</table>
					
				</body>
			</html>			
		
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
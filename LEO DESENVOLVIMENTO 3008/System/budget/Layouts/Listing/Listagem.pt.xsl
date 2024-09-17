<?xml version="1.0" encoding="utf-8"?>
	<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
		<xsl:decimal-format name="formato" decimal-separator=',' grouping-separator='.' />
		<xsl:output method="html"/>			  
		<xsl:template match="LISTING">
			
			<html generator="ProMob.Cadastro">
				<head>
					<title>Listagem Módulos Montados</title>
					<link href="%pastasistema%\Budget\Layouts\Listing\Listagem.css" rel="stylesheet" type="text/css"/>					
				</head>
				
				<body >
					
					<table align="center" border="0">
						
						<!-- gerar cabecalho -->
                        <thead id="HEADER">
                            <tr>
                                <td align="center">
                                <table width="100%" border="0" bgcolor="#eeeeee" style="border: 1px Solid #CECECE;">
                                    <tr>
                                        <td height="70"><img src="%pastasistema%\identity\logoCliente.png" border="0" alt="" align="left"/></td>
				<td width="1%"><img src="%pastasistema%\identity\logoPromob.png" border="0" alt="" align="left"/></td>
                                    </tr>
                                </table>
                                    <table  width="630" border="0" >
                                        <tr>
                                            <td width="400" style="padding-top:20px;font-size:12px;color:#808080;font-weight:bold;font-family:Arial;">
                                                Data: <xsl:value-of select="@DATE"/>
                                                <span style="margin:0;width:10px;"></span>
                                                Hora: <xsl:value-of select="@HOUR"/>
                                            </td>
                                            <td align="right" style="padding-top:20px;font-size:12px;color:#808080;font-weight:bold;font-family:Arial;">
                                                Listagem
                                            </td>
                                        </tr>
                                    </table>						
                                 </td>
                            </tr>	
                        </thead>
                        
                        
                        <!-- gerar corpo -->
                        <tbody>			
                            
                            <!-- gerar dadoscliente -->
                            <tr id="CUSTOMERDATA">
                                <td valign="center" >
                                    
                                    <table width="100%" border="0" cellspacing="0" cellpadding="0" style="border:1px Solid #818181;font-family:Tahoma;font-size:12px;border-collapse:collapse;">			
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
                            
                            <br/>
                                  
                            
                            <tr id="BODY" templatetext="Módulos montados por categoria">
                                <td valign="top">
                                    <xsl:for-each select="AMBIENTS/AMBIENT">
                                        <xsl:if test="count(CATEGORIES/CATEGORY) &gt; 0">
                                            <table cellspacing="0" cellpadding="0" width="100%" border="0">
                                                <tbody>
                                                    <tr>
                                                        <td style="FONT-SIZE: 12px; COLOR: #808080" colspan="8"><b><xsl:value-of select="@DESCRIPTION" /></b></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                                
                                            <xsl:for-each select="CATEGORIES/CATEGORY">
                                                <table style="BORDER-RIGHT: #cacaca 1px solid; BORDER-TOP: #cacaca 1px solid; MARGIN-TOP: 5px; BORDER-LEFT: #cacaca 1px solid; BORDER-BOTTOM: #cacaca 1px solid; BORDER-COLLAPSE: collapse" cellspacing="0" cellpadding="0" width="100%" border="1">
                                                    <thead>
                                                        <tr height="20">
                                                            <td style="PADDING-LEFT: 5px" colspan="8">- <xsl:value-of select="@DESCRIPTION" /></td>
                                                        </tr>
                                                        
                                                        <tr id="columns" bgcolor="#e9e9e9">
                                                            <th id="item" width="4%" height="30"><b>Item</b></th>
                                                            <th id="repetition" width="4%"><b>Rep</b></th>
                                                            <th id="quantity" width="8%"><b>Qtd</b></th>
                                                            <th id="reference" width="20%"><b>Referencia</b></th>
                                                            <th id="description" width="44%"><b>Descrição</b></th>
                                                            <th id="size" width="20%"><b>Dimensões</b></th>
                                                        </tr>
                                                    </thead>
                                                    
                                                    <xsl:call-template name="PercorrerItens"><xsl:with-param select="0" name="nivel"></xsl:with-param></xsl:call-template>
                                                    <tbody></tbody>
                                                    
                                                </table><br></br>
                                            </xsl:for-each>
                                        </xsl:if>
                                    </xsl:for-each>
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
                                <td align="center">©Promob Studio. Todos os direitos reservados</td>
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
			
			<tbody id="columns">
				<td id="item" height="25" align="center" style="padding-left:1px;"><xsl:number level="any"/></td>
				<td id="repetition" align="center"><xsl:value-of select="@REPETITION"/></td>
				<td id="quantity" align="center"><xsl:value-of select="@QUANTITY"/><xsl:text>&#160;</xsl:text><xsl:value-of select="@UNIT"/></td>
				<td id="reference"><xsl:text>&#160;</xsl:text><xsl:value-of select="@REFERENCE"/></td>
				<td id="description"><xsl:text>&#160;</xsl:text><xsl:value-of disable-output-escaping="yes" select="$espacos"/><xsl:value-of select="@DESCRIPTION"/></td>
				<td id="size" align="center"><xsl:value-of select="@TEXTDIMENSION"/></td>					
			</tbody>
			
			<xsl:if test="count(ITEMS) &gt; 0" >							
				<xsl:call-template name="PercorrerItens">															
					<xsl:with-param name="nivel" select="$nivel + 1"/>
					<xsl:with-param name="espacos" select="concat($espacos, '&lt;span style=&quot;margin:0;width:15px&quot;&gt;&lt;/span &gt;')"/>
				</xsl:call-template>
			</xsl:if>			
		
		</xsl:template>	
        <!--/template=-->
		
	</xsl:stylesheet>
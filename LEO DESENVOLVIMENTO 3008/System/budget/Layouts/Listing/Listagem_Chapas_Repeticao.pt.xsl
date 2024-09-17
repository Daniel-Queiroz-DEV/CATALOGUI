<?xml version="1.0" encoding="utf-8"?>
	<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
		<xsl:decimal-format name="formato" decimal-separator=',' grouping-separator='.' />
		<xsl:output method="html"/>			  
		<xsl:template match="LISTING">
			
			<html generator="ProMob.Cadastro">
				<head>
					<title>Listagem Módulos Montados</title>
					<link href="%pastasistema%\Budget\Layouts\Listing\Listagem_Chapas.css" rel="stylesheet" type="text/css"/>					
					
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
				
				<body >
					
					<table align="center" border="0">
                        <!-- gerar cabecalho -->
                        <thead id="HEADER">
                            <tr>  
                                <td align="center">
                                <table width="100%" border="0" bgcolor="#eeeeee" style="border: 1px Solid #CECECE;">
                                        <tr>
                                            <td height="70"><img src="%pastasistema%\identity\logoCliente.png" border="0" alt="" hspace="10" align="left" style="margin-right:300px;"/></td><td width="1%"><img src="%pastasistema%\identity\logoPromob.png" border="0" alt="" align="left"/></td>
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
                                                Listagem de Painéis
                                            </td>
                                        </tr>
                                    </table>						
                                 </td>
                            </tr>	
                        </thead>
                        
                        <tbody>			
                            
                            <!-- gerar dadoscliente -->
                            <tr id="CUSTOMERDATA">
                                <td valign="top" >
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

                        
                            <tr id="BODY" >
                                <td valign="top">
                                    <xsl:for-each select="AMBIENTS/AMBIENT">
                                    
                                        <xsl:if test="count(CATEGORIES/CATEGORY) &gt; 0" >
                                            <table width="100%" cellspacing="0" cellpadding="0">
                                                <tr>
                                                    <td colspan="8" style="font-size:12px;color:#808080;"><b><xsl:value-of select="@DESCRIPTION"/></b></td>
                                                </tr>
                                            </table>
                                            
                                            <table width="100%" border="1" cellspacing="0" cellpadding="0" style="border:1px Solid #CACACA;border-collapse:collapse;margin-top:5px;">
                                                <thead>				
                                                    <tr bgcolor="#E9E9E9">
                                                        <td height="30" width="20"></td>
                                                        <td width="110" align="center"><b>Matéria-prima</b></td>
                                                        <td width="30" align="center"><b>Esp</b></td>
                                                        <td width="200" align="center"><b>Acabamento</b></td>
                                                        <td width="150" align="center"><b>Dimensão máxima</b></td>
                                                        <td width="100" align="center"><b>Qtd M²</b></td>
                                                        <td width="100" align="center"><b>Qtd Painéis</b></td>
                                                    </tr>
                                                </thead>				
                                            
                                                <xsl:for-each select="CATEGORIES/CATEGORY">							
                                                    <xsl:call-template name="PercorrerItens"/>																																			
                                                </xsl:for-each>								
                                            </table>        
                                            <br/>
                                        </xsl:if>
                                        
                                    </xsl:for-each>	
                                </td>
                            </tr>
                        </tbody>        
                                
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
			
			<xsl:if test="count(ITEMS) &gt; 0" >															
				<xsl:for-each select="ITEMS/ITEM">
					<xsl:call-template name="GerarItem" />										
				</xsl:for-each>									
			</xsl:if>			
		
		</xsl:template>	
		
		<xsl:template name="GerarItem">
			
			<xsl:if test="count(ITEMS) &gt; 0" >							
				
				
					<tr>
						<td width="20" align="center"><img src="%pastasistema%\identity\plus.gif" alt="" width="9" height="9" border="0" onClick="expandNested(this);" style="cursor:pointer;cursor:hand"/></td>
						<td align="center" height="25"><xsl:value-of select="REFERENCES/MATERIAL/@REFERENCE"/></td>
						<td align="center"><xsl:value-of select="REFERENCES/THICKNESS/@REFERENCE"/></td>
						<td align="center"><xsl:value-of select="REFERENCES/MODEL/@REFERENCE"/></td>
						<td align="center"><xsl:value-of select="REFERENCES/MAXWIDTH/@REFERENCE"/> x <xsl:value-of select="REFERENCES/MAXDEPTH/@REFERENCE"/></td>
						<td align="center"><xsl:value-of select="@QUANTITY"/></td>
						
						<xsl:if test="count(REFERENCES/MAXWIDTH) &gt; 0 and count(REFERENCES/MAXDEPTH) &gt; 0" >
							<xsl:variable name="largura" select="REFERENCES/MAXWIDTH/@REFERENCE div 1000" />
							<xsl:variable name="profundidade" select="REFERENCES/MAXDEPTH/@REFERENCE div 1000" />								
							<xsl:variable name="resultado" select="@QUANTITY div ($largura * $profundidade)" />
						
							<td align="center"><xsl:value-of select="format-number($resultado, '##0,000', 'formato')"/></td>	

						</xsl:if>
						
						<xsl:if test="count(REFERENCES/MAXWIDTH) &lt;= 0 or count(REFERENCES/MAXDEPTH) &lt;= 0" >						
							<td align="center">-</td>
						</xsl:if>						
																						
					</tr>
					<tr height="1" style="display:none">
						<td colspan="7" valign="top" align="right" >
							<table width="100%" border="0" cellspacing="0" cellpadding="5" style="border-bottom:none;border-left:1px Solid #CECECE">
								
								<tr bgcolor="#E9E9E9">
									<td align="center" width="10%"><b>Repetição</b></td>
									<td align="center" style="border-left:1px Solid #CECECE"><b>Referência</b></td>
									<td align="center" style="border-left:1px Solid #CECECE"><b>Largura</b></td>
									<td align="center" style="border-left:1px Solid #CECECE"><b>Profundidade</b></td>
									<td align="center" style="border-left:1px Solid #CECECE"><b>Qtd M²</b></td>
								</tr>
								
								<xsl:call-template name="PercorrerItens" />
						
							</table>					
						</td>
					</tr>
			</xsl:if>
										
			<xsl:if test="count(ITEMS) &lt;= 0" >
			
				<tr>					
										
					<td align="center" ><xsl:value-of select="@REPETITION"/></td>
					<td align="center" style="border-left:1px Solid #CECECE"><xsl:value-of select="@REFERENCE"/></td>
					<td align="center" style="border-left:1px Solid #CECECE"><xsl:value-of select="@WIDTH"/></td>
					<td align="center" style="border-left:1px Solid #CECECE"><xsl:value-of select="@DEPTH"/></td>
					<td align="center" style="border-left:1px Solid #CECECE"><xsl:value-of select="@QUANTITY"/></td>
				</tr>							
			</xsl:if>	
		
		</xsl:template>
        <!--/template=-->        
		
	</xsl:stylesheet>
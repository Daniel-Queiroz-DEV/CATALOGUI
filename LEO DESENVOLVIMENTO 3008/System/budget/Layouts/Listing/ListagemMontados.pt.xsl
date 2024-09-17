<?xml version="1.0" encoding="utf-8"?>
	<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
		<xsl:decimal-format name="formato" decimal-separator=',' grouping-separator='.' />
		<xsl:output method="html"/>			  
		<xsl:template match="LISTING">
			
			<html>
				<head>
					<title>Listagem Módulos Montados</title>
					<link href="%pastasistema%\Budget\Layouts\Listing\Orcamento.css" rel="stylesheet" type="text/css"/>					
				</head>
				
				<body >
					
					<table align="center" border="0">
						
						<xsl:call-template name="GerarCabecalho"/>
						<xsl:call-template name="GerarCorpo"/>
						<xsl:call-template name="GerarRodape"/>
						
					</table>
					
				</body>
			</html>			
		
		</xsl:template>
		
		<!-- GERAR CABECALHO -->
		<xsl:template name="GerarCabecalho">
		
            <thead>
				<tr>
					<td align="center">
					<table width="630" border="0" bgcolor="#eeeeee" style="border: 1px Solid #CECECE;">
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
		
		</xsl:template>	
		
		<!-- GERAR CORPO -->
		<xsl:template name="GerarCorpo">
		
			<tbody>			
				<tr>
					<td valign="top" >
						
						<xsl:call-template name="GerarDadosCliente"/>
					</td>
				</tr>
				<tr>
					<td valign="top" >
						<xsl:call-template name="GerarListagemPecas"/>
												
					</td>
				</tr>
			</tbody>
            
		</xsl:template>	
		
		<!-- GERAR DADOSCLIENTE -->
        <xsl:template name="GerarDadosCliente">
   			<tbody>			
				<tr>
					<td valign="center" >      
                    
                        <table width="630" border="0" cellspacing="0" cellpadding="0" style="border:1px Solid #818181;font-family:Tahoma;font-size:12px;border-collapse:collapse;">			
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
			</tbody>
        </xsl:template>
		
		<!-- GERAR ENTRADAS DIFERENCIADAS -->
		<xsl:template name="GerarEntradasDiferenciadas">
		
			<xsl:if test="count(PAYMENTTERMS/ADITIONALENTRYCOLLECTION) &gt; 0" >											
											
				<table width="630" border="0" cellspacing="0" cellpadding="0" style="border:1px Solid #CECECE;">
					<tr>
						<td colspan="8" style="font-size:12px;color:#808080;padding:5px"><b>Entradas Diferenciadas</b></td>
					</tr>
						<tr bgcolor="#E9E9E9" align="center">
							<th width="50%" height="20" style="padding:5px"><b>Descrição</b></th>					
							<th width="50%" style="padding:5px"><b>Valor</b></th>										
						</tr>
				
					<tbody>
						
						<xsl:for-each select="PAYMENTTERMS/ADITIONALENTRYCOLLECTION/ADITIONALENTRY">									
							<tr>
								<td align="center" style="padding:5px"><b><xsl:value-of select="@DESCRIPTION"/></b></td>
								<td align="center" style="padding:5px"><xsl:value-of select="format-number(@VALUE, '###.##0,00', 'formato')"/></td>								
							</tr>														
						</xsl:for-each>	
						
					</tbody>
					
				</table>					
				
			</xsl:if>
		</xsl:template>	
		
		<!-- GERAR CONDICOES PAGAMENTO -->
		<xsl:template name="GerarCondicoesPagamento">
		
			<xsl:if test="count(PAYMENTTERMS) &gt; 0" >											
											
				<table width="630" border="0" cellspacing="0" cellpadding="0" style="border:1px Solid #CECECE;">
					<tr>
						<td colspan="8" style="font-size:12px;color:#808080;padding:5px"><b>Condições de Pagamento</b></td>
					</tr>
						<tr bgcolor="#E9E9E9" align="center">
							<th width="25%" height="20" style="padding:5px"><b>Descrição</b></th>					
							<th width="25%" style="padding:5px"><b>Valor para parcelar</b></th>
							<th width="25%" style="padding:5px"><b>Valor das Parcelas</b></th>
							<th width="25%" style="padding:5px"><b>Valor Total</b></th>						
						</tr>
				
					
					<tbody>
						
						<xsl:for-each select="PAYMENTTERMS/PAYMENTTERMCOLLECTION/PAYMENTTERM">									
							<tr>
								<td align="center" style="padding:5px"><b><xsl:value-of select="@DESCRIPTION"/></b></td>
								<td align="center" style="padding:5px"><xsl:value-of select="format-number(@PARCELEDTOTAL, '###.##0,00', 'formato')"/></td>
								<td align="center" style="padding:5px"><xsl:value-of select="format-number(@PARCELVALUE, '###.##0,00', 'formato')"/></td>
								<td align="center" style="padding:5px"><xsl:value-of select="format-number(@GENERALTOTAL, '###.##0,00', 'formato')"/></td>
							</tr>														
						</xsl:for-each>	
						
					</tbody>
					
				</table>					
				
			</xsl:if>
		</xsl:template>
		
		
		<!-- GERAR LISTAGEM PECAS -->
		<xsl:template name="GerarListagemPecas">
		
			<xsl:for-each select="AMBIENTS/AMBIENT">
			
				<xsl:if test="count(CATEGORIES/CATEGORY) &gt; 0" >
					<table width="100%" cellspacing="0" cellpadding="0">
						<tr>
							<td colspan="8" style="font-size:12px;color:#808080;"><b><xsl:value-of select="@DESCRIPTION"/></b></td>
						</tr>
					</table>
					
					<xsl:for-each select="CATEGORIES/CATEGORY">							
						<table width="100%" border="1" cellspacing="0" cellpadding="0" style="border:1px Solid #CACACA;border-collapse:collapse;margin-top:5px;">
							<xsl:call-template name="GerarCabecalhoListaPecas"/>
							<xsl:call-template name="PercorrerItens">
								<xsl:with-param name="nivel" select="0"/>
							</xsl:call-template>																			
						</table>
						<br/>
					</xsl:for-each>
				</xsl:if>
				
			</xsl:for-each>	
            
		</xsl:template>	
			
		<!-- PERCORRER ITENS -->
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
		
		<!-- GERAR ITEM -->
		<xsl:template name="GerarItem">
			<xsl:param name="nivel"/>
			<xsl:param name="espacos"/>
			
			<xsl:if test="name(parent::node()/parent::node())='CATEGORY'">
			
					<tbody >
						<td height="25" align="center" style="padding-left:1px;"><xsl:number level="any"/></td>
						<td align="center"><xsl:value-of select="@REPETITION"/></td>
						<td align="center"><xsl:value-of select="@QUANTITY"/><xsl:text>&#160;</xsl:text><xsl:value-of select="@UNIT"/></td>
						<td><xsl:text>&#160;</xsl:text><xsl:value-of select="@REFERENCE"/></td>
						<td width="300"><xsl:text>&#160;</xsl:text><xsl:value-of disable-output-escaping="yes" select="$espacos"/><xsl:value-of select="@DESCRIPTION"/></td>
						<td align="center"><xsl:value-of select="@TEXTDIMENSION"/></td>					
					</tbody>
					
			</xsl:if>
			
			<xsl:if test="count(ITEMS) &gt; 0" >							
				<xsl:call-template name="PercorrerItens">															
					<xsl:with-param name="nivel" select="$nivel + 1"/>
					<xsl:with-param name="espacos" select="concat($espacos, '&lt;span style=&quot;margin:0;width:15px&quot;&gt;&lt;/span &gt;')"/>
				</xsl:call-template>
			</xsl:if>			
		
		</xsl:template>	
		
		<!-- GERAR CABECALHO LISTA PECAS -->
		<xsl:template name="GerarCabecalhoListaPecas">
		
			<thead>
				<tr height="20">
					<td colspan="8" style="padding-left:5px;">- <xsl:value-of select="@DESCRIPTION"/></td>
				</tr>
				<tr  bgcolor="#E9E9E9">
					<th width="4%" height="30"><b>Item</b></th>
					<th width="6%" ><b>Rep</b></th>
					<th width="7%"><b>Qtd</b></th>
					<th width="31%"><b>Referência</b></th>
					<th width="37%"><b>Descrição</b></th>
					<th width="15%"><b>Dimensões</b></th>					
				</tr>
			</thead>				
            
		</xsl:template>	

		
		<!-- GERAR RODAPE -->
		<xsl:template name="GerarRodape">
		
			<tfoot>
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
            
		</xsl:template>	
		
	</xsl:stylesheet>
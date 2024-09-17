<?xml version="1.0" encoding="utf-8"?>
	<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
		<xsl:decimal-format name="formato" decimal-separator=',' grouping-separator='.' />
		<xsl:output method="html"/>			  
		<xsl:template match="LISTING">
			
			<html>
				<head>
					<title>Parceiro Tramontina</title>
					<link href="%pastasistema%\Budget\Layouts\Listing\Formatacao.css" rel="stylesheet" type="text/css"/>					
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
						<table width="630" border="1" borderColor="#dfdfdf"  bgcolor="#EEEEEE" style="border 1px Solid #535353;border-collapse:collapse;">
							<tr>
								<td width="1%" style="padding:10px;">
                                    <img src="%pastasistema%\Identity\logoTramontina.gif" width="100" height="30"/>
                                </td>
								<td style="padding:10px;" valign="top">
									<table cellspacing="0" cellpadding="3" border="0" width="100%">
										<tr><td colspan="2" valign="top" style="font-size:16px;height:30px;color:#556982;font-weight:bold;font-family:Arial;">Dados do Parceiro</td></tr>
										<tr><td colspan="2" valign="top" style="font-size:12px;height:30px;color:#556982;font-weight:bold;font-family:Arial;">Contatos Comerciais</td></tr>
                                        <tr><td width="100%" align="left" style="color:#535353;">RS – ERV POA: (51) 2101-5000</td></tr>
                                        <tr><td width="100%" align="left" style="color:#535353;">SC e PR – ERV Curitiba: (41) 2111-9110</td></tr>
                                        <tr><td width="100%" align="left" style="color:#535353;">SP – CD Sudeste: (11) 4197-1266</td></tr>
                                        <tr><td width="100%" align="left" style="color:#535353;">RJ – ERV Rio: (21) 2224-5004</td></tr>
                                        <tr><td width="100%" align="left" style="color:#535353;">MG e ES – ERV BH: (31) 3223-4026</td></tr>
                                        <tr><td width="100%" align="left" style="color:#535353;">MS, MT, GO, DF, TO, RO, AC – CD Planalto: (62) 3272-2100</td></tr>
                                        <tr><td width="100%" align="left" style="color:#535353;">BA e SE – CD Nordeste: (71) 3215-8266</td></tr>
                                        <tr><td width="100%" align="left" style="color:#535353;">AL, PE, PB, RN, CE, PI – ERV Recife: (81) 3454-8800</td></tr>
                                        <tr><td width="100%" align="left" style="color:#535353;">MA, PA, AP, AM, RR – CD Norte: (91) 4009-7700</td></tr>
                                        <tr><td width="100%" align="left" style="color:#535353;">Fábrica: (54) 3461-8183 – rogerioi@tramontina.net</td></tr>
                                        <tr><td width="100%" align="left" style="color:#535353;"><b>Website:</b> www.tramontina.com.br</td></tr>
									</table>
								</td>
							</tr>
						</table>
						<table  width="630" border="0" >
							<tr>															
								<td width="400" style="padding-top:20px;font-size:12px;color:#556982;font-weight:bold;font-family:Arial;">
									Data: <xsl:value-of select="@DATE"/>
									<span style="margin:0;width:10px;"></span>
									Hora: <xsl:value-of select="@HOUR"/>
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
						<xsl:call-template name="GerarDadosLoja"/>
					</td>
				</tr>
				<tr>
					<td>
						<xsl:call-template name="GerarDadosCliente"/>
					</td>
				</tr>
				<tr>
					<td>
						<xsl:call-template name="GerarListagemPecas"/>											
					</td>
				</tr>
			</tbody>
            
		</xsl:template>	
		
		<!-- GERAR DADOSLOJA -->
		<xsl:template name="GerarDadosLoja">
            <tbody>
				<tr>
					<td valign="center" >     
					
                        <table width="630" border="0" cellspacing="0" cellpadding="0" style="border:1px Solid #818181;font-family:Tahoma;font-size:12px;border-collapse:collapse;">
                            <tr>
                                <td bgcolor="#EEEEEE" style="font-size:16px;padding:5px;color:#556982;border-bottom:1px Solid #818181"><b>Dados da loja:</b></td>
                            </tr>
                            <tr>
                                <td height="22" width="592" style="line-height:20px;padding:5px;">
                            
                                    <table width="100%" cellspacing="5" cellpadding="2" border="0">
                                        <tr>
                                            <td style="font-size:10px; width:50%;"><b><span style="color:#535353;" width="50%">Nome:</span></b>
                                                <xsl:value-of select="CUSTOMERSDATA/DATA[@ID='rep_nomeempresa']/@VALUE"/>
                                            </td>		
                                            <td style="font-size:10px; width:50%;"><b><span style="color:#535353;" width="50%">Endereço:</span></b>
                                                <xsl:value-of select="CUSTOMERSDATA/DATA[@ID='rep_enderecoempresa']/@VALUE"/>
                                            </td>								
                                        </tr>
                                        <tr>
                                            <td style="font-size:10px;"><b><span style="color:#535353;">Bairro:</span></b>
                                                <xsl:value-of select="CUSTOMERSDATA/DATA[@ID='rep_bairroempresa']/@VALUE"/>
                                            </td>
                                            <td style="font-size:10px;"><b><span style="color:#535353;">CEP:</span></b>
                                                <xsl:value-of select="CUSTOMERSDATA/DATA[@ID='rep_cepenpresa']/@VALUE"/>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="font-size:10px;"><b><span style="color:#535353;">Cidade:</span></b>
                                                <xsl:value-of select="CUSTOMERSDATA/DATA[@ID='rep_cidadeempresa']/@VALUE"/>
                                            </td>
                                            <td style="font-size:10px;"><b><span style="color:#535353;">UF:</span></b>
                                                <xsl:value-of select="CUSTOMERSDATA/DATA[@ID='rep_ufempresa']/@VALUE"/>
                                            </td>								
                                        </tr>
                                        <tr>
                                            <td style="font-size:10px;"><b><span style="color:#535353;">Telefone:</span></b>
                                                <xsl:value-of select="CUSTOMERSDATA/DATA[@ID='rep_telefoneempresa']/@VALUE"/>
                                            </td>	
                                            <td style="font-size:10px;"><b><span style="color:#535353;">E-mail:</span></b>
                                                <xsl:value-of select="CUSTOMERSDATA/DATA[@ID='rep_emailempresa']/@VALUE"/>
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
		
		<!-- GERAR DADOSCLIENTE -->
        <xsl:template name="GerarDadosCliente">
   			<tbody>			
				<tr>
					<td valign="center" >      
                    
                        <table width="630" border="0" cellspacing="0" cellpadding="0" style="border:1px Solid #818181;font-family:Tahoma;font-size:12px;border-collapse:collapse;">			
                            <tr>					
                                <td bgcolor="#EEEEEE" style="font-size:16px;padding:5px;color:#556982;border-bottom:1px Solid #818181"><b>Dados do cliente:</b></td>
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
		
		<!-- GERAR LISTAGEM PECAS -->
		<xsl:template name="GerarListagemPecas">
		
			<xsl:for-each select="AMBIENTS/AMBIENT">
			
				<xsl:if test="count(CATEGORIES/CATEGORY) &gt; 0" >
					<table width="630" cellspacing="0" cellpadding="0">
						<tr>
							<td colspan="8" style="font-size:12px;color:#556982;"><b><xsl:value-of select="@DESCRIPTION"/></b></td>
						</tr>
					</table>
					
					
					<table width="630" border="1" cellspacing="0" cellpadding="0" style="border:1px Solid #CACACA;border-collapse:collapse;margin-top:5px;">
						
						<xsl:call-template name="GerarCabecalhoListaPecas"/>
						
						<xsl:for-each select="CATEGORIES/CATEGORY">
							<xsl:call-template name="PercorrerItens"/>	
						</xsl:for-each>			
						
					</table>
					<br/><br/>
					<xsl:call-template name="GerarTotal"/>
					<br/>
				</xsl:if>
				
			</xsl:for-each>	
            
		</xsl:template>	
		
		<!-- GERAR TOTAL -->
		<xsl:template name="GerarTotal">
		
			<table width="630" border="0" cellspacing="0" cellpadding="0" style="border:1px Solid #818181;">									
				
				<tr  bgcolor="#E9E9E9">
					<td style="width:80px;color:#818181;line-height:20px;padding-left:5px;font-size:10px;font-family:Arial;font-weight:bold;">
						<b><span style="color:#535353">Total final:</span></b>
					</td>
					<td>
						<sub><hr width="100%" size="1" style="border:1px Dotted Black;"/></sub>
					</td>
					<td width="65" align="right" style="padding-right:5px;font-size:10px;font-family:Arial;">
						<b>
						R$ 
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
            
		</xsl:template>	
				
			
		<!-- PERCORRER ITENS -->
		<xsl:template name="PercorrerItens">			
			
			<xsl:if test="count(ITEMS) &gt; 0" >															
				<xsl:for-each select="ITEMS/ITEM">
					<xsl:call-template name="GerarItem"/>
				</xsl:for-each>									
			</xsl:if>			
		
		</xsl:template>	
		
		<!-- GERAR ITEM -->
		<xsl:template name="GerarItem">			
			
			<tbody >
				<td height="25" align="center" style="padding-left:1px;"><xsl:number level="any"/></td>
				<td align="center"><xsl:value-of select="@REPETITION"/></td>
				<td align="center"><xsl:value-of select="@QUANTITY"/><xsl:text>&#160;</xsl:text><xsl:value-of select="@UNIT"/></td>
				<td><xsl:text>&#160;</xsl:text><xsl:value-of select="@REFERENCE"/></td>
				<td width="300"><xsl:text>&#160;</xsl:text><xsl:value-of select="@DESCRIPTION"/></td>
				<td align="center"><xsl:value-of select="@TEXTDIMENSION"/></td>
													
				
				<td align="right" style="padding-right:1px;">
				
					<xsl:if test="count(PRICE/MARGINS/ORDER) &gt; 0" >	
						<xsl:variable name="valorPreco" select="translate(PRICE/MARGINS/ORDER/@TOTAL, ',', '.')" />	
						<xsl:value-of select="format-number($valorPreco, '###.##0,00', 'formato')"/>
					</xsl:if>
					<xsl:if test="count(PRICE/MARGINS/ORDER) = 0">
						0,00
					</xsl:if>
				
				</td>											
			</tbody>
			
			<xsl:if test="count(ITEMS) &gt; 0" >							
				<xsl:call-template name="PercorrerItens" />
			</xsl:if>			
		
		</xsl:template>	
		
		<!-- GERAR CABECALHO LISTA PECAS -->
		<xsl:template name="GerarCabecalhoListaPecas">
		
			<thead>				
				<tr bgcolor="#E9E9E9" align="center">
					<th width="4%" height="30"><b>Item</b></th>
					<th width="6%" ><b>Rep</b></th>
					<th width="7%"><b>Qtd</b></th>
					<th width="31%"><b>Referência</b></th>
					<th width="27%"><b>Descrição</b></th>
					<th width="15%"><b>Dimensões</b></th>					
					<th width="10%"><b>Preço</b></th>				
				</tr>
			</thead>				
            
		</xsl:template>	

		
		<!-- GERAR RODAPE -->
		<xsl:template name="GerarRodape">
		
			<tfoot>					
				<tr>
					<td align="center">©Promob. Todos os direitos reservados</td>
				</tr>
			</tfoot>
            
		</xsl:template>	
		
	</xsl:stylesheet>
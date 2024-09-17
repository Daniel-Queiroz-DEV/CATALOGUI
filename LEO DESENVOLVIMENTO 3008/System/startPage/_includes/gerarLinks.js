// Criação dos Links do Rodapé
var LinksPT = new Array(); // não alterar
var LinksES = new Array(); // não alterar
var LinksUS = new Array(); // não alterar

// links (endereço, titulo e target (_blank, _self))
// PORTUGUÊS
LinksPT[0] = "http://www.promob.com;Site da Promob;_blank";
LinksPT[1] = "http://galeria.promob.com.br;Galeria de Projetos;_blank";
LinksPT[2] = "http://www.promob.com/pt/servicos/treinamento;Locais de Treinamento;_blank";
LinksPT[3] = "http://kb.promob.com;Central de Atendimento;_blank";
// ENGLISH
LinksUS[0] = "http://www.promob.com/en;Promob Website;_blank";
LinksUS[1] = "http://galeria.promob.com.br;Project Gallery;_blank";
//LinksUS[2] = "http://www.promob.com/pt/servicos/treinamento;Training Centers;_blank";
LinksUS[2] = "http://kb.promob.com;Customer Support Center;_blank";
// ESPAÑOL
LinksES[0] = "http://www.promob.com/es/;Sitio de Promob;_blank";
LinksES[1] = "http://galeria.promob.com.br;Galeria de Proyectos;_blank";
//LinksES[2] = "http://www.promob.com/pt/servicos/treinamento;Locales de Entrenamientos;_blank";
LinksES[2] = "http://kb.promob.com;Centro de Atención;_blank";

// não alterar a partir deste ponto
function gerarLinks(language) {
	var x;
	if (language == 'pt') {
		LinksLang = LinksPT;
	} else if (language == 'es') {
		LinksLang = LinksES;
	} else if (language == 'us') {
		LinksLang = LinksUS;
	}
	
	if (LinksLang.length != 0) {
		for (x in LinksLang) {
			// nao alterar
			var fullLink = LinksLang[x];
			var linkSplit = fullLink.split(';');
			// variaveis
			var url = linkSplit[0];
			var title = linkSplit[1];
			var target = linkSplit[2];
			// estilo do link
			classe = "lnkRodape";
	
			// retorna os links
			document.write("<a href=\"" + url + "\" target=\"" + target + "\" class=\"" + classe + "\">" + title + "</a>")
			if (x < LinksLang.length-1) {
				document.write(" | ");
			}
		}
	}
}
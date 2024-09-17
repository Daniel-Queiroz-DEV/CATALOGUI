$(document).ready(function() {
	$.support.cors = true;

	var favorites = $.ajax({
	    url: 'http://galeria.promob.com/Promob',
	    jsonp: 'jsonp',
	    crossDomain: true,
	    type: 'GET'
	});
	
	if(screen.height>768) {  // Se resolução for maior de 768px
		$.when(favorites)
		    .done(function (data) {
			$('#gallery-content-offline').css('display', 'none');
			$('#gallery-content-online').css('display', 'block');
			$('#gallery-content-online').empty().html(data);
			$('#page-carousel').css('height', '360px');
			$('#page-carousel').css('width', '850px');			
		    });
	} 
	else { // Se resolução for menor de 768px
		$.when(favorites)
		    .done(function (data) {
			$('#gallery-content-offline').css('display', 'none');
			$('#gallery-content-online').css('display', 'block');
			$('#gallery-content-online').empty().html(data);
			$('#page-carousel').css('height', '270px');
			$('#page-carousel').css('width', '638px');	
		    });
	}
	
	

	FillPartners();
});

// variaveis de uso geral
var partnersSliderPage = 0;
var partnersSliderLastPage = 0;
var dirImg = "../identity/";
var imgPromob = dirImg + "img_arch_001.jpg";

function MostraImg(img) {
		MostraImagem(img, true);
}

function MostraImagem(img, borda) {
	eval(imagem).filters.item(0).Apply();
	eval(imagem).src = dirImg + img;
	SetaBorda(borda);
	eval(imagem).filters.item(0).Play();
}

function MostraImgPadrao() {
	MostraImagem("tidelli001.gif", false);
}

function mOvr(src, clrOver)  {
	if(!src.contains(event.fromElement)) { 
		//src.style.cursor = "hand"; 
		src.bgColor = clrOver; 
	}
}

function mOut(src, clrIn) { 
	if(!src.contains(event.toElement)) { 
		//src.style.cursor = "default"; 
		src.bgColor = clrIn; 
	}
}

function Executa(comando) {
	window.location = "cmd://" + comando;
}

function SetaBorda(borda) {
	if(borda) {
		eval(imagem).style.border =  "1px solid #666666";
	} else {
		eval(imagem).style.border =  "1px solid #DFDFDF";
	}
}

function chamaAtualizacoes() {
	var frame1=document.getElementById('frameAtualizacoes');
	var iframeDocument = frame1.contentWindow ? frame1.contentWindow.document : frame1.contentDocument;
	var root = iframeDocument.documentElement || iframeDocument.body;
	var HTML = root.innerHTML;
	document.getElementById('divAtualizacoes').innerHTML = HTML;
}

function FillPartners() {
	var partners = [
	{site: "http://www.franke.com.br/pt/", title: "Franke", url: "parceiro_franke.gif"},
	{site: "http://www.falmec.com.br/", title: "Falmec", url: "parceiro_falmec.gif"},
	{site: "http://www.smeg.com.br/", title: "Smeg", url: "parceiro_smeg.gif"},
	{site: "http://www.crissair.com.br/", title: "Crissair", url: "parceiro_crissair.gif"},
	{site: "http://www.lofra.it/", title: "Lofra", url: "parceiro_lofra.gif"},
	{site: "http://www.boscheletrodomesticos.com.br/", title: "Bosch", url: "parceiro_bosch.gif"},
	{site: "http://www.mekal.com.br/", title: "Mekal", url: "parceiro_mekal.gif"},
	{site: "http://www.debacco.com.br/", title: "De Bacco", url: "parceiro_debacco.gif"},
	{site: "http://www.blum.com/", title: "Blum", url: "parceiro_blum.gif"},
	{site: "http://www.incomaq.com.br/", title: "Incomaq", url: "parceiro_incomaq.gif"},
	{site: "http://www.reval.com.br/", title: "Reval", url: "parceiro_reval.gif"},
	{site: "http://www.masutticopat.com.br/", title: "Masutti Copat", url: "parceiro_masutticopat.gif"},
	{site: "http://www.rubinettos.com.br/", title: "Rubinettos", url: "parceiro_rubinettos.gif"},
	{site: "http://www.zendesign.com/", title: "Zen", url: "parceiro_zen.gif"},
	{site: "http://www.formica.com.br/", title: "Formica", url: "parceiro_formica.gif"},
	{site: "http://www.masisa.com.br/", title: "Masisa", url: "parceiro_masisa.gif"},
	{site: "http://www.arauco.com.br/", title: "Arauco", url: "parceiro_arauco.gif"},
	{site: "http://www.eucatex.com.br/", title: "Eucatex", url: "parceiro_eucatex.gif"},
	{site: "http://www.duratex.com.br/", title: "Duratex", url: "parceiro_duratex.gif"},
	{site: "http://www.lopar.com.br/", title: "Lopar", url: "parceiro_lopar.gif"},
	{site: "http://www.arix.com.br/", title: "Arix", url: "parceiro_arix.gif"},
	{site: "http://www.ompdobrasil.com.br/site/", title: "OMP", url: "parceiro_OMP.png"},	
	{site: "http://www.promob.com/", title: "Vita Aramados", url: "LogoVita.jpg"},	
	{site: "http://www.tramontina.com.br/", title: "Tramontina", url: "parceiro_tramontina.png"},
        {site: "http://www.brastemp.com.br/", title: "Brastemp", url: "parceiro_brastemp.gif"},
        {site: "http://www.ancezki.com/", title: "Ancezki", url: "parceiro_ancezki.gif"},
        {site: "http://www.hettich.com.br/", title: "Hettich", url: "parceiro_hettich.gif"},
      	{site: "http://www.usitop.com.br/", title: "Usitop", url: "logousitop.jpg"},
	{site: "http://www.tecnovidro.com.br/", title: "Saint Claire", url: "parceiro_saintclaire.gif"},
	{site: "http://www.sultecmoveis.com.br/", title: "Sultec", url: "parceiro_sultec.gif"},
	{site: "http://www.suggar.com.br/", title: "Suggar", url: "parceiro_suggar.gif"},
	{site: "http://www.electrolux.com.br/", title: "Electrolux", url: "parceiro_electrolux.png"},
	{site: "http://www.persol.com.br/", title: "Persol", url: "parceiro_persol.gif"},
	{site: "http://www.braspanmdf.com.br/", title: "Braspan", url: "parceiro_braspan.png"},
	{site: "http://www.tidelli.com.br/", title: "Tidelli", url: "parceiro_tidelli.gif"},
	{site: "http://www.panizzi.com.br/", title: "Panizzi", url: "parceiro_panizzi.gif"},
	{site: "http://www.promob.com/", title: "Sofisticato", url: "parceiro_sofisticato.gif"},
	{site: "http://www.moveisbrasilpost.com.br/", title: "Brasil Post", url: "parceirobrasilpost.gif"},
	{site: "http://www.madelustre.com.br/", title: "Madelustre", url: "parceiro_madelustre.gif"},
	{site: "http://www.alumiglass.com.br/", title: "Alumiglass", url: "parceiro_alumiglass.jpg"},
	{site: "http://www.guararapes.com.br/", title: "Guararapes", url: "parceiro_guararapes.png"},
	{site: "http://www.fgvtn.com.br/", title: "FGVTN", url: "parceiro_fgvtn.png"},
	{site: "http://www.aramadosjomer.com.br/", title: "Jomer", url: "parceiro_jomer.png"},
	{site: "http://www.geprofile.com.br/", title: "GE Profile", url: "logo_ge_profile.png"},
	{site: "http://www.geeletrodomesticos.com.br/", title: "GE", url: "logo_ge.png"},
	{site: "http://www.gemonogram.com.br/", title: "GE Monogram", url: "logo_ge_monogram.png"},
	{site: "http://www.continental.com.br/", title: "Continental", url: "logo_continental.png"},
	{site: "http://www.continentalone.com.br/", title: "Continental One", url: "logo_continental_one.png"},
	{site: "http://www.promob.com/", title: "Finesse", url: "parceiro_finesse.gif"},
	{site: "http://www.catabrasil.com.br/", title: "Cata", url: "logo_Cata.jpg"},
	{site: "http://www.portabille.com.br", title: "Portabille", url: "logo_portabille.png"},
	{site: "http://www.cadence.com.br", title: "Cadence", url: "parceiro_cadence.png"},
	{site: "http://www.duranox.com.br", title: "Duranox", url: "parceiro_duranox.png"},	
	{site: "http://www.consul.com.br", title: "Consul", url: "parceiro_consul.png"},
	{site: "http://www.maxdecor.com.br/", title: "Max Decor", url: "parceiro_MaxDecor.png"},		
	{site: "http://www.obispa.com.br", title: "Obispa", url: "parceiro_obispa.png"},	
	{site: "http://www.esquadrimed.com.br", title: "Esquadrimed", url: "parceiro_Esquadrimed.png"},	
	{site: "http://www.wphome.com.br", title: "WP – DuPont Corian®", url: "parceiro_wp.png"},		
	{site: "http://www.ezdoor.com.br", title: "Ez'door", url: "parceiro_ezdoor.png"},	
	{site: "http://www.contattopuxadores.com.br/", title: "Contatto", url: "parceiro_contatto.png"},		
	{site: "http://www.salvatoreminuano.com.br", title: "Salvatore", url: "parceiro_salvatore.png"},
        {site: "http://www.torralba.com.br/site/", title: "Torralba", url: "parceiro_Torralba.png"},
        {site: "http://www.perlare.com", title: "Perlare", url: "parceiro_perlare.png"},
	{site: "http://elettromec.com.br/", title: "Elettromec", url: "parceiro_elettromec.png"},
	{site: "http://www.fischer.com.br", title: "Fischer", url: "parceiro_fischer.png"},
	{site: "http://www.accordiluminacao.com.br", title: "Accord Iluminação", url: "parceiro_Accord_Logo.png"},
	{site: "http://www.hafele.com.br", title: "Hafele", url: "parceiro_hafele.png"}	
	

	
	];

	$('#partners-images').empty();

	partnersSliderLastPage = Math.floor((partners.length - 1) / 8);

	$.each(partners, function(index, item) {
		var page = Math.floor(index / 8);
		var li = $('<li style="background-color:white;" data-page="' + page + '"></li>');
		li.append('<a href="' + item.site + '" target="_blank" alt="' + item.title + '"><img src="../identity/' + item.url + '" /></a>');
		$('#partners-images').append(li);
	});
	
}

// slideshow

var slideShowSpeed = 3000;
var crossFadeDuration = 2;

external.InvokeVSA('GestorDocumentos','SetarCaminhosImageGalleryVSA', 'ImageGalleryString');
var imagens = external.GetStringVSA("ImageGalleryString");
var Pic = imagens.split(";");

// =======================================
// do not edit anything below this line
// =======================================

var t;
var j = 0;
var p = Pic.length;

var preLoad = new Array();
for (i = 0; i < p; i++){
   //preLoad[i] = new Image();
   //preLoad[i].src = Pic[i].replace(/\\/g, "/");
   //preLoad[i] = Pic[i].replace(/\\/g, "/");
   preLoad[i] = Pic[i];
}

function runSlideShow(){
	var ss = document.getElementById('SlideShow');
	
	var so = new SWFObject("images.swf", "SlideShow", "385", "330", "8");
	so.addParam("flashvars", "images=" + imagens);
	so.addParam("wmode", "transparent");
	so.addParam("menu", "false"); 
	so.write("SlideShow");

	
	//var html = '<embed src="images.swf" quality="high" bgcolor="#000000" width="385"  height="330" flashvars="images='+imagens+'" name="testClass" play="true" loop="false" quality="best" allowScriptAccess="always" type="application/x-shockwave-flash" wmode="transparent" pluginspage="http://www.adobe.com/go/getflashplayer"></embed>';
	//ss.innerHTML = html;
}
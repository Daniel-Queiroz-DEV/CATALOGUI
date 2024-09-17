// JavaScript Document
function chamaRecentes() {
		// variaveis para comparacao das unidades (ex: c:, x:)
		var pastaAtual = document.location.href;
		var pastaAtualSplit = pastaAtual.split("/");
		var pastaLocal = external.GetStringVSA("PASTALOCAL");
		var pastaLocalSplit = pastaLocal.split("\\");
		
		// se a pasta de instalacao do promob, estiver na mesma unidade da pasta local, chama os recentes
		if (pastaAtualSplit[3] == pastaLocalSplit[0]) {
			// se o arquivo recents.io existir, carrega os dados para mostrar na tela.
			if (external.FileExists(pastaLocal+"/io/recents.io")) {
				var frame1=document.getElementById('frameRecentes');
				var iframeDocument = frame1.contentWindow ? frame1.contentWindow.document : frame1.contentDocument;
				var root = iframeDocument.documentElement || iframeDocument.body;
				var HTML = root.innerHTML;
				document.getElementById('divRecentes').innerHTML = HTML;
			}
		}
}

function preencheFrameRcentes() {
	var idFrame = document.getElementById('iframeRec');
	html = "<iframe id=\"frameRecentes\" scrolling=\"no\" src=\"file://";
	html += external.GetStringVSA("PASTALOCAL") + "\\IO\\recents.io";
	html += "\" ALLOWTRANSPARENCY=\"true\" frameborder=\"0\" width=\"0\" height=\"0px\"></iframe>";
	idFrame.innerHTML = html;
}
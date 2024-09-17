var isFlashNS=(navigator.mimeTypes && navigator.mimeTypes["application/x-shockwave-flash"] && navigator.mimeTypes["application/x-shockwave-flash"].enabledPlugin)?true:false;
var isMoz2=(navigator.userAgent.indexOf("Mozilla/2") != -1)?true:false;
var isIE=(navigator.appName == "Microsoft Internet Explorer")?true:false;
var isNetscape6 = (!document.all && !document.layers && navigator.appName == "Netscape" && parseInt(navigator.appVersion) >=5)?true:false;
var isDOM = (document.getElementById) ? true : false;
var isIE4 = (navigator.userAgent.indexOf("MSIE 4.0") != -1)?true:false;
var isIE45 = (navigator.userAgent.indexOf("MSIE 4.5") != -1)?true:false;
var isIE5 = (navigator.userAgent.indexOf("MSIE 5.0") != -1)?true:false;
var isIE6 = (navigator.userAgent.indexOf("MSIE 6.0") != -1)?true:false;
var isMac = (navigator.userAgent.indexOf("Mac") != -1)?true:false;
var isMacIE4 = (isMac && isIE4) ? true : false;
var isMacIE45 = (isMac && isIE45) ? true : false;
var isMacIE5 = (isMac && isIE5) ? true : false;
var isOpera = (navigator.userAgent.indexOf("Opera") != -1)?true:false;
var isOpera3 = (navigator.userAgent.indexOf("Opera 3.")!= -1)?true:false;
var isOpera4 = (navigator.userAgent.indexOf("Opera 4.")!= -1)?true:false;
var isNetscape = (!isOpera && (navigator.appName.indexOf("Netscape") != -1 && navigator.userAgent.indexOf("4.") != -1))?true:false;
var isNS3 = (!isOpera && (navigator.userAgent.indexOf("Netscape") != -1 && navigator.userAgent.indexOf("3.") != -1)) ? true : false;
var isNSDIV = (!isOpera && (isNetscape && parseInt(navigator.userAgent.substring(navigator.userAgent.indexOf("4.")+2)) > 5)) ? true : false;
var FlashLayers = new Array();
var flashlayers=0;
var CurrentFlashFiles = new Array();

function start_layer(layername,top,left,width,height,wmodeEnabled)
{
	if(wmodeEnabled)
	{
		layername = "HomeSWF"+layername;
	}else
	{
		layername="Flash"+layername;
	}
	{
		if(!left) { left = 0; }
		document.write('<DIV ID="'+layername+'" STYLE="z-index:0; position:relative; top:'+top+'; left:'+left+'; width:100%; heigt:100%;">');
	}
}

function end_layer()
{
	{
		document.write('</DIV>');
	}
}

function startFlashFixed(top,left,flashfile,flashwidth,flashheight,wmodeEnabled)
{
		if(isMac || !isIE || (typeof wmodeEnabled == "undefined"))
	{
		wmodeEnabled = false;
	}
	left = (left=="none") ? left="" : left;
	top = (isMac) ? top+1 : top;
	start_layer(flashlayers,top,left,flashwidth,flashheight,wmodeEnabled);
	ID=flashfile;
	for(i=0; i<ID.length; i++)
	{
		if(ID.substring(i,i+1) == "/") ID=ID.substring(0,i) + ID.substring(i+1);
		if(ID.substring(i,i+1) == ".") ID=ID.substring(0,i) + ID.substring(i+1);
	}
	
	
	if(isIE || isFlashNS || isDOM)
	{
		document.write('<OBJECT CLASSID="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" CODEBASE="http://active.macromedia.com/flash5/cabs/swflash.cab#version=5,0,0,0" WIDTH="'+flashwidth+'" HEIGHT="'+flashheight+'">');
		document.write('<PARAM NAME="MOVIE" VALUE="'+flashfile+'">');
		document.write('<PARAM NAME="PLAY" VALUE="true">');
		document.write('<PARAM NAME="LOOP" VALUE="true">');
		document.write('<PARAM NAME="QUALITY" VALUE="best">');
		document.write('<PARAM NAME="WMODE" VALUE="transparent">');
		document.write('<EMBED NAME="'+ID+'" ID="'+ID+'" SRC="'+flashfile+'" WIDTH="'+flashwidth+'" HEIGHT="'+flashheight+'" MENU="false" loop="true" QUALITY="BEST" BORDER="0" ALIGN="TOP" swliveConnect=true wmode="transparent" TYPE="application/x-shockwave-flash" PLUGINSPAGE="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash"></EMBED>');
		document.write('</OBJECT>');
	}
	end_layer();
}

function startFlashRelative(top,left,flashfile,flashwidth,flashheight)
{


	if(isIE || isFlashNS || isDOM)
	{
	width = flashwidth + "%" ;
	height = flashheight + "%" ;
	
		document.write('<OBJECT classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://active.macromedia.com/flash5/cabs/swflash.cab#version=5,0,0,0" STYLE="POSITION: absolute; HEIGHT:'+height+';WIDTH:'+width+';TOP:'+top+';LEFT:'+left+'; z-index: 0; overflow: auto" width="'+width+'" height="'+height+'">');
		document.write('<PARAM NAME="MOVIE" VALUE="'+flashfile+'">');
		document.write('<PARAM NAME="PLAY" VALUE="true">');
		document.write('<PARAM NAME="LOOP" VALUE="true">');
		document.write('<PARAM NAME="QUALITY" VALUE="best">');
		document.write('<PARAM NAME="WMODE" VALUE="transparent">');
		document.write('</OBJECT>');
		
	}
}

function mOvr(src,clrOver) { 
 if (!src.contains(event.fromElement)) { 
 	src.style.cursor = 'hand'; src.bgColor = clrOver; 
 	}
 }

function mOut(src,clrIn) { 
 if (!src.contains(event.toElement)) { 
 	src.style.cursor = 'default'; src.bgColor = clrIn; 
 	}
 } 

function mClk(src) { 
  if(event.srcElement.tagName=='TD') {
	src.children.tags('A')[0].click();
        }
 }

function MM_findObj(n, d) { //v3.0
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document); return x;
}

function MM_showHideLayers() { //v3.0
  var i,p,v,obj,args=MM_showHideLayers.arguments;
  for (i=0; i<(args.length-2); i+=3) if ((obj=MM_findObj(args[i]))!=null) { v=args[i+2];
    if (obj.style) { obj=obj.style; v=(v=='show')?'visible':(v='hide')?'hidden':v; }
    obj.visibility=v; }
}

function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}

function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_findObj(n, d) { //v3.0
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document); return x;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}

function MM_goToURL() { //v3.0
  var i, args=MM_goToURL.arguments; document.MM_returnValue = false;
  for (i=0; i<(args.length-1); i+=2) eval(args[i]+".location='"+args[i+1]+"'");
}

function MM_openBrWindow(theURL,winName,features) { //v2.0
  window.open(theURL,winName,features);
}
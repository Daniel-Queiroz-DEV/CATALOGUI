$(document).ready(function () {
    var b = external.GetStringVSA("ManagerOne_IsManagerOneInstalled");
    if (b) {
        InsertCSSNodes();
        InsertScriptNodes();
        CreateTooltipDiv();
    }
});

function CreateTooltipDiv() {
    $("body").prepend("<div id='tooltipBox'><div id='tooltipBoxHeader'><h3>Detalhes</h3><h4><span data-bind='text: Customer.Name'></span></h4><img data-bind='attr: { src: Customer.ThumbFilePath }' width='120' height='100' style='float: right; margin-right:10px;'><div id='informationsTitle'><ul><li>Estágio Atual: </li><li>Situação do Projeto: </li><div data-bind='visible: Customer.ShowEndingDate'><li><span data-bind='text: Customer.SituationDateLabel'></span></li></div><li>Criação: </li><div data-bind='visible: Customer.ShowDeliveryPrevision'><li>Entrega: </li></div><div data-bind='visible: Customer.ShowLastUpdate'><li>Última Atualização: </li></div><li>Caminho do Arquivo: </li></ul></div><div id='informationsResult'><ul><li><span data-bind='text: Customer.Projects[0].Stage'></span></li><li><span data-bind='text: Customer.Projects[0].Situation'></span></li><div data-bind='visible: Customer.ShowEndingDate'><li><span data-bind='text: Customer.Projects[0].EndingDate'></span></li></div><li><span data-bind='text: Customer.Projects[0].Creation'></span></li><div data-bind='visible: Customer.ShowDeliveryPrevision'><li><span data-bind='text: Customer.Projects[0].DeliveryPrevision'></span></li></div><div data-bind='visible: Customer.ShowLastUpdate'><li><span data-bind='text: Customer.LastUpdate'></span></li></div><li><span data-bind='text: Customer.PromobFilePath'></span></li></ul></div></div><div id='tooltipBoxFooter'><div id='img'></div></div></div>");
}

function InsertScriptNodes() {
    var head = document.getElementsByTagName("head")[0];
    var firstChild = head.firstChild;

    var json2 = document.createElement("script");
    json2.type = "text/javascript";
    json2.onload = function () { setTimeout("", 100); };
    json2.src = "_includes/ManagerOne/json2.js";

    head.insertBefore(json2, firstChild);

    var tooltipJS = document.createElement("script");
    tooltipJS.type = "text/javascript";
    tooltipJS.onload = function () { setTimeout("", 100); };
    tooltipJS.src = "_includes/ManagerOne/tooltip.js";

    head.insertBefore(tooltipJS, json2);

    var knockoutJS = document.createElement("script");
    knockoutJS.type = "text/javascript";
    knockoutJS.onload = function () { setTimeout("", 100); };
    knockoutJS.src = "_includes/ManagerOne/knockout.js";

    head.insertBefore(knockoutJS, tooltipJS);

    var customerViewModelJS = document.createElement("script");
    customerViewModelJS.type = "text/javascript";
    customerViewModelJS.onload = function () { setTimeout("", 100); };
    customerViewModelJS.src = "_includes/ManagerOne/customerViewModel.js";

    head.insertBefore(customerViewModelJS, knockoutJS);
}

function InsertCSSNodes() {
    var head = document.getElementsByTagName("head")[0];
    var firstChild = head.firstChild;

    var jqueryUICss = document.createElement("link");
    jqueryUICss.rel = "Stylesheet";
    jqueryUICss.type = "text/css";
    jqueryUICss.href = "_includes/ManagerOne/redmond/jquery-ui.custom.css";

    head.insertBefore(jqueryUICss, firstChild);

    var main = document.createElement("link");
    main.rel = "Stylesheet";
    main.type = "text/css";
    main.href = "_includes/ManagerOne/main.css";

    head.insertBefore(main, jqueryUICss);
}
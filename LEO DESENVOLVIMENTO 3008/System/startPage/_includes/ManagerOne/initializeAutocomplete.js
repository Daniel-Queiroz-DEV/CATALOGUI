$(document).ready(function () {
    var b = external.GetStringVSA("ManagerOne_IsManagerOneInstalled");
    if (b) {
        InsertCSSNodes();
        InsertScriptNodes();
    }
});

function InsertScriptNodes() {
    var head = document.getElementsByTagName("head")[0];
    var firstChild = head.firstChild;

    var json2 = document.createElement("script");
    json2.type = "text/javascript";
    json2.onload = function () { setTimeout("", 100); };
    json2.src = "../startPage/_includes/ManagerOne/json2.js";

    head.insertBefore(json2, firstChild);

    var jqueryUI = document.createElement("script");
    jqueryUI.type = "text/javascript";
    jqueryUI.onload = function () { setTimeout("", 100); };
    jqueryUI.src = "../startPage/_includes/ManagerOne/jquery-ui.custom.min.js";

    head.insertBefore(jqueryUI, json2);

    var knockoutJS = document.createElement("script");
    knockoutJS.type = "text/javascript";
    knockoutJS.onload = function () { setTimeout("", 100); };
    knockoutJS.src = "../startPage/_includes/ManagerOne/knockout.js";

    head.insertBefore(knockoutJS, jqueryUI);

    var knockoutMappingJS = document.createElement("script");
    knockoutMappingJS.type = "text/javascript";
    knockoutMappingJS.onload = function () { setTimeout("", 100); };
    knockoutMappingJS.src = "../startPage/_includes/ManagerOne/knockout.mapping-latest.js";

    head.insertBefore(knockoutMappingJS, knockoutJS);

    var customerViewModelJS = document.createElement("script");
    customerViewModelJS.type = "text/javascript";
    customerViewModelJS.onload = function () { setTimeout("", 100); };
    customerViewModelJS.src = "../startPage/_includes/ManagerOne/customerViewModel.js";

    head.insertBefore(customerViewModelJS, knockoutMappingJS);

    var maskInputJS = document.createElement("script");
    maskInputJS.type = "text/javascript";
    maskInputJS.onload = function () { setTimeout("", 100); };
    maskInputJS.src = "../startPage/_includes/ManagerOne/jquery.maskedinput.min.js";

    head.insertBefore(maskInputJS, customerViewModelJS);

    var autocompleteJS = document.createElement("script");
    autocompleteJS.type = "text/javascript";
    autocompleteJS.onload = function () { setTimeout("", 100); };
    autocompleteJS.src = "../startPage/_includes/ManagerOne/autocomplete.js";

    head.insertBefore(autocompleteJS, maskInputJS);
}

function InsertCSSNodes() {
    var head = document.getElementsByTagName("head")[0];
    var firstChild = head.firstChild;

    var jqueryUICss = document.createElement("link");
    jqueryUICss.rel = "Stylesheet";
    jqueryUICss.type = "text/css";
    jqueryUICss.href = "../startPage/_includes/ManagerOne/redmond/jquery-ui.custom.css";

    head.insertBefore(jqueryUICss, firstChild);

    var main = document.createElement("link");
    main.rel = "Stylesheet";
    main.type = "text/css";
    main.href = "../startPage/_includes/ManagerOne/main.css";

    head.insertBefore(main, jqueryUICss);
}
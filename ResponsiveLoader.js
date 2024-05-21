/*
+--------------------------------+
'Responsive Loader Tooltip JS    '
+--------------------------------+----------------------------------------------------------------------------------------+
' Esta es un parte necesaria que necesita ResponsiveLoader.vb para funcionar, porfavor si la va usar adhierela a tu página'
' ASPX. Y no olvide añadir la clase ResponsiveLoader a su proyecto.                                                       '
' Información necesaria aquí: https://github.com/JULAPALULA/AJAX-Responsive-Loader                                        '
+-------------------------------------------------------------------------------------------------------------------------+
*/

// Este script hace que al tener 1200 de pixeles mínimo como cliente se llame a una función web y refresque la página para mostrar la otra vista (div oculto)
var lastWindowWidth = window.innerWidth;
var aspxPage = window.location.pathname.split('/').pop();

var firstTimeLoad = localStorage.getItem("firstTimeLoad"); // Check if it's the first time loading

var pcLimit;
var tabletLimit; // Por defecto está desactivada
var mobileLimit;
var resizeListenerEnabled = true; // Por defecto en true para que al redimensionar se cambie

function updateSize() {
    var windowWidth = window.innerWidth;
    var xhr = new XMLHttpRequest();

    if (windowWidth >= pcLimit && lastWindowWidth < pcLimit) {
        xhr.open('POST', aspxPage + '/OnResizePC', true);
    } else if (tabletLimit !== -1 && windowWidth >= tabletLimit && windowWidth < pcLimit && (lastWindowWidth < tabletLimit || lastWindowWidth >= pcLimit)) {
        xhr.open('POST', aspxPage + '/OnResizeTablet', true);
    } else if (windowWidth < (tabletLimit === -1 ? pcLimit : tabletLimit) && lastWindowWidth >= (tabletLimit === -1 ? pcLimit : tabletLimit)) {
        xhr.open('POST', aspxPage + '/OnResizeMobile', true);
    } else {
        lastWindowWidth = windowWidth;
        return;
    }

    xhr.setRequestHeader('Content-Type', 'application/json');
    xhr.onload = function () {
        location.reload();
    };
    xhr.send();

    lastWindowWidth = windowWidth;
}

// Fuerza la vista al arrancar la página
function pushUpdateSize() {
    var windowWidth = window.innerWidth;
    var xhr = new XMLHttpRequest();
    localStorage.setItem("firstTimeLoad", true);
    if (windowWidth >= pcLimit) {
        xhr.open('POST', aspxPage + '/OnResizePC', true);
    } else if (tabletLimit !== -1 && windowWidth >= tabletLimit && windowWidth < pcLimit) {
        xhr.open('POST', aspxPage + '/OnResizeTablet', true);
    } else {
        xhr.open('POST', aspxPage + '/OnResizeMobile', true);
    }

    xhr.setRequestHeader('Content-Type', 'application/json');
    xhr.onload = function () {
          localStorage.setItem("firstTimeLoad", "true");
        location.reload();
    };
    xhr.send();

    lastWindowWidth = windowWidth;
}


if (resizeListenerEnabled === true) {
    window.addEventListener("resize", updateSize);
}

if (firstTimeLoad === false) {
    window.addEventListener("load", pushUpdateSize);
}

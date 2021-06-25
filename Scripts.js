function SwapSatellite() {
    var imgSatellite = document.getElementById('imgSatellite');
    if (imgSatellite.src == 'images/fdbk_rest.gif') {
        imgSatellite.src = 'images/fdbk_anim.gif';
    }
    else {
        imgSatellite.src = 'images/fdbk_rest.gif';
    }
}

function SpinSatellite() {
    imgSatellite.src = 'images/fdbk_anim.gif';
    setTimeout(StopSatellite, 3000);
}

function StopSatellite() {
    imgSatellite.src = 'images/fdbk_rest.gif';
}

var monitor = setInterval(function () {
    var elem = document.activeElement;
    if (elem && elem.tagName == 'IFRAME') {
        SpinSatellite();
        document.getElementById('imgSatellite').focus();
        clearInterval(monitor);
    }
}, 100);
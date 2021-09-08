var nodiexpan;
var nodiadd;
var expanArray;
var addArray;

function gestoreLoad () {
    try {
        nodiexpan = document.getElementsByTagName("em");
        nodiadd = document.getElementsByTagName("i");
        expanArray = nodiexpan.length;
        addArray = nodiadd.length;
    } catch ( e ) {
        alert("gestoreLoad " + e);
        }
    }

function rimuovi(){
    for (var c = 0; c < expanArray; c++) 
    {
        if(nodiexpan[c].style.display= 'block')
        {
            nodiexpan[c].style.display= 'none';
        }
    }
}
    
function sciogli(){
    for (var c = 0; c < expanArray; c++) 
    {
        if(nodiexpan[c].style.display= 'none')
        {
            nodiexpan[c].style.display= 'inline';
        }
    }
}

function scompari(){
    for (var c = 0; c < addArray; c++) 
    {
        if(nodiadd[c].style.display= 'block')
        {
            nodiadd[c].style.display= 'none';
        }
    }
}

function appari(){
    for (var c = 0; c < addArray; c++) 
    {
        if(nodiadd[c].style.display= 'none')
        {
            nodiadd[c].style.display= 'inline';
        }
    }
}

window.onload = gestoreLoad;
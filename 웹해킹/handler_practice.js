const title = document.querySelector("div.hello:first-child h1");

function handletitleClick() {
    title.style.color = "blue"
}

function mouseOn(){
    title.innerText = "mouse is here";
}

function mouseOff(){
    title.innerText = "mouse is gone";
}

title.addEventListener("click", handletitleClick);
title.addEventListener("mouseenter", mouseOn);
title.addEventListener("mouseleave", mouseOff);

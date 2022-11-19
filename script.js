const inputType = document.querySelector("#typing")
const inputClick = document.querySelector("#Push")

const handleTyping = function(){
    console.log("타이핑")
}

const handleClick = function(){
    console.log("클릭")
}

inputType.onkeydown = function(){
    console.log("타이핑")
}
inputClick.onclick = function(){
    console.log("클릭")
}
document.querySelector("#form")
.addEventListener("submit",
function(event){


event.preventDefault();



let name=
event.target.elements.username.value;



if(name==""){

document.querySelector("#error").innerHTML=
"Name Required";

}


else{

console.log("Submitted");

}


});

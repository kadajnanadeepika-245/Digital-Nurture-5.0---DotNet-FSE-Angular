function addEvent(name){

console.log(name+" Added");

}



function registerUser(){

console.log("User Registered");

}



function filterEventsByCategory(events,callback){

callback(events);

}




function counter(){

let count=0;


return function(){

count++;

console.log(count);

}

}



let musicCount=counter();

musicCount();

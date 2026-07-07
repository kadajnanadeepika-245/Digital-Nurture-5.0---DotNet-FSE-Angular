let user={

name:"Deepika",

event:"Music"

};



setTimeout(function(){



fetch(
"https://jsonplaceholder.typicode.com/posts",
{

method:"POST",

body:JSON.stringify(user)

}

)


.then(res=>res.json())


.then(data=>console.log("Success",data))


.catch(error=>console.log(error));



},2000);

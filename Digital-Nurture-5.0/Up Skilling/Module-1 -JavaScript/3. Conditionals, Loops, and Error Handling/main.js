let events=[
{
name:"Music",
date:"2026-08-10",
seats:20
},
{
name:"Dance",
date:"2025-01-01",
seats:0
}
];
events.forEach(function(event){
if(event.seats>0){
console.log(event.name);
}
else{
console.log("Event Full");
}
});
try{
register();
}
catch(error){
console.log(error);
}

let events=[];


events.push({

name:"Music",

category:"music"

});



let musicEvents=
events.filter(e=>e.category=="music");



let cards=
events.map(e=>"Workshop on "+e.name);



console.log(cards);

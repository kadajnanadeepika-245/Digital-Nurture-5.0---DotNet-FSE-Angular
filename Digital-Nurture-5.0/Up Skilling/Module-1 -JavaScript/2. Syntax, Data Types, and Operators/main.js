const eventName="Music Festival";

const eventDate="20 July 2026";

let seats=50;


console.log(
`${eventName} is on ${eventDate}. Seats Available: ${seats}`
);


function register(){

seats--;

console.log("Seats Left: "+seats);

}

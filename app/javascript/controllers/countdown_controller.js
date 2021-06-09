import { Controller } from 'stimulus'; 
// Set the date we're counting down to
const element = document.getElementById("countdown");
if (typeof(element) != 'undefined' && element != null) {
  var deadline = document.getElementById("countdown").getAttribute("attr-deadline");
  var countDownDate = new Date(deadline).getTime();

  // Update the count down every 1 second
  var x = setInterval(function() {

    // Get today's date and time
    var now = new Date().getTime();

    // Find the distance between now and the count down date
    var distance = countDownDate - now;

    // Time calculations for days, hours, minutes and seconds
    var days = Math.floor(distance / (1000 * 60 * 60 * 24));
    var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
    var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
    var seconds = Math.floor((distance % (1000 * 60)) / 1000);

    // Display the result in the element with id="demo"
      document.getElementById("countdown").innerHTML = days + "d " + hours + "h "
    + minutes + "m " + seconds + "s ";
    
    // If the count down is finished, write some text
    if (distance < 0) {
      clearInterval(x);
      document.getElementById("countdown").innerHTML = "EXPIRED";
    }
  }, 1000);
}


export default class extends Controller {};

//function countdownTimer() {
    //const deadline = document.getElementById("demo").getAttribute("attr-deadline");
    //const difference = +new Date(deadline) - +new Date();
    //let remaining = "Time's up!";

    //if (difference > 0) {
        //const parts = {
        //days: Math.floor(difference / (1000 * 60 * 60 * 24)),
        //hours: Math.floor((difference / (1000 * 60 * 60)) % 24),
        //minutes: Math.floor((difference / 1000 / 60) % 60),
        //seconds: Math.floor((difference / 1000) % 60),
        //};
        //remaining = Object.keys(parts).map(part => {
        //return `${parts[part]} ${part}`;
        //}).join(" ");
    //}

    //document.getElementById("countdown").innerHTML = days + "d " + hours + "h "
  //+ minutes + "m " + seconds + "s ";
//}

//countdownTimer();
//setInterval(countdownTimer, 1000);
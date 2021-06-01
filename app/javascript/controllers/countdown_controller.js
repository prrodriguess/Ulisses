// import { Controller } from 'stimulus'; 

// function countdownTimer() {
//     const difference = +new Date("2021-05-31") - +new Date();
//     let remaining = "Time's up!";

//     if (difference > 0) {
//         const parts = {
//         days: Math.floor(difference / (1000 * 60 * 60 * 24)),
//         hours: Math.floor((difference / (1000 * 60 * 60)) % 24),
//         minutes: Math.floor((difference / 1000 / 60) % 60),
//         seconds: Math.floor((difference / 1000) % 60),
//         };
//         remaining = Object.keys(parts).map(part => {
//         return `${parts[part]} ${part}`;
//         }).join(" ");
//     }

//     document.getElementById("countdown").innerHTML = remaining;
// }

// countDownTimer();
// setInterval(countdownTimer, 1000);

// export default class extends Controller {};

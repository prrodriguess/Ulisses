import { Controller } from 'stimulus'; 

const startingMinutes = 10
let time = startingMinutes * 60;

const countdownEl = document.getElementById('countdown');

setInterval(updateCountdown, 1000);

function updateCountdown() {
    const minutes = Math.floor(time / 60);
    let seconds = time % 60;

    seconds = seconds < 10 ? '0' + seconds : seconds;

    countdownEl.innerHTML = `${minutes}:${seconds}`;
    time--;
}

export default class extends Controller {
  static targets = ["heading"]

  connect() {
    console.log("hello from StimulusJS")
  }

  greet() {
    this.headingTarget.innerHTML = "Hello World"
  }
}

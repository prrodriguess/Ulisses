// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import 'controllers'

Rails.start()
Turbolinks.start()
ActiveStorage.start()


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";

// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';

//document.addEventListener('turbolinks:load', () => {
//const btn = document.querySelector('.new-b');
//if (btn) {
//
//btn.onmousemove = function(e){
//const x = e.pageX - btn.offsetLeft;
//const y = e.pageY - btn.offsetTop;

//btn.style.setProperty('--x', x + 'px');
//btn.style.setProperty('--y', y + 'px');
    //}
  //};


  //const paymentButton = document.getElementById('pay');
// paymentButton.addEventListener('click', () => {
        //const stripe = Stripe('<%= ENV['STRIPE_PUBLISHABLE_KEY'] %>');
          //stripe.redirectToCheckout({
            //sessionId: '<%= @goal.checkout_session_id %>'
          //});
        //})
      //});
  // Call your functions here, e.g:
  // initSelect2();


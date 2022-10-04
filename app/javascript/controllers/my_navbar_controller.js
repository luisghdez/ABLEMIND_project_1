import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    console.log("1connected")
  }

  myFunction() {
    var x = document.getElementById("myTopnav");
    if (x.className === "topnav") {
      x.className += " responsive";
    } else {
      x.className = "topnav";
    }
  };
}

import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="test"
export default class Custom extends Controller {
  connect() {}

  addNewRepSetForm() {
    console.log("It me a test woo woooo");
  }
}

import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    let test = "a test i guess";
    console.log("hello world stim controller this is an update that hopefully requires no assets precompile");
  }
}

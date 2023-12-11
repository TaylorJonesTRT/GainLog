// Entry point for the build script in your package.json

import "@hotwired/turbo-rails";
import "flowbite/dist/flowbite.turbo.js";
import "./controllers";

document.addEventListener("turbolinks:load", function () {
  var forms = document.querySelectorAll("form");

  forms.forEach(function (form) {
    form.addEventListener("click", function (event) {
      var target = event.target;

      if (target.classList.contains("remove_record")) {
        target.previousElementSibling.value = "1";
        target.closest("tr").style.display = "none";
        event.preventDefault();
      }

      if (target.classList.contains("add_fields")) {
        var time = new Date().getTime();
        var regexp = new RegExp(target.getAttribute("data-id"), "g");
        var fieldsContainer = document.querySelector(".fields");
        fieldsContainer.insertAdjacentHTML(
          "beforeend",
          target.getAttribute("data-fields").replace(regexp, time),
        );
        event.preventDefault();
      }
    });
  });
});

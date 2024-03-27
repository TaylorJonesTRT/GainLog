// Configure your imporSoftware Engineer (Golang)t map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails";
import Toastify from "toastify-js";
import "./controllers"

// console.log(flashMessages);
// console.log(JSON.parse(flashMessages.dataset.flashMessages));
document.addEventListener("turbo:morph", () => {
    // console.log(event.newStream);
    console.log(event.detail);
    const flashMessages = document.getElementById("toast-messages");
    const backgroundColors = {
        alert: "#f44336",
        error: "#f39c12",
        notice: "#009688"
    }
    const messages = JSON.parse(flashMessages.dataset.flashMessages);
    console.log('flash messages parsed');
    console.log(messages);
    for (const key in messages) {
        console.log(messages[key]);
        Toastify(
            {
                text: messages[key],
                duration: 3000,
                close: true,
                backgroundColor: backgroundColors[key],
                stopOnFocus: true
            }
        ).showToast();
    }
    // for (let i = 0; i < messages.length; i++) {
    //     console.log(messages[i]);
    //     const [type, message] = messages[i];
    //     console.log('hello');
    //     console.log(flashMessage);
    //     Toastify(
    //         {
    //             text: message,
    //             duration: 3000,
    //             close: true,
    //             backgroundColor: backgroundColors[type],
    //             stopOnFocus: true
    //         }
    //     ).showToast();
    // };
});


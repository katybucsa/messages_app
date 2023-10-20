import {Controller} from "@hotwired/stimulus"

export default class extends Controller {
    connect() {
        // this.element.textContent = "Hello World!";
        console.log("FEWWEFWEFWE");
        // document.addEventListener("turbo:load", () => $('.ui.dropdown').dropdown())
        // $('.ui.dropdown').dropdown();
        // console.log($(document))
        $(document).on('turbo:load', function () {
            console.log("HERREEEE")
            $('.ui.dropdown').dropdown();
        });
    }
}

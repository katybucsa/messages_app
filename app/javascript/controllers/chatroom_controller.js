import {Controller} from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    $('.ui.dropdown').dropdown()

    $('.message .close').on('click', function () {
      $(this).closest('.message').transition('fade');
    });

    $('.send_message').on('click', function () {
      $(this).closest('form').submit()
    });
  }
}

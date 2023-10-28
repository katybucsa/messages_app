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

    $('input#message_body').on('keyup', function (e) {
      if (e.keyCode === 13) {
        $('input#message_body').val('')
      }
    });

    this.scrollBottom();
  }

  scrollBottom() {
    let messages_content = $('#messages_content')
    if (messages_content.length > 0) {
      messages_content.scrollTop(messages_content[0].scrollHeight)
    }

    messages_content.change(function () {
      if ($(this).length > 0) {
        $(this).scrollTop($(this)[0].scrollHeight)
      }
    });
  }
}

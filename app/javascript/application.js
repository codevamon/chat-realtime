// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

import "@hotwired/turbo-rails"
import "jquery"
import "semantic-ui"
import "channels"

scroll_bottom = function() {
    if ($('#messages').length > 0) {
      $('#messages').scrollTop($('#messages')[0].scrollHeight);
    }
}
  
submit_message = function() {
    $('#message_body').on('keydown', function(e) {
       if (e.keyCode == 13) {
          $('button').click(); 
       };
     });
 }; 
  
$(document).on('turbolinks:load', function() {
    $('.ui.dropdown').dropdown();
    $('.message .close').on('click', function() {
      $(this).closest('.message').transition('fade');
    });
    submit_message();
    scroll_bottom();
    $(document).bind("ajax:beforeSend", function(){
        $('#message_body').val('');
    });
})



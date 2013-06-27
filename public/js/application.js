$(document).ready(function(){
  $('.event_link').click(function(event){
    event.preventDefault();
    var current_link = $(this);
    var show_link = $(this).attr('href');
    $.ajax({
      url: show_link,
      method: 'GET'
    }).done(function(requestData){
      // $('<hr/ class="find">').remove();
      $('.invite').remove();
      $(current_link).prepend('<hr/ class="invite">');
      $(current_link).parent().append(requestData + '<hr/ class="invite">');
      console.log(requestData);
    }).error(function(){
    });
  });

  // send an HTTP DELETE request for the sign-out link
  $('a#sign-out').on("click", function (e) {
    e.preventDefault();
    var request = $.ajax({ url: $(this).attr('href'), type: 'delete' });
    request.done(function () { window.location = "/"; });
  });

});

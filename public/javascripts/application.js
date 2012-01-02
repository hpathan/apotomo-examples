$(document).ready(function(){
  var form = $("#new_note_form");
  form.submit(function() {
    $.ajax({method:$(this).attr("method"), url:$(this).attr("action"),data:$(this).serialize()});
    return false;
  });

  var entry = $("#entry");
  entry.keyup(function() {
    $.ajax({method:"GET", url:$(this).attr("data-event-url") + "&query=" + $(this).val()});
  });

});
$(function() {

  var search_list = $(".notes");

  function appendNote(note) {
    var html = `<div class='note'>
                  <a href = "/notes/${note.id}" data-method="get">
                    <img src= "${note.image.url}" width="200" height="250">
                  </a>
                </div>`
    search_list.append(html);
  }

  function appendErrMsgToHTML(msg) {
    var html = `<div class='note'>${ msg }</div>`
    search_list.append(html);
  }

  $(".search-form").on("keyup", function() {
    var input = $(".search-form").val();
    $.ajax({
      type: 'GET',
      url: '/notes/search',
      data: { keyword: input },
      dataType: 'json'
    })
    .done(function(notes) {
      search_list.empty();
      if (notes.length !== 0) {
        notes.forEach(function(note){
          appendNote(note);
        });
      }
      else {
        appendErrMsgToHTML("一致するデータがありません")
      }
    })
    .fail(function() {
      alert('error');
    });
  });
});
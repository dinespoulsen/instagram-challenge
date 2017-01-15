$(document).ready(function() {

  $('.tag-link').on('click', function(event){
      event.preventDefault();

      var link = this
      var tagHolder = link.parentNode.parentNode;

    $.ajax({
      url: this.href,
      type: 'DELETE',
      success: function(response) {
        tagHolder.innerHTML = "";
        var tags = response.new_tags;
        for (i = 0; i < tags.length; i+= 1) {
          tagHolder.innerHTML += "<p class='tags'>" + tags[i].description + "<a class='tag-link' href='/tags/" + tags[i].id + "'>x</a></p>";
        }
      }
    })
  })
})

$(document).ready(function() {

  $(document).on('click', ".tag-link", function(event){
      event.preventDefault();

      var link = this
      var tagHolder = link.parentNode.parentNode;

    $.ajax({
      url: this.href,
      type: 'DELETE',
      success: function(response) {
        tagHolder.innerHTML = "";
        var taggings = response.new_taggings;
        var tags = response.new_tags;
        for (i = 0; i < taggings.length; i+= 1) {
          tagHolder.innerHTML += "<p class='tags'><a href='/filters?tag=" + tags[i].id + "'>" + tags[i].description + "</a><a class='tag-link' href='/tagging/" + taggings[i].id + "'>x</a></p>";
        }
      }
    })
  })
})

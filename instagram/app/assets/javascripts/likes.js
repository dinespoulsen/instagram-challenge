$(document).ready(function() {

  $('.like-link').on('click', function(event){
      event.preventDefault();

      var likeCount = $(this).siblings('.like-count')[0];
      var link = this

      if(this.text === "Like") {
        $.post(this.href, function(response){
          link.text = "Unlike"
          likeCount.innerHTML = response.new_like_count;
          link.href = "likes/" + response.like_id;
        })
      }
      else {
        console.log(link.href);
        $.ajax({
          url: this.href,
          type: 'DELETE',
          success: function(response) {
            link.href = "pictures/" + response.picture_id + "/likes";
            likeCount.innerHTML = response.new_like_count;
            link.text = "Like"
          }
        });
      }
  })
})

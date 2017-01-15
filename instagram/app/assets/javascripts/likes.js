$(document).ready(function() {

  $(document).on('click', ".like-link", function(event){
      event.preventDefault();


      var likeCount = $(this).siblings('.like-count')[0];
      var link = this

      if(this.text === "Like") {
        $.post(this.href, function(response){
          link.href = "/likes/" + response.like_id;
          link.text = "Unlike"
          likeCount.innerHTML = response.new_like_count;
        })
      }
      else {
        $.ajax({
          url: this.href,
          type: 'DELETE',
          success: function(response) {
            link.href = "/pictures/" + response.picture_id + "/likes";
            likeCount.innerHTML = response.new_like_count;
            link.text = "Like"
          }
        });
      }
  })
})

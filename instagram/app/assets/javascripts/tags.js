$(document).ready(function() {

  $('.tag-link').on('click', function(event){
      event.preventDefault();

      var link = this

      console.log(this);
      // if(this.text === "Like") {
      //   $.post(this.href, function(response){
      //     link.text = "Unlike"
      //     likeCount.innerHTML = response.new_like_count;
      //     link.href = "likes/" + response.like_id;
      //   })
      // }
  })
})

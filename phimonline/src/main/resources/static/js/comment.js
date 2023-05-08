const loadComments = (page, movieId) => {
    $.ajax({
      url: '/api/loadComment',
      type: 'GET',
      data: {
        page: page,
        movie_id: movieId
      },
     
      success: function(comments) {
        console.log(comments)
        comments.forEach(comment => {
          const com = `
            <br>
            <div class="card bg-dark text-white col-lg-10 col-sm-12">
              <div class="card-header d-flex align-items-center">
                <img src="/images/${comment.user.url_avatar}" class="rounded-circle mr-3" alt="User Avatar" style="width: 50px; height: 50px;">
                <div class="d-flex justify-content-between">
                  <div>
                    <h5 class="mb-0">${comment.user.name}</h5>
                    <small class="text-muted">${comment.date}</small>
                  </div>
                </div>
              </div>
              <div class="card-body">
                <p class="card-text">
                  ${comment.content}
                </p>
              </div>
            </div>
            <br>
          `;
          $('#listcomment').append(com);
        });
       
        
      },
      error: function(xhr, status, error) {
        console.error(error);
      }
    });
  };
  var page = 1;
const movieId = $('#movie_id').val();
$('.reloadComment').click(function(e) {
    console.log(page);
  e.preventDefault();
  loadComments(page, movieId);
  page++;
});
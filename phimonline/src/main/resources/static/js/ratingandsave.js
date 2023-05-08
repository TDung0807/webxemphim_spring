$(document).ready(function() {
    $('input[name=rating]').change(function() {
        var rating = $('input[name=rating]:checked').val();
        var movieId = $('#movie_id').val();
        console.log(movieId);
        console.log(rating);

        $.ajax({
            type: 'POST',
            url: '/api/rate',
            data: {number_rating: rating, movie_id: movieId},
            success: function(data) {
                console.log(data.success);
                if (data.success == 'true') {
                   window.alert(data.message);
                } else {
                    window.alert(data.message);

                }
            },
            error: function(xhr, status, error) {
               console.log(error);
            }
        });
    });
    $('#savefilm').click(function() {
        var movieId = $('#movie_id').val();
        var number_now = 1;

        $.ajax({
            type: 'POST',
            url: '/api/savefilm',
            data: {number_now: number_now, movie_id: movieId},
            success: function(data) {
                console.log(data.success);
                if (data.success == 'true') {
                   window.alert(data.message);
                } else {
                    window.alert(data.message);
                }
            },
            error: function(xhr, status, error) {
               console.log(error);
            }
        });
    });
    $('#addComment').click(function() {
        var movieId = $('#movie_id').val();
        var content = $('#content').val();
        if(content==null) {
            window.alert("Vui lòng thêm bình luận");
            dispatchEvent
        }
        $.ajax({
            type: 'POST',
            url: '/api/addComment',
            data: {content: content, movie_id: movieId},
            success: function(data) {
              
                
                console.log(data.success);
                if (data.success == 'true') {
                    listcomment = $('#listcomment');
                   com = `
                   <br>
                   <div class="card bg-dark text-white col-lg-10 col-sm-12">
                   <div class="card-header d-flex align-items-center">
                     <img src="" class="rounded-circle mr-3" alt="User Avatar" style="width: 50px; height: 50px;">
 


                     <div class="d-flex justify-content-between">
                       <div>
                         <h5 class="mb-0">User Name</h5>
                         <small class="text-muted">${data.date}</small>
                       </div>
                      
                     </div>
                     
                     
                   </div>
                   <div class="card-body">
                     <p class="card-text">
                 ${content}
                 </p>
                     </div>
                   </div>
                   <br>
                   `
                   listcomment.append(com)
                   window.alert(data.message);

                } else {
                    window.alert(data.message);
                }
            },
            error: function(xhr, status, error) {
               console.log(error);
            }
        });
    });
});


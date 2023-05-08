const filmList = document.getElementById('film-list');
const totalFilms = document.getElementById('total-films');
const totalUsers = document.getElementById('total-users');

// tải danh sách phim từ tệp JSON
fetch('film.json')
    .then(response => response.json())
    .then(data => {
        // cập nhật số lượng phim và người dùng
        totalFilms.textContent = data.length;
        totalUsers.textContent = 5000;

        // hiển thị danh sách phim
        data.forEach(film => {
            const li = document.createElement('li');
            li.innerHTML = `<h2>${film.title} (${film.year})</h2>
                      <p><strong>Director:</strong> ${film.director}</p>
                      <p><strong>Actors:</strong> ${film.actors.join(', ')}</p>
                      <p><strong>Genres:</strong> ${film.genres.join(', ')}</p>
                      <img src="${film.poster}" alt="${film.title} poster">`;
            filmList.appendChild(li);
        });
    })
    .catch(error => console.error(error));
const pass_field = document.querySelector('#password');
const pass_field2 = document.querySelector('#confirm');
const show_btn = document.querySelector('.show');
const show_btn2 = document.querySelector('.show1');
const pass_field0 = document.querySelector('#passwordLogin');
const show_btn0 = document.querySelector('.show0');
show_btn.addEventListener('click', function () {
    if (pass_field.type === "password") {
        pass_field.type = "text";
        show_btn.textContent = "HIDE";
        show_btn.style.color = "#222";
    } else {
        pass_field.type = "password";
        show_btn.textContent = "SHOW";
        show_btn.style.color = "#222";
    }

});

show_btn2.addEventListener('click', function () {
    if (pass_field2.type === "password") {
        pass_field2.type = "text";
        show_btn2.textContent = "HIDE";
        show_btn2.style.color = "#222";
    } else {
        pass_field2.type = "password";
        show_btn2.textContent = "SHOW";
        show_btn2.style.color = "#222";
    }

});

show_btn0.addEventListener('click', function () {
    if (pass_field0.type === "password") {
        pass_field0.type = "text";
        show_btn0.textContent = "HIDE";
        show_btn0.style.color = "#222";
    } else {
        pass_field0.type = "password";
        show_btn0.textContent = "SHOW";
        show_btn0.style.color = "#222";
    }
});



//check confirm password #e20714

function checkConfirm() {
    var password = document.getElementById("password").value.trim();
    var confirmPassword = document.getElementById("confirm").value.trim();
    var username = document.getElementById("username").value.trim();
    var signup = document.getElementById('createButton');
    var validRegex = /^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    var validPhone = /^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$/im;
    if (password == confirmPassword && check() == 2 && (username.match(validRegex) || username.match(validPhone))) {
        signup.style.pointerEvents = "auto";
        signup.style.backgroundColor = 'red';
        $("#createButton").hover(function () { $(this).css({ backgroundColor: " #e20714" }) }, function () { $(this).css({ backgroundColor: "red" }) });
        signup.disabled = false;
    } else {
        signup.style.backgroundColor = '#7e7e7e';
        signup.style.pointerEvents = "none";
        signup.disabled = true;
    }

}

function checkLogin() {
    var password = document.getElementById("passwordLogin").value.trim();
    var username = document.getElementById("usernameLogin").value.trim();
    var signinButton = document.getElementById("signinButton");
    if (password != "" && username != "") {
        signinButton.style.pointerEvents = "auto";
        signinButton.style.backgroundColor = 'red';
        $("#createButton").hover(function () { $(this).css({ backgroundColor: " #e20714" }) }, function () { $(this).css({ backgroundColor: "red" }) });
        signinButton.disabled = false;
    } else {
        signinButton.style.backgroundColor = '#7e7e7e';
        signinButton.style.pointerEvents = "none";
        signinButton.disabled = true;
    }
}



function check() {
    var password = document.getElementById("password").value;

    password = password.trim();

    let count = 0

    if (password.length >= 6) {
        document.getElementById('check1').style.color = '#90EE90';
        document.getElementById('check1').style.fontWeight = '900';
        count++;
    } else {
        document.getElementById('check1').style.color = '#FFF';
        document.getElementById('check1').style.fontWeight = '200';
        count--;
    }
    if (password.match(/[A-Za-z]/i)) {
        document.getElementById('check2').style.color = '#90EE90';
        document.getElementById('check2').style.fontWeight = '900';
        count++
    } else {
        document.getElementById('check2').style.color = '#FFF';
        document.getElementById('check2').style.fontWeight = '200';
        count--;
    }
    return count;
}

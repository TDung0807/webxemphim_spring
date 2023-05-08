const imgDiv = document.querySelector(".image-wrapper");
const img = document.querySelector("#photo");
const file = document.querySelector("#image");
const uploadBtn = document.querySelector("#upload-btn");

img.addEventListener("mouseenter", function () {
    uploadBtn.style.display = "block";
});


img.addEventListener("mouseleave", function () {
    uploadBtn.style.display = "none";
});


uploadBtn.addEventListener("mouseenter", function () {
    uploadBtn.style.display = "block";
});


uploadBtn.addEventListener("mouseleave", function () {
    uploadBtn.style.display = "none";
});

function enableTextBox(id) {
    var textBox = document.getElementById(id);
    textBox.disabled = false;
    textBox.focus();
    textBox.style.border = "none";
    // document.addEventListener("click", function (event) {
    //     if (event.target !== textBox) {
    //         textBox.disabled = true;
    //     }
    // });
}

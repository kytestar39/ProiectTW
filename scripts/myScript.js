// Get the modal
var modal = document.getElementById('myDropdown');
// Get the modal
var modal2 = document.getElementById('myDropdown2');

// Get the button that opens the modal
var btnRegis = document.getElementById("Register");

// Get the button that opens the modal
var btnLog = document.getElementById("buttonLog");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

var span2 = document.getElementsByClassName("close")[1];

// When the user clicks the button, open the modal 
btnLog.onclick = function() {
	modal2.style.display = "none";
    modal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
    modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}


btnRegis.onclick = function() {
	modal.style.display = "none";
    modal2.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span2.onclick = function() {
    modal2.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal2.style.display = "none";
    }
}
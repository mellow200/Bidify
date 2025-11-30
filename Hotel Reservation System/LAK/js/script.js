document.querySelector("form").addEventListener("submit", function(event) {
    var firstName = document.getElementById("first-name").value;
    var lastName = document.getElementById("last-name").value;
    var email = document.getElementById("email").value;
    var date = document.getElementById("date").value;
    var guests = document.getElementById("guests").value;

    // Validate all fields are filled
    if (!firstName || !lastName || !email || !date || !guests) {
        alert("Please fill in all required fields.");
        event.preventDefault(); // Stop form submission if validation fails
    } else {
        // Validate email format
        var emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        if (!emailPattern.test(email)) {
            alert("Please enter a valid email address.");
            event.preventDefault();
        }
    }
});


document.getElementById('registerForm').addEventListener('submit', function(event) {
    // Get the values of the password fields
    const password = document.getElementById('pass').value;
    const confirmPassword = document.getElementById('repass').value;

    // Check if the passwords match
    if (password !== confirmPassword) {
        event.preventDefault();
        alert("Password and confirm password do not match.");
    } else {
        alert("Successfully signed up!");
    }
});

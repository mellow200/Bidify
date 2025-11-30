function simpleEmailCheck() {
    //get email element from form and retriv value
    const emailInput = document.querySelector('input[name="Email"]');
    const emailValue = emailInput.value;

    // check if the word containns @ and .
    if (emailValue.includes("@") && emailValue.includes(".")) {
        return true; 
    } else {
        alert("Please enter a valid email address.");
        return false;  
    }
}
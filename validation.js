
function validateform() {
    var firstname = document.form1.firstname.value;
    var lastname = document.form1.lastname.value;

    function check(event) {
        event.preventDefault();
        if (firstname == null || firstname == "") {
            console.log('here');
            errorMessage.innerText = "Name can't be blank";
        }
        return false;
    }

    var Username = document.form1.Username.value;
    var x = document.form1.Username.value;
    var atposition = x.indexOf("@");
    var dotposition = x.lastIndexOf(".");
    if (atposition < 1 || dotposition < atposition + 2 || dotposition + 2 >= x.length) {
        alert("Please enter a valid e-mail address \n atpostion:" + atposition + "\n dotposition:" + dotposition);
        return false;
    }

    var password = document.form1.password.value;
    if (password.length < 8) {
        alert("Password must be at least 8 characters long.");
        return false;
    }

}

function validateForm() {
    // username
    var un = document.registration.uname.value;
    var letters = /^[A-Z][a-zA-Z0-9_\s]+$/
    if (un.trim() === "") {
        alert("Please enter your username");
        document.registration.uname.focus();
        return false;
    }
    if (un.length < 6) {
        alert("Username must contain minimum 6 characters");
        document.registration.uname.focus();
        return false;
    }
    if (!un.match(letters)) {
        alert("Enter valid username(1st character should be capital)");
        document.registration.uname.focus();
        return false;
    }

    // email
    var mail = document.registration.email.value;
    if (mail.trim() === "") {
        alert("Please enter your email");
        document.registration.email.focus();
        return false;
    }
    var atpos = mail.indexOf("@");
    var dotpos = mail.lastIndexOf(".");
    if (atpos < 1 || dotpos < atpos + 2 || dotpos + 2 >= mail.length) {
        alert("Not a valid e-mail address");
        return false;
    }

    // mobile
    var mobileno = document.registration.mobile.value;
    var mno = /^[0-9]{10}$/;
    if (mobileno.trim() === "") {
        alert("Please enter your Mobile Number");
        document.registration.mobile.focus();
        return false;
    }
    if (!mobileno.match(mno)) {
        alert("Enter valid mobile number");
        document.registration.mobile.focus();
        return false;
    }

    // password
    var pass = document.registration.pwd.value;
    var checkSpecial = /[*@!#%&]+/.test(pass);
    var checkUpper = /[A-Z]+/.test(pass);
    var checkLower = /[a-z]+/.test(pass);
    if (pass.trim() === "") {
        alert("Please enter your Password");
        document.registration.pwd.focus();
        return false;
    }
    if (!checkSpecial || !checkLower || !checkUpper) {
        alert("Password should have at least one lowercase, uppercase, and special symbols ($, &, #)");
        document.registration.pwd.focus();
        return false;
    }
    alert("Sign-up Successful");
    return true;
}

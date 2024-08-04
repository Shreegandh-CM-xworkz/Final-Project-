<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Register-Form</title>
  </head>

  <body>
    <style>
      .bg {
        background-color: rgb(1, 18, 12);
      }
      #emailCheck,#panCheck,#aadharCheck,#contactCheck,#fnameError,#sameMailError,#sameContactError,#aadharLengthError{
        color:red;
      }
      .btn1,.btn1{
             background-color: rgb(180, 180, 180);
      }
      #widthSet{
              width: 120vh;
              border: 1px solid black;
              box-shadow: 0 0  0.1em;
              background-color:whitesmoke;
            }
            .navbar{
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.545);
                 background-color: rgb(51, 49, 49);
                 color: white;
            }
            .sticky-top{
             position: -webkit-sticky;
                        position: sticky;
                        top: 0;
                        z-index: 1000;

            }
    </style>
       <nav class="navbar  border-bottom border-body sticky-top" data-bs-theme="light">
               <div class="container-fluid">
                   <a class="navbar-brand mx-5" href="#"><img src="https://www.x-workz.in/static/media/Logo.cf195593dc1b3f921369.png" alt="logo" height="50vh" width="60vh"></a>
                   <form class="d-flex" id="registerForm">
                       <button class="btn btn-outline-success mx-2" type="button" onclick="goToRegistrationPage()">Register</button>
                       <button class="btn btn-outline-success mx-2" type="button" onclick="goToLoginPage()">Login</button>
                   </form>

               </div>
           </nav>

           <form
              action="save"
              method="post"
              id="registerForm"
              name="myForm"
            >
              <div class="container mt-5 px-5 border-0 shadow-lg" id="widthSet">
                <div class="mt-3 mb-3">
                  <label for="formGroupExampleInput" class="form-label"
                    >First Name</label
                  >
                  <input
                    type="text"
                    class="form-control"
                    id="fname"
                    placeholder="Enter your first name"
                    name="firstName"
                    onchange="validateFname()"
                  />
                  <span id="fnameError"></span>
                </div>
                <div class="mb-3">
                  <label for="formGroupExampleInput2" class="form-label"
                    >Last Name</label
                  >
                  <input
                    type="text"
                    class="form-control"
                    id="formGroupExampleInput2"
                    placeholder="Enter your last name"
                    name="lastName"
                  />
                </div>
                <div class="mb-3">
                  <label for="formGroupExampleInput" class="form-label">Email</label>
                  <input
                    type="email"
                    class="form-control"
                    id="email"
                    placeholder=" Enter email"
                    name="email"
                    onchange="emailCheck()"
                  />
                  <span id="emailCheck"></span>
                </div>
                <div class="mb-3">
                  <label for="formGroupExampleInput2" class="form-label"
                    >Alternative Email</label
                  >
                  <input
                    type="text"
                    class="form-control"
                    id="Aemail"
                    placeholder="Enter alternative email"
                    name="alternativeEmail"
                    onchange="validateEmails()"
                  />
                  <span id="sameMailError"></span>
                </div>
                <div class="mb-3">
                  <label for="formGroupExampleInput" class="form-label"
                    >Contact Number</label
                  >
                  <input
                    type="text"
                    class="form-control"
                    id="contact"
                    placeholder="Enter contact number"
                    name="contactNumber"
                    onchange="contactCheck()"
                    onblur="contactLengthCheck()"
                    inputmode="numeric"
                  />
                  <span id="contactCheck"></span>
                  <span id="contactLength"></span>
                </div>
                <div class="mb-3">
                  <label for="formGroupExampleInput2" class="form-label"
                    >Alternative Contact Number</label
                  >
                  <input
                    type="text"
                    class="form-control"
                    id="Acontact"
                    placeholder="Enter alternative contact number"
                    name="alternativeContactNumber"
                    onchange="validateContacts()"
                    inputmode="numeric"
                  />
                  <span id="sameContactError"></span>
                </div>
                <div class="mb-3">
                  <label for="formGroupExampleInput2" class="form-label"
                    >Current Address</label
                  >
                  <input
                    type="text"
                    class="form-control"
                    id="formGroupExampleInput2"
                    placeholder="Enter current address"
                    name="currentAddress"
                  />
                </div>
                <div class="mb-3">
                  <label for="formGroupExampleInput2" class="form-label"
                    >Permanent Address</label
                  >
                  <input
                    type="text"
                    class="form-control"
                    id="formGroupExampleInput2"
                    placeholder="Enter permanent address"
                    name="permanentAddress"
                  />
                </div>
                <div class="mb-3">
                  <label for="formGroupExampleInput2" class="form-label"
                    >Pan Number</label
                  >
                  <input
                    type="text"
                    class="form-control"
                    id="pan"
                    placeholder="Enter pan card number"
                    name="panCard"
                    onchange="panCheck()"
                  />
                  <span id="panCheck"></span>
                </div>
                <div class="mb-3">
                  <label for="formGroupExampleInput2" class="form-label"
                    >Aadhar Number</label
                  >
                  <input
                    type="text"
                    class="form-control"
                    id="aadhar"
                    placeholder="Enter aadhar card number"
                    name="adharCard"
                   onblur ="aadharCheck()"
                    onchange="AadharLengthCheck()"
                    inputmode="numeric"
                  />
                  <span id="aadharCheck"></span>
                  <span id="aadharLengthError"></span>
                </div>
                <div class="mb-3 d-flex justify-content-center align-items-center">
                  <button type="submit" class="btn btn-light p-3 mx-5" id="register">
                    Register
                  </button>
                  <button
                    type="reset"
                    class="btn btn-light p-3 mx-5"
                    onclick="clearForm()"
                  >
                    Clear
                  </button>
                </div>
              </div>
            </form>

 <%@include file="footer.jsp" %>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
      crossorigin="anonymous"
    />
   <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
    <script>

      function emailCheck() {
        let email = document.getElementById("email").value;
        if(email!=null){
        const request = new XMLHttpRequest();
        request.open(
          "GET",
          "http://localhost:8080/RealEstate-Management/email/" + email
        );
        request.send();
        request.onload = function () {
          let returnValue = this.responseText;
          if (returnValue != null) {
            document.getElementById("emailCheck").innerHTML = returnValue;
          } else {
            document.getElementById("emailCheck").innerHTML = "";
            enableRegister();
          }
        };
      }
    }
      function contactCheck() {
        let contact = document.getElementById("contact").value;
        if(contact!=null){
        const request = new XMLHttpRequest();
        request.open(
          "GET",
          "http://localhost:8080/RealEstate-Management/contact/" + contact
        );
        request.send();
        request.onload = function () {
          let returnValue = this.responseText;
          if (returnValue != null) {
            document.getElementById("contactCheck").innerHTML = returnValue;
          } else {
            document.getElementById("contactCheck").innerHTML = "";
            enableRegister();
          }
        };
      }
    }
      function panCheck() {
        let pan = document.getElementById("pan").value;
        if(pan!=null){
        const request = new XMLHttpRequest();
        request.open(
          "GET",
          "http://localhost:8080/RealEstate-Management/pan/" + pan
        );
        request.send();
        request.onload = function () {
          let returnValue = this.responseText;

          if (returnValue != null) {
            document.getElementById("panCheck").innerHTML = returnValue;
          } else {
            document.getElementById("panCheck").innerHTML = "";
            enableRegister();
          }
        };
      }
    }
      function aadharCheck() {
        let aadhar = document.getElementById("aadhar").value;
        if(aadhar!=null){
        const request = new XMLHttpRequest();
        request.open(
          "GET",
          "http://localhost:8080/RealEstate-Management/aadhar/" + aadhar
        );
        request.send();
        request.onload = function () {
          let returnValue = this.responseText;
          if (returnValue != null) {
            document.getElementById("aadharCheck").innerHTML = returnValue;
          } else {
            document.getElementById("aadharCheck").innerHTML = "";
            enableRegister();
          }
        };
      }
    }



      function clearForm() {
        document.getElementsByName("adharCard").reset;
        document.getElementsByName("panCard").reset;
        document.getElementsByName("permanentAddress").reset;
        document.getElementsByName("currentAddress").reset;
        document.getElementsByName("alternativeContactNumber").reset;
        document.getElementsByName("contactNumber").reset;
        document.getElementsByName("alternativeEmail").reset;
        document.getElementsByName("email").reset;
        document.getElementsByName("lastName").reset;
        document.getElementsByName("firstName").reset;
      }
      function validateFname() {
        let fname = document.getElementById("fname").value;
        if (fname.length < 4) {
          document.getElementById("fnameError").innerHTML =
            "*Name is too short";
        } else if (fname.lenght == 0) {
          document.getElementById("fnameError").innerHTML =
            "*Name cannot be empty ";
        } else if (fname.length > 20) {
          document.getElementById("fnameError").innerHTML = "*Name is too long";
        } else {
          document.getElementById("fnameError").innerHTML = "";
        }
      }

      function validateEmails() {
        let email = document.getElementById("email").value;
        let Aemail = document.getElementById("Aemail").value;

        if (email === Aemail) {
          document.getElementById("sameMailError").innerHTML =
            "*Should not be same as email";
        } else {
          document.getElementById("sameMailError").innerHTML = "";
        }
      }
      function validateContacts() {
        let contact = document.getElementById("contact").value;
        let Acontact = document.getElementById("Acontact").value;

        if (contact === Acontact) {
          document.getElementById("sameContactError").innerHTML =
            "*Use different contact number";
        } else {
          document.getElementById("sameContactError").innerHTML = "";
        }
      }
        function AadharLengthCheck() {
              let aadhar = document.getElementById("aadhar").value;


              if (aadhar.length>12) {
                document.getElementById("aadharLengthError").innerHTML =
                  "*Aadhar number cant exceed 12 digits";
              } else {
                document.getElementById("aadharLengthError").innerHTML = "";
              }
              if (aadhar.length<12) {
                document.getElementById("aadharLengthError").innerHTML =
                  "*Aadhar number cant be less than 12";
              } else {
                document.getElementById("aadharLengthError").innerHTML = "";
              }
            }

 function contactLengthCheck(){
              let contact = document.getElementById("contact").value;


              if (contact.length>10) {
                document.getElementById("contactLength").innerHTML =
                  "*Contact number cant exceed 10 digits";
              } else {
                document.getElementById("aadharLengthError").innerHTML = "";
              }
              if (contact.length<10) {
                document.getElementById("contactLength").innerHTML =
                  "*Contact number cant be less than 10";
              } else {
                document.getElementById("contactLength").innerHTML = "";
              }
            }
            function goToLoginPage() {

window.location.href = "login.jsp";
}


</script>


                  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
                  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>






  </body>
</html>






<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>OTP Verification Card Design | Rustcode</title>
    <link rel="stylesheet" type="text/css" href="style.css" />
    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
    />
    <link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
  />
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

  </head>
  <style>
    @import url("https://fonts.googleapis.com/css2?family=Poppins:wght@500;600;700");
    * {
      border-radius: 0px;
      font-family: "Poppins", sans-serif;
    }

    body {
      background-color: #dedddd;

      height: 100vh;
    }

    .card {
      border: none;
      display: flex;
      align-items: center;
      justify-content: center;
      box-shadow: rgba(50, 50, 93, 0.25) 0px 6px 12px -2px,
        rgba(0, 0, 0, 0.3) 0px 3px 7px -3px;
    }

    .card-header {
      color: black;
      background: whitesmoke;
      text-align: center;
    }

    .input-container input {
      width: 40px;
      height: 40px;
    }

    .form-control:focus {
      box-shadow: none;
      border: 1px solid #3366ff;
    }

    .verify-btn {
      border-radius: 20px;
      border: 0px;
      width: 140px;
      background-color: #3366ff;
    }
    .send-btn {
      border-radius: 20px;
      border: 0px;
      width: 140px;
      background-color: #3366ff;
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
        .footer{
               background-color: rgb(33, 33, 33);
               color:white;
               bottom:0;
               position:fixed;
            }
    #emailCheck,#sessionExpired{
         color:red;
    }
  </style>

<body>
    <nav class="navbar  border-bottom border-body sticky-top" data-bs-theme="light">
        <div class="container-fluid">
            <a class="navbar-brand mx-5" href="#"><img src="https://www.x-workz.in/static/media/Logo.cf195593dc1b3f921369.png" alt="logo" height="50vh" width="60vh"></a>
            <form class="d-flex" id="registerForm">
                <button class="btn btn-outline-success mx-2" type="button" onclick="goToRegistrationPage()">Register</button>

            </form>

        </div>
    </nav>



    <div class="container d-flex justify-content-center align-items-center mt-5">
        <div class="card text-center">
            <div class="card-header p-5">
                <form id="emailForm" action="generateOtp" method="post">
                    <h3>Log in</h3>

                    <label for="email" class="mt-2">Enter email</label>
                    <input
                        type="text"
                        class="text-center form-control rounded"
                        placeholder="Email id"
                        id="emailInput"
                        name="email"
                        onchange="emailCheck()"
                    />
                    <div class="container">
                      <small id="emailCheck"></small>
                    </div>

                    <div>
                    <small>Click send to receive OTP</small>
                    </div>
                      <div class="container">
                           <small id="sessionExpired">${sessionExpired}</small>
                      </div>

                    <div class="mt-3">
                        <button type="submit" id="sendEnable" class="btn btn-success px-4 send-btn" disabled>Send</button>
                        <div class="container otp-sent mt-3" style="display:none" id="otp-sent">
                            <small>OTP sent</small>
                            <i class="fa-solid fa-envelope-circle-check"></i>
                        </div>
                    </div>
                </form>
            </div>

            </form>
        </div>
    </div>
  <div class="container-fluid footer text-center">
         <div class="row">
           <div class="col mt-4">
            <h5>Contact Details</h5>
             <ul class="list-unstyled text-small">
               <li><a class="link-secondary text-decoration-none" href="#">Mail@:shreegandh4321@gmail.com</a></li>
               </ul>
           </div>
           <div class="col mt-4">
             <h5>Designed By</h5>
             <ul class="list-unstyled text-small" >
               <li><a class="link-secondary text-decoration-none" href="#">Shreegandh.C.M </a></li>
              </ul>
           </div>
           <div class="col mt-4">
             <h5>Social Media</h5>
             <ul  class="list-unstyled text-small" >
               <li><a class="link-secondary text-decoration-none" href="https://www.linkedin.com/in/shreegandh-c-m-077ba2222/">LinkedIn</a></li>
               <li><a class="link-secondary text-decoration-none" href="https://github.com/Shreegandh-CM-xworkz">Git Hub</a></li>
               <li><a class="link-secondary text-decoration-none" href="https://www.instagram.com/ig_smalltown_boiiii">Instagram</a></li>

             </ul>
           </div>
         </div>
       </div>



    <script>


        function emailCheck() {
                let email = document.getElementById("emailInput").value;
                console.log(email)
                if(email!=null){
                const request = new XMLHttpRequest();
                request.open(
                  "GET",
                  "http://localhost:8080/RealEstate-Management/email/"+email
                );
                request.send();
                request.onload = function () {
                  let returnValue = this.responseText;
                  console.log(returnValue)

                  if (returnValue){
                    document.getElementById("emailCheck").innerHTML = "";
                    document.getElementById("sendEnable").disabled=false;

                  } else {
                    document.getElementById("emailCheck").innerHTML = "*Enter valid email id";
                    console.log(document.getElementById("emailCheck"));
                    document.getElementById("sendEnable").disabled=true;

                  }
                };
              }
        }

                          function goToRegistrationPage() {

                             window.location.href = "register.jsp";
                         }

    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
  </body>
</html>

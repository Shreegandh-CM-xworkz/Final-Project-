<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
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
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
      crossorigin="anonymous"
    />
  </head>
  <style>
    @import url("https://fonts.googleapis.com/css2?family=Poppins:wght@500;600;700");
    * {
      border-radius: 0px;
      font-family: "Poppins", sans-serif;
    }

    body {
      background-color: #e1e1e1;

      height: 100vh;
    }

    .card {
      border: none;
      display: flex;
      align-items: center;
      justify-content: center;
      box-shadow: rgba(46, 46, 88, 0.25) 0px 6px 12px -2px,
        rgba(0, 0, 0, 0.527) 0px 3px 7px -3px;
    }

    .card-header {
      color: black;
      background: whitesmoke;
      text-align: center;
    }

    .input-container input {
      width: 40px;
      height: 40px;
      box-shadow: rgba(40, 40, 86, 0.25) 0px 6px 12px -2px,
        rgba(0, 0, 0, 0.608) 0px 3px 7px -3px;
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
    * {
      margin: 0;
      padding: 0;
    }

    .navbar {
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.545);
      background-color: rgb(51, 49, 49);
      color: white;
    }
    .sticky-top {
      position: -webkit-sticky;
      position: sticky;
      top: 0;
      z-index: 1000;
    }
    #failedMsg{
      color:red;
    }
    .footer {
      background-color: rgb(33, 33, 33);
      color: white;
      bottom: 0;
      position: fixed;
    }
  </style>

  <body>
    <nav
      class="navbar border-bottom border-body sticky-top"
      data-bs-theme="light"
    >
      <div class="container-fluid">
        <a class="navbar-brand mx-5" href="#"
          ><img
            src="https://www.x-workz.in/static/media/Logo.cf195593dc1b3f921369.png"
            alt="logo"
            height="50vh"
            width="60vh"
        /></a>
        <form class="d-flex" id="registerForm">
          <button
            class="btn btn-outline-success mx-2"
            type="button"
            onclick="goToRegistrationPage()"
          >
            Register
          </button>
        </form>
      </div>
    </nav>

    <div
      class="container d-flex justify-content-center align-items-center mt-5"
    >
      <div class="card text-center">
        <form id="otpForm" action="otpCompareAndLogin" method="post">
          <div class="container otp-section">
            <div>
              <h5 class="mb-2 mt-3">OTP VERIFICATION</h5>
              <small>Code has been sent to ${email}</small>
            </div>
            <input
              type="text"
              class="m-1 text-center form-control"
              value="${email}"
              name="email"
              style="visibility: hidden"
            />

            <div
              class="input-container d-flex flex-row justify-content-center mt-2"
            >
              <input
                type="text"
                class="m-1 text-center form-control rounded"
                maxlength="1"
                name="input1"
              />
              <input
                type="text"
                class="m-1 text-center form-control rounded"
                maxlength="1"
                name="input2"
              />
              <input
                type="text"
                class="m-1 text-center form-control rounded"
                maxlength="1"
                name="input3"
              />
              <input
                type="text"
                class="m-1 text-center form-control rounded"
                maxlength="1"
                name="input4"
              />
              <input
                type="text"
                class="m-1 text-center form-control rounded"
                maxlength="1"
                name="input5"
              />
              <input
                type="text"
                class="m-1 text-center form-control rounded"
                maxlength="1"
                name="input6"
              />
            </div>
            <div id="timerDisplay"></div>
            <div id="failedMsg">${msg}</div>

            <div>
              <small
                >Did not recieved OTP
                <a href="generateOtp" class="text-decoration-none"
                  >Resend</a
                ></small
              >
            </div>
            <button
              type="submit"
              class="btn btn-success px-4 verify-btn mt-3 mb-5"
            >
              Verify
            </button>
          </div>
        </form>
      </div>
    </div>
    <div class="container-fluid footer text-center">
      <div class="row">
        <div class="col mt-4">
          <h5>Contact Details</h5>
          <ul class="list-unstyled text-small">
            <li>
              <a class="link-secondary text-decoration-none" href="#"
                >Mail@:shreegandh4321@gmail.com</a
              >
            </li>
          </ul>
        </div>
        <div class="col mt-4">
          <h5>Designed By</h5>
          <ul class="list-unstyled text-small">
            <li>
              <a class="link-secondary text-decoration-none" href="#"
                >Shreegandh.C.M
              </a>
            </li>
          </ul>
        </div>
        <div class="col mt-4">
          <h5>Social Media</h5>
          <ul class="list-unstyled text-small">
            <li>
              <a
                class="link-secondary text-decoration-none"
                href="https://www.linkedin.com/in/shreegandh-c-m-077ba2222/"
                >LinkedIn</a
              >
            </li>
            <li>
              <a
                class="link-secondary text-decoration-none"
                href="https://github.com/Shreegandh-CM-xworkz"
                >Git Hub</a
              >
            </li>
            <li>
              <a
                class="link-secondary text-decoration-none"
                href="https://www.instagram.com/ig_smalltown_boiiii"
                >Instagram</a
              >
            </li>
          </ul>
        </div>
      </div>
    </div>

    <script>
      function goToRegistrationPage() {
        window.location.href = "register.jsp";
      }
      const timerDuration = 120;

      function startTimer() {
        let timer = timerDuration;
        const timerDisplay = document.getElementById("timerDisplay");

        const countdown = setInterval(() => {

          const minutes = Math.floor(timer / 60);
          console.log(minutes + " minutes");
          const seconds = (timer % 60).toFixed(0);
          console.log(seconds + " seconds");
          timerDisplay.innerHTML = minutes + ":" + seconds;
           if (timer <= 10) {
            timerDisplay.innerHTML = "Session is going to expire! will be redirect to login page";
          }
            if (timer <= 0) {
            clearInterval(countdown);
            timerDisplay.innerHTML = "Time expired!";
           window.location.replace("login.jsp");
          }
          timer--;
        }, 1000);
      }
      window.addEventListener("load", () => {
        startTimer();
      });
    </script>

    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
      crossorigin="anonymous"
    ></script>
  </body>
</html>

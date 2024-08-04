
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<style>
 *{
    margin:0;
    padding:0;
    }



      .footer {
            background-color: rgb(33, 33, 33);
            color: white;
            bottom: 0;
            position: fixed;
          }
</style>
<body>
    <%@include file="navbar.jsp" %>
<div class="container d-flex align-items-center justify-content-center">

     <div class="alert alert-danger mt-5 " role="alert">
       Your account is blocked due to suspecious actitivity!!!!.
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

      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
      <script>
         function goToRegistrationPage() {

            window.location.href = "register.jsp";
        }
        function goToLoginPage() {
        window.location.href = "login.jsp";
                }
      </script>
</body>
</html>
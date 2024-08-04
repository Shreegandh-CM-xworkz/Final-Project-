
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<style>
 *{
    margin:0;
    padding:0;
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

      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
      <script>
         function goToRegistrationPage() {

            window.location.href = "register.jsp";
        } function goToLoginPage() {

            window.location.href = "login.jsp";
        }
      </script>
</body>
</html>
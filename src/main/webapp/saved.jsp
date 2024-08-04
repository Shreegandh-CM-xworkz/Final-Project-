
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
  <%@include file="navbar.jsp" %>
  <h1>Saved as ${dto.getFirstName()}</h1>

  <%@include file="footer.jsp" %>

</body>
</html>
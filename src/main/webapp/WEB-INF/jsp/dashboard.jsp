<%--
  Created by IntelliJ IDEA.
  User: great
  Date: 1/11/2021
  Time: 10:20 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
    <link rel="stylesheet" href="/webjars/bootstrap/4.5.0/css/bootstrap.min.css" />
    <script src="/webjars/jquery/3.5.1/jquery.min.js"></script>
    <script src="/webjars/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container p-3 my-3 bg-dark text-white">
    <h1>Submitted info</h1>
    <p>Name:  ${name} </p>
    <p> Dojo location: ${location}</p>
    <p> Favorite language: ${language}</p>
    <p> Comment: ${comm}</p>
    <button onclick="goBack()">Go Back</button>
    <script>
        function goBack() {
            window.history.back();
        }
    </script>

</div>



</body>
</html>

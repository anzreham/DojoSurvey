<%--
  Created by IntelliJ IDEA.
  User: great
  Date: 1/9/2021
  Time: 8:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/webjars/bootstrap/4.5.0/css/bootstrap.min.css" />
    <script src="/webjars/jquery/3.5.1/jquery.min.js"></script>
    <script src="/webjars/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
    <div class="jumbotron">
        <h1>Welcome </h1>
    </div>
<%--    <div class = "alert alert-danger"> ${error}</div>--%>



    <form method="POST" action="/submit" >
                <div class="form-group">
                    <label >Name</label>
                    <input type="" class="form-control"  placeholder="" name="name">
                </div>
                <div class="form-group">
                    <label >Dojo Location </label>
                    <select class="form-control" name = "location" >
                        <option>Location1</option>
                        <option>Location2</option>
                        <option>Location3</option>
                        <option>Location4</option>
                        <option>Location5</option>
                    </select>
                </div>
                <div class="form-group">
                    <label >Favorite Language  </label>
                    <select multiple class="form-control" name = "language" >
                        <option>Python</option>
                        <option>Java</option>
                        <option>C#</option>
                        <option>Javascript</option>
                        <option>R</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlTextarea1">Comments (optional)</label>
                    <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" name ="comm"></textarea>
                </div>
        <button type="submit" class="btn btn-primary">Submit </button>

    </form>



</body>
</html>

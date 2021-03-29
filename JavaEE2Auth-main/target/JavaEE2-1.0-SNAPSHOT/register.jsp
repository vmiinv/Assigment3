<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: akadi
  Date: 08.02.2021
  Time: 08:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registration</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
</head>
<body>
<div class="container">
    <div class="m-5">
        <div class="btn btn-outline-primary w-100 mb-3">
            <h1>Registration</h1>
        </div>
        <%
            if(request.getAttribute("errors") != null) {
        %>
        <div class="alert-danger">
            <ul class="m-3 p-3">
                <%
                    for (String error: (List<String>)request.getAttribute("errors")){
                %>
                <li>
                    <%=error%>
                </li>
                <%
                    }
                %>
            </ul>
        </div>
        <%
            }
        %>
        <form action="register" method="post">
            <div class="mb-3">
                <label class="form-label">Name</label>
                <input name="name" type="text" class="form-control">
            </div>
            <div class="mb-3">
                <label class="form-label">Phone Number</label>
                <input name="phone" type="tel" class="form-control">
            </div>
            <div class="mb-3">
                <label class="form-label">Email</label>
                <input name="email" type="email" class="form-control">
            </div>
            <div class="mb-3">
                <label class="form-label">Password</label>
                <input name="password" type="password" class="form-control">
            </div>
            <div class="mb-3">
                <label class="form-label">Confirm Password</label>
                <input name="password_confirmation" type="password" class="form-control">
            </div>
            <div class="d-flex mb-3">
                <a class="w-100 text-center" href="login">Already have account?</a>
            </div>
            <a href="index" class="btn btn-secondary">Back</a>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>
</div>
</body>
</html>

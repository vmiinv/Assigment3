<%--
  Created by IntelliJ IDEA.
  User: akadi
  Date: 08.02.2021
  Time: 09:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cabinet</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
</head>
<body>
<div class="container">
    <div class="m-5">
        <div class="btn btn-outline-primary w-100 mb-3">
            <h1>Cabinet</h1>
        </div>
        <table class="table table-striped">
            <tr>
                <td>Email:</td>
                <td><%=request.getParameter("email")%></td>
            </tr>
            <%
                if(request.getAttribute("isNew") != null) {
            %>
            <tr>
                <td>Name:</td>
                <td><%=request.getParameter("name")%></td>
            </tr>
            <tr>
                <td>Phone:</td>
                <td><%=request.getParameter("phone")%></td>
            </tr>
            <%
                    }
            %>
        </table>
        <div class="d-flex justify-content-center">
            <a class="btn btn-primary" href="index">Go to Home Page</a>
        </div>
    </div>
</div>
</body>
</html>

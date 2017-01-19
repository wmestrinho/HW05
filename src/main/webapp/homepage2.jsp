<%--
  Created by IntelliJ IDEA.
  User: WagnerMestrinho
  Date: 1/17/17
  Time: 11:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home</title>
</head>
<body>
<style>
    ul {
        list-style-type: none;
        margin: 0;
        padding: 0;
        overflow: hidden;
        background-color: #333;
    }

    li {
        float: left;
    }

    li a {
        display: block;
        color: white;
        text-align: center;
        padding: 14px 16px;
        text-decoration: none;
        font-family: Verdana;

    }

    li a:hover {
        background-color: #111;
    }
</style>
</head>


<ul>
    <li><a class="active" href="index.jsp">Login</a></li>
    <li><a href="homepage.jsp">About</a></li>
    <li><a href="homepage2.jsp">Profile</a></li>
    <li><a href="homepage3.jsp">Change Username</a></li>
</ul>
Hello, <%=request.getSession().getAttribute("name")%>!
</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: WagnerMestrinho
  Date: 1/17/17
  Time: 11:27 PM
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

<form action="/servlet3" method="post">
    <div class="form-group">
        <label>Change Username</label>
        <input type="text" name="name">
    </div>
    <button type="submit">Submit</button>
</form>
<%
    String result = (String)request.getAttribute("result");
    if(result!=null){%>
<div class="alert alert-success">
    <strong><%=result%></strong>
</div>
<%
    }
%>
</body>
</html>
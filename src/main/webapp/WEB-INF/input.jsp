<%--
  Created by IntelliJ IDEA.
  User: WagnerMestrinho
  Date: 1/18/17
  Time: 4:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.ironyard.data.InfoHolder" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>

<html>
<body>
<h2>Let's have some date fun!</h2>
<h3 style="color:red"><c:out value="${err_msg}"/></h3>
<!-- calls servlet doPost aka HTTP POST -->
<form action="/add" method="post">
    <input type="text" name="mydate">
    <input type="submit">
</form>

<h2>Here Are Your Dates</h2>
<ul>
    <c:forEach items="${date_list}" var="aDate">

        <li><c:out value="${aDate.coolFormat}"/></li>

    </c:forEach>

</ul>

</body>
</html>
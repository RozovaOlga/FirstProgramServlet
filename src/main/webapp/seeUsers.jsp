<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>A list of users</h1>
<c:forEach items="${users}" var="user" >
    <ul>
        <li>Name: <c:out value="${user.name}"/></li>
        <li> Age: <c:out value="${user.age}"/></li>
    </ul>
    <hr/>
</c:forEach>
<p>
<h1> Hello!You want  add a list of users?</h1>
<h2><a href="addUser.jsp" >addUser</a></h2>
</body>
</html>

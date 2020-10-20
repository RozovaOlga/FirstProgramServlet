<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>Create new user</h2><br />
<form method="POST"action="userBase">
    <label><input type="text" name="name"> </label>Name <br>
    <label><input type="number" name="age"> </label>Age <br>
    <input type="submit" value="ok" ><br>
</form>
</body>
</html>
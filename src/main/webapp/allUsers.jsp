<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8"/>
    <title>Solo1-AllUsers</title>
</head>
<body>

<table style=" width: 10%; border: 4px double black;">
    <tr style="border-bottom: 2px solid black">
        <td style="border-bottom: 2px solid black">Id</td>
        <td style="border-bottom: 2px solid black">Имя</td>
        <td style="border-bottom: 2px solid black">E-mail</td>
        <td style="border-bottom: 2px solid black">Возраст</td>
        <td style="border-bottom: 2px solid black"></td>
    </tr>
    <c:forEach items="${requestScope.users}" var="user">
        <tr>
            <td>${user.getId()}</td>
            <td style="width: 150px">${user.getName()}</td>
            <td>${user.getEmail()}</td>
            <td>${user.getAge()}</td>
            <td><form action = "/updateUser" method="get">
                <input type="hidden" name="id" value="${user.getId()}">
                <input type="submit" value="Изменить" style="float:left">
            </form>
            <form action="/deleteUser" method="get">
                <input type="hidden" name="id" value="${user.getId()}">
                <input type="submit" value="Удалить" style="float:left">
            </form>
            </td>
        </tr>
    </c:forEach>
</table>
${error}
<br>
<form action = "/addUser" method="get">
    <input type="submit" value="Добавить нового пользователя">

</form>
</body>
</html>


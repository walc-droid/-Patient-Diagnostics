<%--
  Created by IntelliJ IDEA.
  User: walcu
  Date: 09.03.2021
  Time: 21:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Patient List</title>
</head>
<body>

<div>
    <form action="/doctor/add">
        <input type="submit" value="ADD" />
    </form>
</div>


<table border="1">
    <thead>
    <th>id</th>
    <th>name</th>
    <th>surname</th>
    <th>edit</th>
    <th>delete</th>
    </thead>
    <tbody>
    <c:forEach items="${doctor}" var="dc">
        <tr>
            <td><c:out value="${dc.id}"/></td>
            <td><c:out value="${dc.name}"/></td>
            <td><c:out value="${dc.surname}"/></td>
            <td><a href="/doctor/edit/${dc.id}">EDIT</a></td>
            <td><a href="/doctor/delete/${dc.id}">DELETE</a></td>
        </tr>
    </c:forEach>
    </tbody>

</table>

<p></p>
<div>
    <form action="/">
        <input type="submit" value="RETURN" />
    </form>
</div>
</body>
</html>

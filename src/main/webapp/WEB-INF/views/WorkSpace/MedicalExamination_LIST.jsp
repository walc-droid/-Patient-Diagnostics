<%--
  Created by IntelliJ IDEA.
  User: walcu
  Date: 02.03.2021
  Time: 22:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>

<div>
    <form action="/medical/add">
        <input type="submit" value="ADD" />
    </form>
</div>

<body>
        <table border="1">
            <thead>
            <th>id</th>
            <th>Type</th>
            <th>Description</th>
            <th>Date</th>
            <th>Location</th>
            <th>Doctors Name</th>
            <th>Edit</th>
            <th>Delete</th>
            </thead>
        <tbody>
        <c:forEach items="${medical}" var="mE">
        <tr>
            <td><c:out value="${mE.id}"/></td>
            <td><c:out value="${mE.type}"/></td>
            <td><c:out value="${mE.description}"/></td>
            <td><c:out value="${mE.date}"/></td>
            <td><c:out value="${mE.location}"/></td>
            <td><c:out value="${mE.doctorNames}"/></td>
            <td><a href="/medical/edit/${mE.id}">EDIT</a></td>
            <td><a href="/medical/delete/${mE.id}">DELETE</a></td>
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

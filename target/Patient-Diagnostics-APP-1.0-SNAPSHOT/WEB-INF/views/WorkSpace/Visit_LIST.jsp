<%--
  Created by IntelliJ IDEA.
  User: walcu
  Date: 09.03.2021
  Time: 21:15
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
    <form action="/visit/add">
        <input type="submit" value="ADD" />
    </form>
</div>


<table border="1">
    <thead>
    <th>id</th>
    <th>visitDate</th>
    <th>charge</th>
    <th>visitDescription</th>
    <th>patient</th>
    <th>doctor</th>
    <th>medicalExamination</th>
    <th>edit</th>
    <th>delete</th>
    </thead>
    <tbody>
    <c:forEach items="${visit}" var="vs">
        <tr>
            <td><c:out value="${vs.id}"/></td>
            <td><c:out value="${vs.visitDate}"/></td>
            <td><c:out value="${vs.charge}"/></td>
            <td><c:out value="${vs.visitDescription}"/></td>
            <td><c:out value="${vs.patient.name}"/></td>
            <td><c:out value="${vs.doctor.name}"/></td>
            <td><c:out value="${vs.medicalExamination.type}"/></td>
            <td><a href="/visit/edit/${vs.id}">EDIT</a></td>
            <td><a href="/visit/delete/${vs.id}">DELETE</a></td>
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
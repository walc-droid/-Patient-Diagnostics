<%--
  Created by IntelliJ IDEA.
  User: walcu
  Date: 04.03.2021
  Time: 00:01
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
    <form action="/patient/add">
        <input type="submit" value="ADD" />
    </form>
</div>


<table border="1">
    <thead>
    <th>id</th>
    <th>name</th>
    <th>surname</th>
    <th>dateOfBirth</th>
    <th>city</th>
    <th>street</th>
    <th>zipCode</th>
    <th>houseNumber</th>
    <th>apartmentNumber</th>
    <th>phoneNumber</th>
    <th>email</th>
    <th>symptoms</th>
    <th>comorbidities</th>
    <th>medicines</th>
    <th>injuries</th>
    <th>operations</th>
    <th>drugs</th>
    <th>diagnosis</th>
    <th>edit</th>
    <th>delete</th>
    </thead>
    <tbody>
    <c:forEach items="${patients}" var="pt">
        <tr>
            <td><c:out value="${pt.id}"/></td>
            <td><c:out value="${pt.name}"/></td>
            <td><c:out value="${pt.surname}"/></td>
            <td><c:out value="${pt.dateOfBirth}"/></td>
            <td><c:out value="${pt.pesel}"/></td>
            <td><c:out value="${pt.city}"/></td>
            <td><c:out value="${pt.zipCode}"/></td>
            <td><c:out value="${pt.houseNumber}"/></td>
            <td><c:out value="${pt.apartmentNumber}"/></td>
            <td><c:out value="${pt.phoneNumber}"/></td>
            <td><c:out value="${pt.email}"/></td>
            <td><c:out value="${pt.symptoms}"/></td>
            <td><c:out value="${pt.comorbidities}"/></td>
            <td><c:out value="${pt.medicines}"/></td>
            <td><c:out value="${pt.injuries}"/></td>
            <td><c:out value="${pt.operations}"/></td>
            <td><c:out value="${pt.drugs}"/></td>
            <td><c:out value="${pt.diagnosis}"/></td>
            <td><a href="/patient/edit/${pt.id}">EDIT</a></td>
            <td><a href="/patient/delete/${pt.id}">DELETE</a></td>
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

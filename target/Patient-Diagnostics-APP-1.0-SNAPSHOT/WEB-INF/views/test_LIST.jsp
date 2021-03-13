<%--
  Created by IntelliJ IDEA.
  User: walcu
  Date: 06.03.2021
  Time: 14:26
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"
           uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="input" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table border="1">
    <thead>
    <th>id</th>
    <th>name</th>

    </thead>
    <tbody>
    <c:forEach items="${patient}" var="test">
        <tr>
            <td><c:out value="${test.id}"/></td>
            <td><c:out value="${test.name}"/></td>
        </tr>
    </c:forEach>
    </tbody>

</table>
</body>
</html>
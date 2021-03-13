<%--
  Created by IntelliJ IDEA.
  User: walcu
  Date: 08.03.2021
  Time: 01:06
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
<form:form method="post" modelAttribute="doctor">

    <div>
        <form:label path="name">FirstName: </form:label>
        <form:input path="name"/>
        <form:errors path="name"/>
    </div>

    <div>
        <form:label path="surname">LastName: </form:label>
        <form:input path="surname"/>
        <form:errors path="surname"/>
    </div>

    <div>
        <input type="reset"  value="Clear"/>
    </div>

    <div>
        <input type="submit" value="Add">
    </div>

</form:form>
</body>
</html>

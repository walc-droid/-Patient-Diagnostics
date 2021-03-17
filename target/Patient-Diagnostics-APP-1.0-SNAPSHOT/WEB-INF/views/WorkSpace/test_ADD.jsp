<%--
  Created by IntelliJ IDEA.
  User: walcu
  Date: 06.03.2021
  Time: 14:28
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
<form:form method="post" modelAttribute="patient">
<div>
    <form:label path="name">Name: </form:label>
    <form:input path="name"/>
</div>

    <div>
        <form:label path="med">MedicalResearch :</form:label>
        <form:select items="${medtest}" itemValue="id" itemLabel="type" path="med" multiple="true"/>
    </div>

<%--    <div>--%>
<%--        <form:label path="publishers">Publisher :</form:label>--%>
<%--        <form:select items="${pub}" itemValue="id" itemLabel="name" path="publishers.id" />--%>
<%--    </div>--%>

    <div>
        <input type="submit" value="send">
    </div>


</form:form>
</body>
</html>

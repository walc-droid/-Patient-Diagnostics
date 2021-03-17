<%--
  Created by IntelliJ IDEA.
  User: walcu
  Date: 06.03.2021
  Time: 20:54
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
<form:form method="post" modelAttribute="medx">
    <div>
        <form:label path="type">Type: </form:label>
        <form:input path="type"/>
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

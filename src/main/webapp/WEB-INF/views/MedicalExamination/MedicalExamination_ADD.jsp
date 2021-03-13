<%--
  Created by IntelliJ IDEA.
  User: walcu
  Date: 02.03.2021
  Time: 20:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"
           uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="input" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

        <form:form method="post" modelAttribute="medicalExamination">

            <div>
                <form:label path="type">Type: </form:label>
                <form:input path="type"/>
            </div>

            <div>
                <form:label path="description">Description: </form:label>
                <form:textarea path="description"/>
            </div>

            <div>
                <form:label path="date">Date of the test: </form:label>
                <form:input path="date"/>
            </div>


            <div>
                <form:label path="location">Location: </form:label>
                <form:input path="location"/>
            </div>


            <div>
                <form:label path="doctorList">Doctors :</form:label>
                <form:select items="${doctor}" itemValue="id" itemLabel="name" path="doctorList" multiple="true"/>
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

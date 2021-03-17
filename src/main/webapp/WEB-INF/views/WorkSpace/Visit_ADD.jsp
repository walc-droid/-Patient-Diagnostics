<%--
  Created by IntelliJ IDEA.
  User: walcu
  Date: 08.03.2021
  Time: 20:15
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
<form:form method="post" modelAttribute="visit">

    <div>
        <form:label path="visitDate"> visitDate: </form:label>
        <form:input path="visitDate"/>

    </div>

    <div>
        <form:label path="charge">Charge: </form:label>
        <form:input path="charge"/>
    </div>

    <div>
        <form:label path="location">Desc: </form:label>
        <form:input path="location"/>
    </div>


    <div>
        <form:label path="visitDescription">Desc: </form:label>
        <form:input path="visitDescription"/>
    </div>

    <div>
        <form:label path="patient">Patient :</form:label>
        <form:select items="${patient}" itemValue="id" itemLabel="name" path="patient.id"/>
    </div>

    <div>
        <form:label path="doctor">Doctors :</form:label>
        <form:select items="${doctor}" itemValue="id" itemLabel="name" path="doctor.id"/>
    </div>

    <div>
        <form:label path="medicalExamination">MedicalExamination :</form:label>
        <form:select items="${medical}" itemValue="id" itemLabel="type" path="medicalExamination.id"/>
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

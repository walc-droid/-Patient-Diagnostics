<%--
  Created by IntelliJ IDEA.
  User: walcu
  Date: 04.03.2021
  Time: 00:01
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
        <form:label path="surname">Surname: </form:label>
        <form:textarea path="surname"/>
    </div>

    <div>
        <form:label path="dateOfBirth">dateOfBirth: </form:label>
        <form:input path="dateOfBirth"/>
    </div>


    <div>
        <form:label path="pesel">Pesel: </form:label>
        <form:input path="pesel"/>
    </div>

    <div>
        <form:label path="city">City: </form:label>
        <form:input path="city"/>
    </div>

    <div>
        <form:label path="street">Street: </form:label>
        <form:input path="street"/>
    </div>

    <div>
        <form:label path="zipCode">ZipCode: </form:label>
        <form:input path="zipCode"/>
    </div>

    <div>
        <form:label path="houseNumber">HouseNumber: </form:label>
        <form:input path="houseNumber"/>
    </div>

    <div>
        <form:label path="apartmentNumber">ApartmentNumber: </form:label>
        <form:input path="apartmentNumber"/>
    </div>

    <div>
        <form:label path="phoneNumber">Phone Number: </form:label>
        <form:input path="phoneNumber"/>
    </div>

    <div>
        <form:label path="email">Email: </form:label>
        <form:input path="email"/>
    </div>

    <div>
        <form:label path="symptoms">Symptoms: </form:label>
        <form:input path="symptoms"/>
    </div>
    <div>
        <form:label path="comorbidities">Comorbidities: </form:label>
        <form:input path="comorbidities"/>
    </div>

    <div>
        <form:label path="medicines">Medicines: </form:label>
        <form:input path="medicines"/>
    </div>

    <div>
        <form:label path="injuries">Injuries: </form:label>
        <form:input path="injuries"/>
    </div>

    <div>
        <form:label path="operations">Operations: </form:label>
        <form:input path="operations"/>
    </div>

    <div>
        <form:label path="drugs">Drugs: </form:label>
        <form:input path="drugs"/>
    </div>

    <div>
        <form:label path="diagnosis">Diagnosis: </form:label>
        <form:input path="diagnosis"/>
    </div>


    <div>
        <input type="reset"  value="Clear"/>
    </div>
    <div>
        <input type="submit" value="Edit">
    </div>


</form:form>
</body>
</html>
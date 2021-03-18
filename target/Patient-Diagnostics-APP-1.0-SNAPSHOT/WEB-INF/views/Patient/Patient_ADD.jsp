<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Add Patient</title>
    <!--Import Google Icon Font-->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!--Import materialize.css-->
    <link type="text/css" rel="stylesheet" href="<c:url value="/css/materialize.min.css"/>">
    <link type="text/css" rel="stylesheet" href="<c:url value="/css/style.css"/>">
</head>
<body>
<%@include file="../HomePage/Header.jsp" %>
<main>
    <div class="row row-container">
        <jsp:include page="../HomePage/Navbar.jsp"/>
        <div class="col s3 offset-s3">
            <div class="card">
                <div class="card-content">
                    <h5 class="h4-own center-align"><i class="small material-icons blue-text prefix">accessibility</i>Add
                        new patient</h5>
                </div>
            </div>
        </div>
        <div class="col s12 l10">
            <div class="card">
                <form:form method="post" modelAttribute="patient">
                    <div class="row">
                        <div class="card-content">
                            <h5 class="h4-own center-align">Personal details</h5>
                            <hr class="solid">
                            <div class="row row-margin0 ">
                                <div class="input-field col m12 l6 xl4">
                                    <i class="material-icons prefix blue-text">account_circle</i>
                                    <input id="name" type="text" name="name" required>
                                    <label for="name">Name</label>
                                    <form:errors cssClass="red-text" path="name"/>
                                </div>

                                <div class="input-field col m12 l6 xl4">
                                    <i class="material-icons prefix blue-text">account_box</i>
                                    <input id="surname" type="text" name="surname" required>
                                    <label for="surname">Surame</label>
                                    <form:errors cssClass="red-text" path="surname"/>
                                </div>
                            </div>
                            <div class="row row-margin0">
                                <div class="input-field col m12 l6 xl4">
                                    <i class="material-icons prefix blue-text">date_range</i>
                                    <input id="dateOfBirth" type="text" class="datepicker" name="dateOfBirth" required>
                                    <label for="dateOfBirth">Date of birth</label>
                                    <form:errors cssClass="red-text" path="dateOfBirth"/>
                                </div>
                                <div class="input-field col m12 l6 xl4">
                                    <i class="material-icons prefix blue-text">perm_identity</i>
                                    <input id="pesel" type="text" name="pesel" required>
                                    <label for="pesel">Pesel</label>
                                    <form:errors cssClass="red-text" path="pesel"/>
                                </div>
                            </div>
                            <div class="row row-margin0">
                                <div class="input-field col m12 l4 xl4">
                                    <i class="material-icons prefix blue-text">location_city</i>
                                    <input id="city" type="text" name="city" required>
                                    <label for="city">City</label>
                                    <form:errors cssClass="red-text" path="city"/>
                                </div>
                                <div class="input-field col m12 l4 xl4">
                                    <i class="material-icons prefix blue-text">edit_road</i>
                                    <input id="street" type="text" name="street" required>
                                    <label for="street">Street</label>
                                    <form:errors cssClass="red-text" path="street"/>
                                </div>
                                <div class="input-field col m12 l4 xl4">
                                    <i class="material-icons prefix blue-text">code</i>
                                    <input id="zipCode" type="text" name="zipCode" required>
                                    <label for="zipCode">Postcode</label>
                                    <form:errors cssClass="red-text" path="zipCode"/>
                                </div>
                            </div>
                            <div class="row row-margin0">
                                <div class="input-field col m11 l3 xl3">
                                    <i class="material-icons prefix blue-text">home</i>
                                    <input id="houseNumber" type="text" name="houseNumber" required>
                                    <label for="houseNumber">House number</label>
                                    <form:errors cssClass="red-text" path="houseNumber"/>
                                </div>
                                <div class="input-field col m11 l3 xl3">
                                    <i class="material-icons prefix blue-text">filter_1</i>
                                    <input id="apartmentNumber" type="text" name="apartmentNumber" required>
                                    <label for="apartmentNumber">Apartment number</label>
                                    <form:errors cssClass="red-text" path="apartmentNumber"/>
                                </div>
                                <div class="input-field col m11 l3 xl3">
                                    <i class="material-icons prefix blue-text">mail_outline</i>
                                    <input id="email" type="text" name="email" required>
                                    <label for="email">E-mail</label>
                                    <form:errors cssClass="red-text" path="email"/>
                                </div>
                                <div class="input-field col m11 l3 xl3">
                                    <i class="material-icons prefix blue-text">call</i>
                                    <input id="phoneNumber" type="text" name="phoneNumber" required>
                                    <label for="phoneNumber">Phone number</label>
                                    <form:errors cssClass="red-text" path="phoneNumber"/>
                                </div>

                            </div>

                            <h5 class="h4-own center-align">Medical record</h5>
                            <hr class="solid">

                            <div class="row row-margin0">
                                <div class="input-field col s12">
                                    <i class="material-icons prefix blue-text">add</i>
                                    <textarea id="symptoms" class="materialize-textarea" name="symptoms" data-length="120"></textarea>
                                    <label for="symptoms">Symptoms</label>
                                </div>
                                <div class="input-field col s12">
                                    <i class="material-icons prefix blue-text">add</i>
                                    <textarea id="comorbidities" class="materialize-textarea" name="comorbidities" data-length="120"></textarea>
                                    <label for="comorbidities">Comorbidities</label>
                                </div>
                                <div class="input-field col s12">
                                    <i class="material-icons prefix blue-text">add</i>
                                    <textarea id="medicines" class="materialize-textarea"  name="medicines" data-length="120"></textarea>
                                    <label for="medicines">Medicines</label>
                                </div>
                                <div class="input-field col s12">
                                    <i class="material-icons prefix blue-text">add</i>
                                    <textarea id="injuries" class="materialize-textarea" name="injuries" data-length="120"></textarea>
                                    <label for="injuries">Injuries</label>
                                </div>
                                <div class="input-field col s12">
                                    <i class="material-icons prefix blue-text">add</i>
                                    <textarea id="operations" class="materialize-textarea" name="operations" data-length="120"></textarea>
                                    <label for="operations">Operations</label>
                                </div>
                                <div class="input-field col s12">
                                    <i class="material-icons prefix blue-text">add</i>
                                    <textarea id="drugs" class="materialize-textarea" name="drugs" data-length="120"></textarea>
                                    <label for="drugs">Drugs</label>
                                </div>
                                <div class="input-field col s12">
                                    <i class="material-icons prefix blue-text">add</i>
                                    <textarea id="diagnosis" class="materialize-textarea" name="diagnosis" data-length="120"></textarea>
                                    <label for="diagnosis">Diagnosis</label>
                                </div>
                            </div>
                            <button class="btn waves-effect waves-light right blue" type="submit">
                                Save <i class="material-icons right">send</i>
                            </button>
                            <button class="btn waves-effect waves-light red" type="reset">
                                Reset <i class="material-icons right">autorenew</i>
                            </button>
                        </div>
                    </div>
                </form:form>
            </div>
        </div>
</main>


<script type="text/javascript" src="<c:url value="/js/jquery-3.4.1.slim.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/js/materialize.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/js/functions.js"/>"></script>
</body>
</html>

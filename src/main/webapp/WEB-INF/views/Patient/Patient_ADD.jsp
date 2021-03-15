<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Add Patient</title>
    <!--Import Google Icon Font-->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!--Import materialize.css-->
    <link type="text/css" rel="stylesheet" href="<c:url value="/css/materialize.min.css"/>">
    <link type="text/css" rel="stylesheet" href="<c:url value="/css/style1.css"/>">
</head>
<body>
<%@include file="../HomePage/header.jsp" %>
<main>
    <div class="row row-container">
        <jsp:include page="../HomePage/navbar.jsp"/>
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


                <form method="post" action="/patient/add">
                    <div class="row">
                        <div class="card-content">
                            <h5 class="h4-own center-align">Personal details</h5>
                            <hr class="solid">
                            <div class="row row-margin0 ">
                                <div class="input-field col m12 l6 xl4">
                                    <i class="material-icons prefix blue-text">account_circle</i>
                                    <input id="name" type="text" name="name" required>
                                    <label for="name">Name</label>
                                </div>

                                <div class="input-field col m12 l6 xl4">
                                    <i class="material-icons prefix blue-text">account_box</i>
                                    <input id="surname" type="text" name="surname" required>
                                    <label for="surname">Surame</label>
                                </div>
                            </div>
                            <div class="row row-margin0">
                                <div class="input-field col m12 l6 xl4">
                                    <i class="material-icons prefix blue-text">date_range</i>
                                    <input id="dateOfBirth" type="text" class="datepicker" name="dateOfBirth">
                                    <label for="dateOfBirth">Date of birth</label>
                                </div>
                                <div class="input-field col m12 l6 xl4">
                                    <i class="material-icons prefix blue-text">perm_identity</i>
                                    <input id="pesel" type="text" name="pesel">
                                    <label for="pesel">Pesel</label>
                                </div>
                            </div>
                            <div class="row row-margin0">
                                <div class="input-field col m12 l4 xl4">
                                    <i class="material-icons prefix blue-text">location_city</i>
                                    <input id="city" type="text" name="city">
                                    <label for="city">City</label>
                                </div>
                                <div class="input-field col m12 l4 xl4">
                                    <i class="material-icons prefix blue-text">edit_road</i>
                                    <input id="street" type="text" name="street">
                                    <label for="street">Street</label>
                                </div>
                                <div class="input-field col m12 l4 xl4">
                                    <i class="material-icons prefix blue-text">code</i>
                                    <input id="zipCode" type="text" name="zipCode">
                                    <label for="zipCode">Zip code</label>
                                </div>
                            </div>
                            <div class="row row-margin0">
                                <div class="input-field col m11 l3 xl3">
                                    <i class="material-icons prefix blue-text">home</i>
                                    <input id="houseNumber" type="text" name="houseNumber">
                                    <label for="houseNumber">House number</label>
                                </div>
                                <div class="input-field col m11 l3 xl3">
                                    <i class="material-icons prefix blue-text">filter_1</i>
                                    <input id="apartmentNumber" type="text" name="apartmentNumber">
                                    <label for="apartmentNumber">Apartment number</label>
                                </div>
                                <div class="input-field col m11 l3 xl3">
                                    <i class="material-icons prefix blue-text">mail_outline</i>
                                    <input id="email" type="text" name="email">
                                    <label for="email">Email</label>
                                </div>
                                <div class="input-field col m11 l3 xl3">
                                    <i class="material-icons prefix blue-text">call</i>
                                    <input id="phone" type="text" name="phone">
                                    <label for="phone">Phone</label>
                                </div>

                            </div>

                            <h5 class="h4-own center-align">Medical record</h5>
                            <hr class="solid">

                            <div class="row row-margin0">
                                <div class="input-field col s12">
                                    <textarea id="symptoms" class="materialize-textarea" data-length="120"></textarea>
                                    <label for="symptoms">Symptoms</label>
                                </div>

                            </div>


                            <button class="btn waves-effect waves-light right blue" type="submit">
                                Save <i class="material-icons right">send</i>
                            </button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
</main>


<script type="text/javascript" src="<c:url value="/js/jquery-3.4.1.slim.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/js/materialize.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/js/functions.js"/>"></script>
</body>
</html>

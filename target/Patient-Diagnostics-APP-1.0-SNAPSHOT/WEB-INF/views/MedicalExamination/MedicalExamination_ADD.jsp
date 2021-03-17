<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Add Medical Examination</title>
    <!--Import Google Icon Font-->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!--Import materialize.css-->
    <link type="text/css" rel="stylesheet" href="<c:url value="/css/materialize.min.css"/>">
    <link type="text/css" rel="stylesheet" href="<c:url value="/css/style1.css"/>">
</head>
<body>
<%@include file="../HomePage/Header.jsp" %>
<main>
    <div class="row row-container">
        <jsp:include page="../HomePage/Navbar.jsp"/>
        <div class="col s3 offset-s3">
            <div class="card">
                <div class="card-content">
                    <h5 class="h4-own center-align"><i class="small material-icons blue-text prefix">control_point</i>Add
                        medical examination</h5>
                </div>
            </div>
        </div>
        <div class="col s12 l10">
            <div class="card">
                <form:form method="post" modelAttribute="medicalExamination">
                    <div class="row">
                        <div class="card-content">
                            <h5 class="h4-own center-align">Medical examination</h5>
                            <hr class="solid">
                            <div class="row row-margin0">
                                <div class="input-field col s4 offset-s4">
                                    <i class="material-icons prefix blue-text">healing</i>
                                    <input id="type" type="text" name="type">
                                    <label for="type">Type</label>
                                </div>
                            </div>
                            <div class="row row-margin0">
                                <div class="input-field col s4 offset-s4">
                                    <i class="material-icons prefix blue-text">location_on</i>
                                    <input id="location" type="text" name="location">
                                    <label for="location">Location</label>
                                </div>
                            </div>
                            <div class="row ">
                                <div class="input-field col s4 offset-s4">
                                    <i class="material-icons prefix blue-text">attach_money</i>
                                    <input id="cost" type="number" min="0" step="5" name="cost">
                                    <label for="cost">Cost</label>
                                </div>
                            </div>
                            <div class="row row-margin0">
                                <div class="input-field col s4 offset-s4">
                                    <i class="material-icons prefix blue-text">person</i>
                                    <select id="doctor" name="doctorList" multiple>
                                        <c:forEach var="doctor" items="${doctor}">
                                            <option value="${doctor.id}">${doctor.name} ${doctor.surname}</option>
                                        </c:forEach>
                                    </select>
                                    <label for="doctor">Add doctors to treatment</label>
                                </div>
                            </div>
                            <div class="row row-margin0">
                                <div class="input-field col s12">
                                    <i class="material-icons prefix blue-text">add</i>
                                    <textarea id="description" class="materialize-textarea" name="description" data-length="120"></textarea>
                                    <label for="description">Description</label>
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

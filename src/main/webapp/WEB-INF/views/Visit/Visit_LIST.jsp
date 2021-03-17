<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Visit List</title>
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
                    <h5 class="h4-own center-align"> <i class="small material-icons blue-text prefix">list_alt</i>Visits list</h5>
                </div>
            </div>
        </div>
        <div class="col s12 l10">
            <div class="card">
                <div class="card-content">
                    <div class="row">
                        <a href="/visit/add" class="waves-effect waves-light btn red white-text"><i
                                class="material-icons left">add</i>Add visit</a>
                    </div>
                    <div class="row">
                        <div class="table-overflow">
                            <table class="highlight centered responsive-table">
                                <thead>
                                <tr>
                                    <th>id</th>
                                    <th>Date of visit</th>
                                    <th>Patient</th>
                                    <th>Doctor</th>
                                    <th>Medical examination</th>
                                    <th>Description</th>
                                    <th>Location</th>
                                    <th>Charge</th>
                                    <th>Edit</th>
                                    <th>Delete</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${visit}" var="vs">
                                    <tr>
                                        <td><c:out value="${vs.id}"/></td>
                                        <td><c:out value="${vs.visitDate}"/></td>
                                        <b><td><c:out value="${vs.patient.name}"/> <c:out value="${vs.patient.surname}"/></td></b>
                                        <td><c:out value="${vs.doctor.name}"/> <c:out value="${vs.doctor.surname}"/></td>
                                        <td><c:out value="${vs.medicalExamination.type}"/></td>
                                        <td><c:out value="${vs.visitDescription}"/></td>
                                        <td><c:out value="${vs.location}"/></td>
                                        <td><c:out value="${vs.charge}"/></td>
                                        <td><a href="/visit/edit/${vs.id}" class="tooltipped"
                                               data-position="bottom"
                                               data-tooltip="edit"><i class="material-icons">edit</i></a></td>
                                        <td><a href="/visit/delete/${vs.id}" class="tooltipped"
                                               data-position="bottom"
                                               data-tooltip="delete"><i class="material-icons">delete</i></a></td>
                                    </tr>
                                </c:forEach>

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>


<script type="text/javascript" src="<c:url value="/js/jquery-3.4.1.slim.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/js/materialize.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/js/functions.js"/>"></script>
</body>
</html>
